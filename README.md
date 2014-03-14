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

RECOMENDACIONES DE DESPLIEGUE
=============================

http://dl.sugarforge.org/sagilityopensal/01AdvancedOpenSales5/Documentation/AdvancedOpenSalesUserGuide.pdf

Php.ini Settings
We recommend the following values within the 'php.ini' file :
• upload_max_filesize = 60M
• max_execution_time = 200
• post_max_size = 120M

Permissions
If your file permissions are not set correctly it can prevent Advanced OpenSales from 
uploading and installing correctly. 
For Linux users we recommend the following:
1. Set the whole SugarCRM instance to 755 recursively.
2. Then within your SugarCRM instance set the folders cache, custom, data, modules,
& themes to 775 recursively. (e.g. 'chmod -R 775 cache custom data modules 
themes')
3. If you are using SugarCRM 6.4 or higher the 'upload' folder is no longer within the 
cache folder. Therefore you also need to set that to 775 recursively (e.g. 'chmod -R 
775 upload')


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

IMPUESTOS EN REGOLUNA (OPCIONAL) Y SUITE (OBLIGATORIO)
======================================================

El módulo de facturas de RegoLuna, al instalarlo, ha de hacerse desde el Cargador de Paquetes.
En el editor de lista desplegable, lista "iva_type_dom", incluir los IVA's siguientes:
- Quitar 0.16, 0.07.
- Dejar 0.04 (+4% IVA Superreducido)
- Poner 0.10 (+10% IVA Reducido)
- Poner 0.21 (+21% IVA General)
- Poner 0.00 (Exento)

Y en la lista "vat_list" (general de Sugar), incluir los siguientes valores:
- Quitar todos menos 0.0 (Cambiarlo a Exento)
- Poner todos los anteriores (4, 10, 21)

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

