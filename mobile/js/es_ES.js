
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
    RES_LEADS_LABEL = "Clientes potenciales",
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
    SugarSessionId = "",
    RowsPerPageInListViews = 20,
    CurrentAccountId = "",
    CurrentContactId = "",
    CurrentOpportunityId = "",
    CurrentLeadId = "",
    CurrentCallId = "",
    CurrentMeetingId = "",
    CurrentTaskId = "",
    AccountsListNextOffset = 0,
    AccountsListPrevOffset = 0,
    AccountsListCurrentOffset = 0,
    ContactsListNextOffset = 0,
    ContactsListPrevOffset = 0,
    ContactsListCurrentOffset = 0,
    OpportunitiesListNextOffset = 0,
    OpportunitiesListPrevOffset = 0,
    OpportunitiesListCurrentOffset = 0,
    LeadsListNextOffset = 0,
    LeadsListPrevOffset = 0,
    LeadsListCurrentOffset = 0,
    CallsListNextOffset = 0,
    CallsListPrevOffset = 0,
    CallsListCurrentOffset = 0,
    MeetingsListNextOffset = 0,
    MeetingsListPrevOffset = 0,
    MeetingsListCurrentOffset = 0,
    TasksListNextOffset = 0,
    TasksListPrevOffset = 0,
    TasksListCurrentOffset = 0,
    CurrentNoteId = "";

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
status2["Not Started"] = "No iniciada";

// Calls (Llamadas)
status2["Inbound"] = "Entrante";
status2["Outbound"] = "Saliente";
status2["Planned"] = "Planificada";
status2["Held"] = "Realizada";
status2["Not Held"] = "No Realizada";

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
