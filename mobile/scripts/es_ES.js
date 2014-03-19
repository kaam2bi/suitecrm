// *** CONSTANTES INCLUIDAS EN LA APLICACIÓN ***
var RES_LOGIN_MESSAGE = "Por favor, introduzca su Usuario y Contraseña para entrar.",
    RES_LOGIN_TITLE = "Entrar",
    RES_LOGOUT_LABEL = "Salir",
    RES_HOME_LABEL = "Inicio",
    RES_BACK_LABEL = "Volver",
    RES_USERNAME_LABEL = "Usuario",
    RES_PASSWORD_LABEL = "Contraseña",
    RES_ACCOUNTS_LABEL = "Empresas",
    RES_ACCOUNT_LABEL = "Empresa",
    RES_CONTACTS_LABEL = "Contactos",
    RES_CONTACT_LABEL = "Contacto",
    RES_OPPORTUNITIES_LABEL = "Oportunidades",
    RES_OPPORTUNITY_LABEL = "Oportunidad",
    RES_LEADS_LABEL = "Potenciales",
    RES_LEAD_LABEL = "Cliente potencial",
    RES_CALLS_LABEL = "Llamadas",
    RES_CALL_LABEL = "Llamada",
    RES_MEETINGS_LABEL = "Reuniones",
    RES_MEETING_LABEL = "Reunión",
    RES_TASKS_LABEL = "Tareas",
    RES_TASK_LABEL = "Tarea",
    RES_NOTES_LABEL = "Notas",
    RES_NOTE_LABEL = "Nota",
    RES_CAMPAIGN_LABEL = "Campaña",
    RES_CAMPAIGNS_LABEL = "Campañas",
    RES_USER_LABEL = "Usuario",
    RES_USERS_LABEL = "Usuarios",
    RES_OVERVIEW_LABEL = "Información general",
    RES_MORE_INFORMATION_LABEL = "Más información",
    RES_OTHER_LABEL = "Otros",
    RES_ACCOUNT_BILLING_ADDRESS_LABEL = "Dirección de pago",
    RES_ACCOUNT_SHIPPING_ADDRESS_LABEL = "Dirección de envío",
    RES_ACCOUNT_INDUSTRY_LABEL = "Industria",
    RES_ACCOUNT_REVENUE_LABEL = "Ingresos anuales",
    RES_ACCOUNT_EMPLOYEES_LABEL = "Empleados",
    RES_ACCOUNT_SIC_LABEL = "Código CNAE/SIC",
    RES_ACCOUNT_TICKER_LABEL = "Símbolo Ticket",
    RES_ACCOUNT_MEMBER_LABEL = "Miembro de",
    RES_ACCOUNT_OWNERSHIP_LABEL = "Propietario",
    RES_ACCOUNT_CAMPAIGN_LABEL = "Campaña",
    RES_ACCOUNT_RATING_LABEL = "Rating",
    RES_CONTACT_REPORTS_TO_LABEL = "Asignado a",
    RES_OPPORTUNITY_NAME_LABEL = "Nombre Oportunidad",
    RES_OPPORTUNITY_AMOUNT_WITH_CURRENCY_LABEL = "Monto de la Oportunidad ({0} {1})",
    RES_OPPORTUNITY_AMOUNT_LABEL = "Monto",
    RES_OPPORTUNITY_EXPECTED_CLOSE_DATE_LABEL = "Fecha de cierre",
    RES_OPPORTUNITY_SALES_STAGE_LABEL = "Etapa de ventas",
    RES_OPPORTUNITY_PROBABILITY_LABEL = "Probabilidad",
    RES_OPPORTUNITY_NEXT_STEP_LABEL = "Próximo paso",
    RES_LEAD_REFERRED_BY = "Asignado a",
    RES_TASK_DUE_DATE_LABEL = "Último cambio",
    RES_TASK_PRIORITY_LABEL = "Prioridad",
    RES_OFFICE_PHONE_LABEL = "Teléfono Trabajo",
    RES_FAX_LABEL = "Fax",
    RES_DESCRIPTION_LABEL = "Descripción",
    RES_EMAIL_ADDRESS_LABEL = "Email",
    RES_LEAD_SOURCE_LABEL = "Referido por",
    RES_RELATED_ITEM_NAME_LABEL = "Nombre",
    RES_TYPE_LABEL = "Tipo",
    RES_NAME_LABEL = "Nombre",
    RES_TITLE_LABEL = "Título",
    RES_MOBILE_PHONE_LABEL = "Móvil",
    RES_DEPARTMENT_LABEL = "Departamento",
    RES_PRIMARY_ADDRESS_LABEL = "Dirección principal",
    RES_OTHER_ADDRESS_LABEL = "Otra dirección",
    RES_WEBSITE_LABEL = "Sitio Web",
    RES_SUBJECT = "Asunto",
    RES_STATUS_LABEL = "Estado",
    RES_START_DATE_TIME_LABEL = "Fecha y hora de inicio",
    RES_START_DATE_LABEL = "Fecha de inicio",
    RES_DURATION_LABEL = "Duración",
    RES_LOCATION_LABEL = "Lugar",
    RES_REMINDER_LABEL = "Recordatorio",
    RES_DETAILS_LABEL = "Detalles",
    RES_ASSIGNED_TO_LABEL = "Asignado a",
    RES_DATE_MODIFIED_LABEL = "Fecha de modificación",
    RES_DATE_CREATED_LABEL = "Fecha de creación",
    RES_DO_NOT_CALL = "*NOTA: Contacto marcado como No llamar.",
    RES_LOG_CALL_QUESTION = "¿Desea registrar la llamada?",
    RES_NOTES_LABEL = "Notas",
    RES_NOTES_TITLE = "Notas",
    RES_HOME_LABEL = "Versión Web",
    RES_NEW = "Crear",
    RES_EDIT = "Editar",
	RES_LOADER_MSG = "Cargando, espere",
	RES_NEW_ITEM_CREATED = "Nuevo elemento creado",
    RES_FOOTER = 'Cliente móvil CRM<br>Para disponer de todas las funciones, acceda a la <a href="../index.php" target="_blank" style="color:white">Versión Web</a><br><a href="http://www.2bi.es" target="_blank" style="color:white">©2bi smart i.t.</a>',
    RES_SUGARCRM_LANGUAGE = "es_es",
    RES_LOGIN_ERROR = "Error de acceso",
    RES_CALL_LOGGED_FROM_CLIENT = "Llamada registrada desde el cliente móvil",
    RES_ACCOUNT_TYPE = "Tipo de cuenta",
    RES_BY = " por ",
    RES_NOTHING_TO_SHOW = "Sin registros que mostrar",
    RES_WORK = "Trabajo",
    RES_DESCRIPTION_STATUS = "Descripción de estado",
    RES_DESCRIPTION_SOURCE = "Descripción de origen",
    RES_LINKED_WITH = "Enlazado con",
    RES_DATE = "Fecha";


