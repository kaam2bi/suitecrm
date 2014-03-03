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