suitecrm
========

CRM personalizable basado en Sugar/SuiteCRM

PUNTO DE PARTIDA
================

El CRM se basa en SuiteCRM (que a su vez se basa en SugarCRM) y se le instaló el módulo de facturas de RegoLuna. El resto no está personalizado, salvo el logo de inicio.
Se vuelca tal cual, con datos de ejemplo, en el repositorio de GitHub.

RECOMENDACIONES SEGÚN DOCUMENTACIÓN DE SUGARCRM
===============================================

- Nunca redesplegar un paquete ya desplegado, se perderán las mejoras y los cambios realizados en:
/modules/
/custom/modules/
/custom/Extension/modules/

Una vez que el módulo está desplegado, usar el Studio para cambiar cosas del mismo.

- Meter cada módulo en un paquete independiente, al desinstalar se desinstala por paquetes.
- Crear relaciones en Studio cuando el módulo se haya desplegado (y no antes), desde Studio se podrán modificar luego.
- Cuando se despliegue el paquete, borrarlo del Module Builder (creador de módulos) para no volver a desplegarlo accidentalmente, excepto en entorno de desarrollo, que no es necesario si se va a seguir probando el módulo y modificándolo.

MANUAL DE BUILDER
=================

http://support.sugarcrm.com/02_Documentation/01_Sugar_Editions/04_Sugar_Professional/Sugar_Professional_7.1/Administration_Guide/07_Developer_Tools/11_Module_Builder

PARA LA FASE DE TESTEO
======================

Crear contactos y cuentas para testear, el único usuario de la plataforma es Admin (admin - admin).

SOLUCIÓN AL PROBLEMA DE IMÁGENES QUE NO SE VEN
==============================================

En el entorno de producción no debería fallar, pero si en Firefox (u otro navegador) hay imágenes que no se cargan, se puede hacer una búsqueda masiva y cambiar:
index.php?entryPoint=getImage&imageName=

por:
themes/Suite7/images/

En la raíz de la ruta, en vez de cargarlas desde la caché las referenciará directamente.

MÓDULO DE CLIENTE MÓVIL PARA SUITECRM-SUGARCRM
==============================================

Cómo instalar en cualquier SugarCRM o SuiteCRM:

- copiar carpeta "mobile" (renombrar la original de SuiteCRM antes de copiar).
- copiar las personalizaciones deseadas (si sólo se quiere dar acceso desde el mainmenu al módulo mobile, cambiar sólo en SuiteCRM)
- Copiar custom\modules\Users\login.tpl desde Github a la instalación original.

OBSERVACIONES SOBRE LA INCLUSIÓN DE ESTADOS PERSONALIZADOS EN LISTAS DE ELEMENTOS EXISTENTES
============================================================================================

En el cliente móvil se traducen todos los strings de traducción desde el inglés al español de todos los estados habituales de SugarCRM (para llamadas, facturas, reuniones, tareas, etc.).
Si se incluye en Sugar un nuevo estado, en el cliente móvil no aparecerá a no ser que se añada a la variable status2["valorInglés"] = "valorEspañol".