// *** LOS ARRAYS AUXILIARES A TRADUCIR VAN AQUÍ ***
// Array de traducción rápida de status
var status = [];

status["Qualification"] = "Calificación";
status["Closed Lost"] = "Perdida";
status["Proposal/Price Quote"] = "Propuesta/Presupuesto";
status["Perception Analysis"] = "Análisis de Percepción";
status["Needs Analysis"] = "Necesita Análisis";
status["Prospecting"] = "Prospecto";
status["Value Proposition"] = "Propuesta de Valor";
status["Negotiation/Review"] = "Negociación/Revisión";
status["Id. Decision Makers"] = "Id. Tomadores de Decisiones";
status["Closed Won"] = "Ganada";

// Array para el resto de secciones
var status2 = [];

// Leads (Clientes potenciales)
status2["New"] = "Nuevo";
status2["Dead"] = "Muerto";
status2["Recycled"] = "Reciclado";
status2["Converted"] = "Convertido";
status2["In Process"] = "En proceso";
status2["Assigned"] = "Asignado";

// Tasks (Tareas)
status2["Not Started"] = "No Iniciada";
status2["In Progress"] = "En Progreso";
status2["Completed"] = "Completada";
status2["Pending Input"] = "Pendiente de Información";
status2["Deferred"] = "Retrasada";
status2["High"] = "Alta";
status2["Medium"] = "Media";
status2["Low"] = "Baja";

// Calls (Llamadas)
status2["Inbound"] = "Entrante";
status2["Outbound"] = "Saliente";
status2["Planned"] = "Planificada";
status2["Held"] = "Realizada";
status2["Not Held"] = "No Realizada";

// Meetings (Reuniones)
status2["accept"] = "Aceptado";
status2["decline"] = "Rechazado";
status2["tentative"] = "Tentativa";
status2["none"] = "Ninguno";

// Array de traducción rápida de orígenes de clientes
var sources = [];

sources["Cold Call"] = "Llamada en frío";
sources["Existing Customer"] = "Cliente existente";
sources["Self Generated"] = "Autogenerada";
sources["Employee"] = "Empleado";
sources["Partner"] = "Socio";
sources["Public Relations"] = "Relaciones públicas";
sources["Direct Mail"] = "Correo";
sources["Conference"] = "Conferencia";
sources["Trade Show"] = "Feria de muestras";
sources["Web Site"] = "Página web";
sources["Word of mouth"] = "Por el boca a boca";
sources["Email"] = "Correo electrónico";
sources["Campaign"] = "Campaña";
sources["Other"] = "Otro";

var clienttypes = [];

clienttypes["Analyst"] = "Analista";
clienttypes["Competitor"] = "Competidor";
clienttypes["Customer"] = "Cliente";
clienttypes["Integrator"] = "Integrador";
clienttypes["Investor"] = "Inversor";
clienttypes["Partner"] = "Socio";
clienttypes["Press"] = "Prensa";
clienttypes["Prospect"] = "Prospecto";
clienttypes["Reseller"] = "Revendedor";
clienttypes["Other"] = "Otro";

var industry = [];

industry["Apparel"] = "Textil";
industry["Banking"] = "Banca";
industry["Biotechnology"] = "Biotecnología";
industry["Chemicals"] = "Química";
industry["Communications"] = "Comunicaciones";
industry["Construction"] = "Construcción";
industry["Consulting"] = "Consultoría";
industry["Education"] = "Educación";
industry["Electronics"] = "Electrónica";
industry["Energy"] = "Energía";
industry["Engineering"] = "Ingeniería";
industry["Entertainment"] = "Entretenimiento";
industry["Environmental"] = "Medio ambiente";
industry["Finance"] = "Finanzas";
industry["Government"] = "Gobierno";
industry["Healthcare"] = "Sanidad";
industry["Hospitality"] = "Caridad";
industry["Insurance"] = "Seguros";
industry["Machinery"] = "Maquinaria";
industry["Manufacturing"] = "Fabricación";
industry["Media"] = "Medios de comunicación";
industry["Not For Profit"] = "Sin ánimo de lucro";
industry["Recreation"] = "Ocio";
industry["Retail"] = "Minoristas";
industry["Shipping"] = "Envíos";
industry["Technology"] = "Tecnología";
industry["Telecommunications"] = "Telecomunicaciones";
industry["Transportation"] = "Transporte";
industry["Utilities"] = "Servicios públicos";
industry["Other"] = "Otro";
