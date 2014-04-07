

// *************************************************************
// ** CÓDIGO DE LA APLICACIÓN (REQUIERE ES_ES.JS)			  **
// *************************************************************

require(["es_ES"], function(util) 
{
	// *************************************************************
	// ** VARIABLES GLOBALES									  **
	// *************************************************************

    var SugarSessionId = "",
    SugarCurrentUserId = -1,
    RowsPerPageInListViews = 100000, // Limit here the number of rows per views
    CurrentAccountId = "",
    CurrentContactId = "",
    CurrentOpportunityId = "",
    CurrentLeadId = "",
    CurrentCallId = "",
    CurrentMeetingId = "",
    CurrentTaskId = "",
    CurrentNoteId = "",
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
    NotesListNextOffset = 0,
    NotesListPrevOffset = 0,
    NotesListCurrentOffset = 0,
    //Variable usadas para comprobar si ha habido una modificacion en las tablas tanto por modificacion como por insercion
    toUpdateContacts = false,
    toUpdateAccounts = false,
    toUpdateLeads = false,
    toUpdateTasks = false,
    toUpdateOpportunities=false,
    toUpdateMeetings = false,
    //Listas de contactos para despues cargarlos en un input,ul de las busquedas    
    ContactsList = "",
    AccountsList = "";

    var load = {
    	firstLoad: function(){
    		$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});
    		/*$.when(SugarCrmGetContactsListFromServer(ContactsListCurrentOffset))
    		.then(
    			function(){ 
    			SugarCrmGetAccountsListFromServer(AccountsListCurrentOffset);
    			}
    			);*/
    		SugarCrmGetContacts(ContactsListCurrentOffset);
    		SugarCrmGetAccounts(AccountsListCurrentOffset);
    		

    		$.mobile.loading("hide");
    	}
    }

	// Detalles del loader
	var textVisible = true;
	var textOnly = true;

	// Mensaje en pantalla
	var onScreen = false;

	// Offset horario (para hora local) en horas (para GMT+1=-60, para GMT+2=-120)
	var timeOffset = new Date().getTimezoneOffset();

	// Para configurar cualquier ruta de acceso, cambiar la URL por el raíz de SugarCRM
	var sugarURL = "..";

	$( document ).ready(function() {
		
		// Old Onclick events updated
		$("a#loginMobileBtn").click(function(event){  LoginUser(); });
		$("a#loginWebBtn").click(function(event){  LoginUserDesktop(); });
		$("a#LogOutButton").click(function(event){  LogOutUser(); });

		$(".mensaje_footer").html(RES_FOOTER);

		// TODO: Desactivar botones de crear si no está definida la variable "editionEnabled".
	});
	

	$("#HomePage").live("pagecreate", function () {
		$("#LogOutButton .ui-btn-text").text(RES_LOGOUT_LABEL);
		$("#AccountsListPageLinkLabel").text(RES_ACCOUNTS_LABEL);
		$("#ContactsListPageLinkLabel").text(RES_CONTACTS_LABEL);
		$("#OpportunitiesListPageLinkLabel").text(RES_OPPORTUNITIES_LABEL);
		$("#LeadsListPageLinkLabel").text(RES_LEADS_LABEL);
		$("#CallsListPageLinkLabel").text(RES_CALLS_LABEL);
		$("#MeetingsListPageLinkLabel").text(RES_MEETINGS_LABEL);
		$("#TasksListPageLinkLabel").text(RES_TASKS_LABEL);
		$("#NotesListPageLinkLabel").text(RES_NOTES_LABEL);
		$("#HomeLabel").text(RES_HOME_LABEL);

		$("#AccountsListPageTitle").text(RES_ACCOUNTS_LABEL);
		$("#ContactsListPageTitle").text(RES_CONTACTS_LABEL);
		$("#OpportunitiesListPageTitle").text(RES_OPPORTUNITIES_LABEL);
		$("#LeadsListPageTitle").text(RES_LEADS_LABEL);
		$("#CallsListPageTitle").text(RES_CALLS_LABEL);
		$("#MeetingsListPageTitle").text(RES_MEETINGS_LABEL);
		$("#TasksListPageTitle").text(RES_TASKS_LABEL);
		$("#ViewContactDetailsPageTitle").text(RES_CONTACT_LABEL + " " + RES_DETAILS_LABEL);
		$("#ViewAccountDetailsPageTitle").text(RES_ACCOUNT_LABEL + " " + RES_DETAILS_LABEL);
		$("#NotesListPageTitle").text(RES_NOTES_TITLE);
	});

	$("#AccountsListPage").live("pageshow", function () {
		SugarCrmGetAccountsListFromServer(AccountsListCurrentOffset);
	});

	$("#ContactsListPage").live("pageshow", function () {
		SugarCrmGetContactsListFromServer(ContactsListCurrentOffset);
	});
	$("#OpportunitiesListPage").live("pageshow", function () {
		SugarCrmGetOpportunitiesListFromServer(OpportunitiesListCurrentOffset);
	});
	$("#LeadsListPage").live("pageshow", function () {
		SugarCrmGetLeadsListFromServer(LeadsListCurrentOffset);
	});
	$("#CallsListPage").live("pageshow", function () {
		SugarCrmGetCallsListFromServer(CallsListCurrentOffset);
	});
	$("#MeetingsListPage").live("pageshow", function () {
		SugarCrmGetMeetingsListFromServer(MeetingsListCurrentOffset);
	});
	$("#TasksListPage").live("pageshow", function () {
		SugarCrmGetTasksListFromServer(TasksListCurrentOffset);
	});
	$("#NotesListPage").live("pageshow", function () {
		SugarCrmGetNotesListFromServer(NotesListCurrentOffset);
	});


	$("#HomePage").live("pageshow", function () {
		if (SugarSessionId === "") $.mobile.changePage("#LoginPage");
	});

	var toast = function(msg)
	{
		if (!onScreen)
		{
			onScreen = true;
			$("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'><h3>"+msg+"</h3></div>")
			.css({ display: "block", 
				position: "fixed",
				padding: "7px",
				"text-align": "center",
				backgroundColor: "#f0f0f0",
				width: "80%",
				top: "50%",
				left: "10%" })
			.appendTo( $.mobile.pageContainer ).delay( 1500 )
			.fadeOut( 400, function(){
				$(this).remove();
				onScreen = false;
			});
		}
	}

	function LoginUser(a) {
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});

		var c = $("#SettingsPageSugarCrmUsername").val(),
			b = $("#SettingsPageSugarCrmPassword").val();
		if (a == undefined) b = $.md5(b);
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "login",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '[{"password":"' + b + '","user_name":"' + c + '"},"SugarCrm",{"name":"language","value":"es_es"}]'
		}, function (d) { 
			if (d !== "") {
				
				d = $.parseJSON(JSON.stringify(d, undefined, 2));

				if (d.name !== undefined && d.name === "Invalid Login") a == undefined ? LoginUser(true) : toast(RES_LOGIN_ERROR);
				else {
					SugarSessionId = d.id;
					if (d.name_value_list.user_id.value != null)
					{
						SugarCurrentUserId = d.name_value_list.user_id.value;
						$("#SettingsPageSugarCrmUsername").val("");
						$("#SettingsPageSugarCrmPassword").val("");


						load.firstLoad();

						$.mobile.changePage("#HomePage");
					}
					else toast("Error inesperado");
				}
			} else toast("Error inesperado");
			$.mobile.loading( "hide" );
		})
	}

	function LoginUserDesktop(a) {
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});

		var c = $("#SettingsPageSugarCrmUsername").val(),
			b = $("#SettingsPageSugarCrmPassword").val();
		if (a == undefined) b = $.md5(b);
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "login",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '[{"password":"' + b + '","user_name":"' + c + '"},"SugarCrm",{"name":"language","value":"es_es"}]'
		}, function (d) { 
			if (d !== "") {
				
				d = $.parseJSON(JSON.stringify(d, undefined, 2));

				if (d.name !== undefined && d.name === "Invalid Login") a == undefined ? LoginUser(true) : toast(RES_LOGIN_ERROR); 
				else {
					SugarSessionId = d.id;
					$("#SettingsPageSugarCrmUsername").val("");
					$("#SettingsPageSugarCrmPassword").val("");
					var url = "../index.php";    
					$(location).attr('href',url);
				}
			} else toast("Error inesperado"); 
			$.mobile.loading( "hide" );
		})
	}

	// Hace logout del usuario actual al cambiar el foco o de ventana (comentar para permitir registro de elementos al llamar)
	/*
	window.onbeforeunload = function () {
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "logout",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '[{"session":"' + SugarSessionId + '"}]'
		})
	};
	*/

	function LogOutUser() {
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "logout",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '[{"session":"' + SugarSessionId + '"}]'
		}, function () {
			$.mobile.changePage("#LoginPage", {
				reverse: "true"
			})
		})
	}

	/************************************************************************************************
	***											QUERIES 										  ***
	*************************************************************************************************/

	/**
	 * To obtain Contacts from server
	 * @param a ContactsListCurrentOffset
	 */
	function SugarCrmGetContacts(a){
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry_list",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","query":"","order_by":"first_name","offset":' + a + ',"select_fields":["first_name","last_name","title"],"link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews +
				',"deleted":0}'
		}, function (c) {
			if (c != undefined) {
				c = $.parseJSON(JSON.stringify(c, undefined, 2));
				if (c != undefined && c.entry_list != undefined) {
					ContactsList = c;
				}
			}
		})
	}

	/**
	 * To obtain Accounts from server
	 * @param a AccountsListCurrentOffset
	 */
	function SugarCrmGetAccounts(a){
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry_list",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","query":"","order_by":"name","offset":' + a + ',"select_fields":["name","billing_address_city","billing_address_state"],"link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews +
				',"deleted":0}'
		}, function (c) {
			if (c !== undefined) {
				c = $.parseJSON(JSON.stringify(c, undefined, 2));
				if (c.name !== undefined && c.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (c !== undefined && c.entry_list !== undefined) {
					AccountsList = c;
				}
			}
		})
	}

	function SugarCrmGetAccountsListFromServer(a) {
		if ($("#AllAccountsListDiv li").length === 0 || AccountsListCurrentOffset !== a || toUpdateAccounts === true) {
			
			$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
			});
			AccountsListCurrentOffset = a;
			if (AccountsList == "" || AccountsList.entry_list.length == 0 || toUpdateAccounts === true)
			{
				
				$.get(sugarURL+"/service/v2/rest.php", {
					method: "get_entry_list",
					input_type: "JSON",
					response_type: "JSON",
					rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","query":"","order_by":"name","offset":' + a + ',"select_fields":["name","billing_address_city","billing_address_state"],"link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews +
						',"deleted":0}'
				}, function (c) {
	
					if (c !== undefined) {
						c = $.parseJSON(JSON.stringify(c, undefined, 2));
						if (c.name !== undefined && c.name === "Invalid Session ID") {
							SugarSessionId = "";
							$.mobile.changePage("#LoginPage")
						}
						if (c !== undefined && c.entry_list !== undefined) {
							AccountsList = c;
							DOMAccountsList(c, a);
						}
						toUpdateAccounts = false;
					}
					//$.mobile.loading( "hide" );
				})
			}
			else{
				DOMAccountsList(AccountsList, a);
			}
			$.mobile.loading( "hide" );

		}
	}

	function SugarCrmGetAccountDetails() {
		$("#ViewAccountDetailsPageDetailsList li").remove();
		$("#AccountNameH1").html("");
		$("#AccountDescriptionP").text("");
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","id":"' + CurrentAccountId + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (a) {
			if (a !== undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId =
						"";
					$.mobile.changePage("#LoginPage")
				}
				if (a !== undefined && a.entry_list !== undefined)
					if (a.entry_list[0] !== undefined) {
						a = a.entry_list[0];
						CurrentAccount = a;
						$("#AccountNameH1").html(a.name_value_list.name.value);
						$("#AccountDescriptionP").text(a.name_value_list.description.value);
						$("#ViewAccountDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_ACCOUNT_LABEL+'</li>');
						var c = $("<li/>"),
							b = a.name_value_list.phone_office.value.replace("(", "");
						b = b.replace(")", "");
						b = b.replace(" ", "");
						b = b.replace("-", "");
						b = b.replace("+1",
							"");
						var d = "<h4>" + a.name_value_list.phone_office.value + "</h4>";
						b = $("<a/>", {
							href: "tel:" + b,
							target: "_blank", //Si no se pone el blank, pierde el foco.
							rel: "external",
							style: "text-decoration:none;color:#444;",
							click: function () {
								SugarCrmSetNewCall("Accounts", CurrentAccountId);
								return true
							}
						});
						b.append("<p><br />"+RES_WORK+"</p>");
						b.append(d);
						c.append(b);
						a.name_value_list.phone_office.value !== "" && $("#ViewAccountDetailsPageDetailsList").append(c);
						if (a.name_value_list.website.value !== "") {
							b = "";
							b = a.name_value_list.website.value.substring(0, 4) !== "http" ?
								"http://" + a.name_value_list.website.value : a.name_value_list.website.value;
							c = $("<li/>");
							d = "<h4>" + a.name_value_list.website.value + "</h4>";
							b = $("<a/>", {
								href: b,
								rel: "external",
								target: "_new",
								style: "text-decoration:none;color:#444;"
							});
							b.append("<p><br />"+RES_WEBSITE_LABEL+"</p>");
							b.append(d);
							c.append(b);
							$("#ViewAccountDetailsPageDetailsList").append(c)
						}
						c = $("<li/>");
						c.append("<h4>" + a.name_value_list.phone_fax.value + "</h4>");
						c.append("<p>"+RES_FAX_LABEL+"</p>");
						a.name_value_list.phone_fax.value !== "" && $("#ViewAccountDetailsPageDetailsList").append(c);
						c = $("<li/>");
						b = a.name_value_list.billing_address_street.value;
						var f = a.name_value_list.billing_address_city.value,
							e = a.name_value_list.billing_address_state.value,
							m = a.name_value_list.billing_address_postalcode.value,
							g = a.name_value_list.billing_address_country.value,
							i = "<h4>" + b + "<br />" + f + ", " + e + " " + m + "<br />" + g + "</h4>";
						d = $("<a/>", {
							href: "http://maps.google.com/?q=" + b + "%20" + f + "%20" + e + "%20" + m + "&t=m&z=13",
							rel: "external",
							target: "_new",
							style: "text-decoration:none;color:#444;"
						});
						d.append("<p><br />"+RES_ACCOUNT_BILLING_ADDRESS_LABEL+"</p>");
						d.append(i);
						c.append(d);
						if (b !== "" || f !== "" || e !== "" || m !== "" || g !== "") $("#ViewAccountDetailsPageDetailsList").append(c);
						b = $("<li/>");
						f = a.name_value_list.shipping_address_street.value;
						e = a.name_value_list.shipping_address_city.value;
						m = a.name_value_list.shipping_address_state.value;
						g = a.name_value_list.shipping_address_postalcode.value;
						i = a.name_value_list.shipping_address_country.value;
						var o = "<h4>" + f + "<br />" + e + ", " + m + " " + g + "<br />" + i + "</h4>",
							n = $("<a/>", {
								href: "http://maps.google.com/?q=" + f + "%20" + e + "%20" +
									m + "%20" + g + "&t=m&z=13",
								rel: "external",
								target: "_new",
								style: "text-decoration:none;color:#444;"
							});
						n.append("<p><br />"+RES_ACCOUNT_SHIPPING_ADDRESS_LABEL+"</p>");
						n.append(o);
						b.append(n);
						c.append(d);
						if (f !== "" || e !== "" || m !== "" || g !== "" || i !== "") $("#ViewAccountDetailsPageDetailsList").append(b);
						c = $("<li/>");
						d = "<h4>" + a.name_value_list.email1.value + "</h4>";
						b = $("<a/>", {
							href: "mailto:" + a.name_value_list.email1.value,
							rel: "external",
							style: "text-decoration:none;color:#444;"
						});
						b.append("<p><br />"+RES_EMAIL_ADDRESS_LABEL+"</p>");
						b.append(d);
						c.append(b);
						a.name_value_list.email1.value !==
							"" && $("#ViewAccountDetailsPageDetailsList").append(c);
						$("#ViewAccountDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_MORE_INFORMATION_LABEL+'</li>');
						a.name_value_list.account_type !== undefined && a.name_value_list.account_type.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_TYPE+"</p><h4>" + clienttypes[a.name_value_list.account_type.value] + "</h4></li>");
						a.name_value_list.industry !== undefined && a.name_value_list.industry.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_INDUSTRY_LABEL+"</p><h4>" +
							industry[a.name_value_list.industry.value] + "</h4></li>");
						a.name_value_list.annual_revenue !== undefined && a.name_value_list.annual_revenue.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_REVENUE_LABEL+"</p><h4>" + a.name_value_list.annual_revenue.value + "</h4></li>");
						a.name_value_list.employees !== undefined && a.name_value_list.employees.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_EMPLOYEES_LABEL+"</p><h4>" + a.name_value_list.employees.value + "</h4></li>");
						a.name_value_list.sic_code !==
							undefined && a.name_value_list.sic_code.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><P><br />"+RES_ACCOUNT_SIC_LABEL+"</p><h4>" + a.name_value_list.sic_code.value + "</h4></li>");
						a.name_value_list.ticker_symbol !== undefined && a.name_value_list.ticker_symbol.value != "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_TICKER_LABEL+"+</p><h4>" + a.name_value_list.ticker_symbol.value + "</h4></li>");
						a.name_value_list.parent_name !== undefined && a.name_value_list.parent_name.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_MEMBER_LABEL+"</p><h4>" +
							a.name_value_list.parent_name.value + "</h4></li>");
						a.name_value_list.ownership !== undefined && a.name_value_list.ownership.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_OWNERSHIP_LABEL+"</p><h4>" + a.name_value_list.ownership.value + "</h4></li>");
						a.name_value_list.campaign_name !== undefined && a.name_value_list.campaign_name.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_CAMPAIGN_LABEL+"</p><h4>" + a.name_value_list.campaign_name.value + "</h4></li>");
						a.name_value_list.rating !==
							undefined && a.name_value_list.rating.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_ACCOUNT_RATING_LABEL+"</p><h4>" + a.name_value_list.rating.value + "</h4></li>");
						$("#ViewAccountDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_OTHER_LABEL+'</li>');
						a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_CONTACT_REPORTS_TO_LABEL+"</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
						a.name_value_list.date_modified !==
							undefined && a.name_value_list.date_modified.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_MODIFIED_LABEL+"</p><h4>" + change(a.name_value_list.date_modified.value) + "</h4></li>");
						a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_CREATED_LABEL+"</p><h4>" + change(a.name_value_list.date_entered.value) + RES_BY + a.name_value_list.created_by_name.value + "</h4></li>")
					}
			}
			$("#ViewAccountDetailsPageDetailsList").listview("refresh")
		});
		$("#ViewAccountDetailsPageContactsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			$("#ViewAccountDetailsPageContactsListUl").append('<li data-role="list-divider">'+RES_CONTACTS_LABEL+'</li>');
			if (a !== undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a !== undefined && a.entry_list !== undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] !== undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.first_name.value + "&nbsp;" + b.name_value_list.last_name.value + "</h4>",
									e = "<p>" + b.name_value_list.title.value + "</p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentContactId = $(this).data("identity");
										$.mobile.changePage("#ViewContactDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetContactDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewAccountDetailsPageContactsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewAccountDetailsPageContactsListUl").append(a)
					}
				$("#ViewAccountDetailsPageContactsListUl").listview("refresh")
			}
		});
		$("#ViewAccountDetailsPageOpportunitiesListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"opportunities","related_module_query":"","related_fields":["id","name","sales_stage"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			$("#ViewAccountDetailsPageOpportunitiesListUl").append('<li data-role="list-divider">'+RES_OPPORTUNITIES_LABEL+'</li>');
			if (a !== undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !==
					undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a !== undefined && a.entry_list !== undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] !== undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "<p>" + status[b.name_value_list.sales_stage.value] + "</p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentOpportunityId = $(this).data("identity");
										$.mobile.changePage("#ViewOpportunityDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetOpportunityDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewAccountDetailsPageOpportunitiesListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewAccountDetailsPageOpportunitiesListUl").append(a)
					}
			}
			$("#ViewAccountDetailsPageOpportunitiesListUl").listview("refresh")
		});
		$("#ViewAccountDetailsPageLeadsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' +
				SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			$("#ViewAccountDetailsPageLeadsListUl").append('<li data-role="list-divider">'+RES_LEADS_LABEL+'</li>');
			if (a !== undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a !== undefined && a.entry_list !== undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] !== undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.first_name.value + " " + b.name_value_list.last_name.value + "</h4>",
									e = "";
								e = b.name_value_list.title !== undefined ? "<p>" + b.name_value_list.title.value + "</p>" : "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentLeadId = $(this).data("identity");
										$.mobile.changePage("#ViewLeadDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetLeadDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewAccountDetailsPageLeadsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewAccountDetailsPageLeadsListUl").append(a)
					}
			}
			$("#ViewAccountDetailsPageLeadsListUl").listview("refresh")
		});
		$("#ViewAccountDetailsPageCallsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' +
				CurrentAccountId + '","link_field_name":"calls","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			$("#ViewAccountDetailsPageCallsListUl").append('<li data-role="list-divider">'+RES_CALLS_LABEL+'</li>');
			if (a !== undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a !== undefined && a.entry_list !== undefined)
					if (a.entry_list.length > 0) {
						var c =
							0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] !== undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "";
								if (b.name_value_list.status !== undefined) {
									e = "<p>" + status2[b.name_value_list.status.value];
									e += "<br/>" + change(b.name_value_list.date_start.value);
									e += "</p>"
								}
								var m = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentCallId = $(this).data("identity");
										$.mobile.changePage("#ViewCallDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetCallDetails()
									}
								});
								m.append(f);
								b.name_value_list.status !==
									undefined && m.append(e);
								d.append(m);
								$("#ViewAccountDetailsPageCallsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewAccountDetailsPageCallsListUl").append(a)
					}
			}
			$("#ViewAccountDetailsPageCallsListUl").listview("refresh")
		});
		$("#ViewAccountDetailsPageMeetingsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"meetings","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				$("#ViewAccountDetailsPageMeetingsListUl").append('<li data-role="list-divider">'+RES_MEETINGS_LABEL+'</li>');
				if (a !== undefined) {
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a !== undefined && a.entry_list !== undefined)
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] !== undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = "<h4>" + b.name_value_list.name.value + "</h4>",
										e = "";
									if (b.name_value_list.status !== undefined) 
									{
										e = "<p>" + status2[b.name_value_list.status.value];
										if (b.name_value_list.date_start !== undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
										e += "</p>"
									} else e = "<p></p>";
									b = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentMeetingId = $(this).data("identity");
											$.mobile.changePage("#ViewMeetingDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetMeetingDetails()
										}
									});
									b.append(f);
									b.append(e);
									d.append(b);
									$("#ViewAccountDetailsPageMeetingsListUl").append(d)
								}
						} else {
							a = $("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewAccountDetailsPageMeetingsListUl").append(a)
						}
				}
				$("#ViewAccountDetailsPageMeetingsListUl").listview("refresh")
			});
		$("#ViewAccountDetailsPageTasksListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"tasks","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				$("#ViewAccountDetailsPageTasksListUl").append('<li data-role="list-divider">'+RES_TASKS_LABEL+'</li>');
				if (a !== undefined) {
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a !== undefined && a.entry_list !== undefined)
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] !== undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = "<h4>" + b.name_value_list.name.value + "</h4>",
										e = "";
									if (b.name_value_list.status !==
										undefined) {
										e = "<p>" + status2[b.name_value_list.status.value];
										if (b.name_value_list.date_start !== undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
										e += "</p>"
									} else e = "<p></p>";
									b = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentTaskId = $(this).data("identity");
											$.mobile.changePage("#ViewTaskDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetTaskDetails()
										}
									});
									b.append(f);
									b.append(e);
									d.append(b);
									$("#ViewAccountDetailsPageTasksListUl").append(d)
								}
						} else {
							a = $("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewAccountDetailsPageTasksListUl").append(a)
						}
				}
				$("#ViewAccountDetailsPageTasksListUl").listview("refresh");
				$.mobile.loading( "hide" );
			})
	}

	function SugarCrmGetContactsListFromServer(a) {
		if ($("#AllContactsListDiv li").length === 0 || ContactsListCurrentOffset !== a || toUpdateContacts === true) {
			
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});
			ContactsListCurrentOffset = a;
			
			if (ContactsList == "" || ContactsList.entry_list.length == 0 || toUpdateContacts === true)
			{
				$.get(sugarURL+"/service/v2/rest.php", {
					method: "get_entry_list",
					input_type: "JSON",
					response_type: "JSON",
					rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","query":"","order_by":"first_name","offset":' + a + ',"select_fields":["first_name","last_name","title"],"link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews +
						',"deleted":0}'
				}, function (c) {
					if (c != undefined) {
						c = $.parseJSON(JSON.stringify(c, undefined, 2));
						if (c != undefined && c.entry_list != undefined) {
							ContactsList = c;
							DOMContactsList(c, a);
						}
						toUpdateContacts = false;
					}
					
				})
			}
			else {
				DOMContactsList(ContactsList, a);
			}
			$.mobile.loading( "hide" );
		}
	}

	/******************************************************************************************************
	***								FUNCIONES DEL DOM 													***
	*******************************************************************************************************/

	/**
	 * To create DOM Objects from ContactsList
	 * @param {JSON} contacts from Server or ConstactsList
	 */
	function DOMContactsList(contacts, currentoffset){
		var c = contacts;
		var a = currentoffset;
		if (c.result_count === 0) ContactsListCurrentOffset = ContactsListPrevOffset + RowsPerPageInListViews;
		else if (c.next_offset === 0) ContactsListCurrentOffset = 0;
		if (c.next_offset == 0 || c.result_count == 0) toast(""+RES_NOTHING_TO_SHOW+"");
		else {
			$("#AllContactsListDiv li").remove();
			var b = 0;
			for (b = 0; b <= c.entry_list.length; b++)
				if (c.entry_list[b] != undefined) {
					var d = c.entry_list[b],
						f = $("<li/>"),
						e = "<h4>" + d.name_value_list.first_name.value + "&nbsp;" + d.name_value_list.last_name.value + "</h4>",
						m = d.name_value_list.title.value;
					//if (d.name_value_list.account_name != undefined) m += " en " + d.name_value_list.account_name.value; //TODO
					m = "<p>" + m + "</p>";
					d = $("<a/>", {
						href: "#",
						"data-identity": d.id,
						click: function () {
							CurrentContactId = $(this).data("identity");
							$.mobile.changePage("#ViewContactDetailsPage");
							$.mobile.loading( "show", {
									text: RES_LOADER_MSG,
									textonly: textOnly,
									textVisible: textVisible
							});
							SugarCrmGetContactDetails()
						}
					});
					d.append(e);
					d.append(m);
					f.append(d);
					$("#AllContactsListDiv").append(f)
				}
			$("#AllContactsListDiv").listview("refresh");
			ContactsListNextOffset = c.next_offset;
			ContactsListPrevOffset = a - RowsPerPageInListViews
		}
	}

	/**
	 * To create DOM Objects from AccountsList
	 * @param {JSON} accounts from Server or AccountsList
	 */
	function DOMAccountsList(accounts, currentoffset){
		var c = accounts;
		var a = currentoffset;
		if (c.result_count === 0) AccountsListCurrentOffset = AccountsListPrevOffset + RowsPerPageInListViews;
		else if (c.next_offset === 0) AccountsListCurrentOffset = 0;
		if (c.next_offset === 0 || c.result_count === 0) toast(""+RES_NOTHING_TO_SHOW+"");
		else {
			$("#AllAccountsListDiv li").remove();
			var b = 0;
			for (b = 0; b <= c.entry_list.length; b++)
				if (c.entry_list[b] !== undefined) {
					var d = c.entry_list[b],
						f = $("<li/>"),
						e = "<h4>" + d.name_value_list.name.value + "</h4>",
						m = "<p>" + d.name_value_list.billing_address_city.value + "&nbsp;" + d.name_value_list.billing_address_state.value + "</p>";
					d = $("<a/>", {
						href: "#",
						"data-identity": d.id,
						click: function () {
							CurrentAccountId = $(this).data("identity");
							$.mobile.changePage("#ViewAccountDetailsPage");
							$.mobile.loading( "show", {
									text: RES_LOADER_MSG,
									textonly: textOnly,
									textVisible: textVisible
							});
							SugarCrmGetAccountDetails()
						}
					});
					d.append(e);
					d.append(m);
					f.append(d);
					$("#AllAccountsListDiv").append(f)
				}
			$("#AllAccountsListDiv").listview("refresh");
			AccountsListNextOffset = c.next_offset;
			AccountsListPrevOffset = a - RowsPerPageInListViews
		}
	}




	function SugarCrmGetContactDetails() {
		$("#ContactNameH1").html("");
		$("#ContactTitleP").text("");
		$("#ViewContactDetailsPageDetailsList li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","id":"' + CurrentContactId + '","select_fields":["first_name","last_name","title","phone_work","email1","description","primary_address_street","primary_address_city","primary_address_state","primary_address_postalcode","primary_address_country","phone_mobile","phone_fax","department","alt_address_street","alt_address_city","alt_address_state","alt_address_postalcode","alt_address_country"],"link_name_to_fields_array":""}'
		}, function (a) {
			if (a !=
				undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list[0] != undefined) {
						a = a.entry_list[0];
						CurrentContact = a;
						$("#ContactNameH1").html(a.name_value_list.first_name.value + "&nbsp;" + a.name_value_list.last_name.value);
						var c = a.name_value_list.title.value;
						//if (a.name_value_list.account_name != undefined) c += " en " + a.name_value_list.account_name.value; //TODO
						$("#ContactTitleP").text(c);
						$("#ViewContactDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_CONTACT_LABEL+'</li>');
						if (a.name_value_list.phone_work !== undefined && a.name_value_list.phone_work.value !== "") {
							c = $("<li/>");
							var b = a.name_value_list.phone_work.value.replace("(", "");
							b = b.replace(")", "");
							b = b.replace(" ", "");
							b = b.replace("-", "");
							if (a.name_value_list.phone_work !== undefined) {
								var d = "<h4>" + a.name_value_list.phone_work.value + "</h4>",
								f = $("<a/>", {
									href: "tel:" + b,
									target: "_blank", //Si no se pone el blank, pierde el foco.
									rel: "external",
									style: "text-decoration:none;color:#444;",
									click: function () {
										SugarCrmSetNewCall("Contacts", CurrentContactId);
										return true
									}
								});
								f.append("<p><br />"+RES_WORK+"</p>");
								f.append(d);
								c.append(f)
							}
							$("#ViewContactDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.email1 !==
							undefined && a.name_value_list.email1.value !== "") {
							c = $("<li/>");
							d = "<h4>" + a.name_value_list.email1.value + "</h4>";
							f = $("<a/>", {
								href: "mailto:" + a.name_value_list.email1.value,
								rel: "external",
								style: "text-decoration:none;color:#444;"
							});
							f.append("<p><br />"+RES_EMAIL_ADDRESS_LABEL+"</p>");
							f.append(d);
							c.append(f);
							$("#ViewContactDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.description !== undefined && a.name_value_list.description.value !== "") {
							c = $("<li/>");
							d = "<h4>" + a.name_value_list.description.value + "</h4>";
							c.append("<p><br />"+RES_DESCRIPTION_LABEL+"</p>");
							c.append(d);
							$("#ViewContactDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.primary_address_street !== undefined && a.name_value_list.primary_address_street.value != "" || a.name_value_list.primary_address_city !== undefined && a.name_value_list.primary_address_city.value != "" || a.name_value_list.primary_address_state !== undefined && a.name_value_list.primary_address_state.value != "" || a.name_value_list.primary_address_postalcode !== undefined && a.name_value_list.primary_address_postalcode.value != "" || a.name_value_list.primary_address_country !==
							undefined && a.name_value_list.primary_address_country.value != "") {
							f = a.name_value_list.primary_address_street.value;
							var e = a.name_value_list.primary_address_city.value,
								m = a.name_value_list.primary_address_state.value,
								g = a.name_value_list.primary_address_postalcode.value,
								i = a.name_value_list.primary_address_country.value;
							d = "http://maps.google.com/?q=" + f + "%20" + e + "%20" + m + "%20" + g + "&t=m&z=13";
							c = $("<li/>");
							f = "<h4>" + f + "<br />" + e + ", " + m + " " + g + "<br />" + i + "</h4>";
							d = $("<a/>", {
								href: d,
								rel: "external",
								target: "_new",
								style: "text-decoration:none;color:#444;"
							});
							d.append("<p><br />Dirección principal</p>");
							d.append(f);
							c.append(d);
							$("#ViewContactDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.phone_mobile !== undefined && a.name_value_list.phone_mobile.value !== "") {
							c = $("<li/>");
							d = a.name_value_list.phone_mobile.value.replace("(", "");
							b.replace(")", "");
							b.replace(" ", "");
							d = b.replace("-", "");
							b = "<h4>" + a.name_value_list.phone_mobile.value + "</h4>";
							d = $("<a/>", {
								href: "tel:" + b,
								target: "_blank", //Si no se pone el blank, pierde el foco.
								rel: "external",
								style: "text-decoration:none;color:#444;",
								click: function () {
									SugarCrmSetNewCall("Contacts", CurrentContactId);
									return true
								}
							});
							d.append("<p><br />"+RES_MOBILE_PHONE_LABEL+"</p>");
							d.append(b);
							c.append(d);
							$("#ViewContactDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.phone_fax !== undefined && a.name_value_list.phone_fax.value !== "") {
							b = $("<li/>");
							c = "<h4>" + a.name_value_list.phone_fax.value + "</h4>";
							b.append("<p><br />"+RES_FAX_LABEL+"</p>");
							b.append(c);
							$("#ViewContactDetailsPageDetailsList").append(b)
						}
						if (a.name_value_list.department !== undefined && a.name_value_list.department.value !== "") {
							b = $("<li/>");
							c = "<h4>" + a.name_value_list.department.value + "</h4>";
							b.append("<p><br />"+RES_DEPARTMENT_LABEL+"</p>");
							b.append(c);
							$("#ViewContactDetailsPageDetailsList").append(b)
						}
						if (a.name_value_list.alt_address_street !== undefined && a.name_value_list.alt_address_street.value != "" || a.name_value_list.alt_address_city !== undefined && a.name_value_list.alt_address_city.value != "" || a.name_value_list.alt_address_state !== undefined && a.name_value_list.alt_address_state.value != "" || a.name_value_list.alt_address_postalcode !== undefined && a.name_value_list.alt_address_postalcode.value != "" || a.name_value_list.alt_address_country !== undefined && a.name_value_list.alt_address_country.value !=
							"") {
							b = $("<li/>");
							d = a.name_value_list.alt_address_street.value;
							f = a.name_value_list.alt_address_city.value;
							e = a.name_value_list.alt_address_state.value;
							m = a.name_value_list.alt_address_postalcode.value;
							c = "<h4>" + d + "<br />" + f + ", " + e + " " + m + "<br />" + a.name_value_list.alt_address_country.value + "</h4>";
							d = $("<a/>", {
								href: "http://maps.google.com/?q=" + d + "%20" + f + "%20" + e + "%20" + m + "&t=m&z=13",
								rel: "external",
								target: "_new",
								style: "text-decoration:none;color:#444;"
							});
							d.append("<p><br />"+RES_OTHER_ADDRESS_LABEL+"</p>");
							d.append(c);
							b.append(d);
							$("#ViewContactDetailsPageDetailsList").append(b)
						}
						$("#ViewContactDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_OVERVIEW_LABEL+'</li>');
						a.name_value_list.report_to_name !== undefined && a.name_value_list.report_to_name.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />"+RES_LEAD_REFERRED_BY+"</p><h4>" + a.name_value_list.report_to_name.value + "</h4></li>");
						a.name_value_list.lead_source !== undefined && a.name_value_list.lead_source.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />"+RES_LEAD_SOURCE_LABEL+"</p><h4>" +
							a.name_value_list.lead_source.value + "</h4></li>");
						$("#ViewContactDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_MORE_INFORMATION_LABEL+'</li>');
						a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />"+ RES_CONTACT_REPORTS_TO_LABEL +"</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
						a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />"+ RES_DATE_MODIFIED_LABEL +"</p><h4>" +
							a.name_value_list.date_modified.value + RES_BY + change(a.name_value_list.modified_by_name.value) + "</h4></li>");
						a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_CREATED_LABEL+"</p><h4>" + change(a.name_value_list.date_entered.value) + RES_BY + a.name_value_list.created_by_name.value + "</h4></li>");
						a.name_value_list.do_not_call !== undefined && a.name_value_list.do_not_call.value == "true" && toast(RES_DO_NOT_CALL)
					}
				$("#ViewContactDetailsPageDetailsList").listview("refresh")
			}
		});
		getContactRelatedOpportunitiesInsetList();
		getContactRelatedLeadsInsetList();
		getContactRelatedCallsInsetList();
		getContactRelatedMeetingsInsetList();
		getContactRelatedTasksInsetList()
	}

	function getContactRelatedOpportunitiesInsetList() {
		$("#ViewContactDetailsPageOpportunitiesListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"opportunities","related_module_query":"","related_fields":["id","name","sales_stage"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewContactDetailsPageOpportunitiesListUl").append('<li data-role="list-divider">'+RES_OPPORTUNITIES_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "<p>" + status[b.name_value_list.sales_stage.value] + "</p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentOpportunityId = $(this).data("identity");
										$.mobile.changePage("#ViewOpportunityDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetOpportunityDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewContactDetailsPageOpportunitiesListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewContactDetailsPageOpportunitiesListUl").append(a)
					}
				$("#ViewContactDetailsPageOpportunitiesListUl").listview("refresh")
			}
		})
	}

	function getContactRelatedLeadsInsetList() {
		$("#ViewContactDetailsPageLeadsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewContactDetailsPageLeadsListUl").append('<li data-role="list-divider">'+RES_LEADS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.first_name.value + " " + b.name_value_list.last_name.value + "</h4>",
									e = "";
								e = b.name_value_list.title != undefined ? "<p>" + b.name_value_list.title.value + "</p>" : "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentLeadId = $(this).data("identity");
										$.mobile.changePage("#ViewLeadDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetLeadDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewContactDetailsPageLeadsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewContactDetailsPageLeadsListUl").append(a)
					}
				$("#ViewContactDetailsPageLeadsListUl").listview("refresh")
			}
		})
	}

	function getContactRelatedCallsInsetList() {
		$("#ViewContactDetailsPageCallsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"calls","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewContactDetailsPageCallsListUl").append('<li data-role="list-divider">'+RES_CALLS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a !== undefined && a.entry_list !== undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] !== undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "";
								if (b.name_value_list.status !== undefined && b.name_value_list.status.value !== "") {
									e = "<p>" + status2[b.name_value_list.status.value];
									if (b.name_value_list.date_start !=
										undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
									e += "</p>"
								} else e = "<p></p>";
								var m = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentCallId = $(this).data("identity");
										$.mobile.changePage("#ViewCallDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetCallDetails()
									}
								});
								m.append(f);
								b.name_value_list.status !== undefined && b.name_value_list.status.value !== "" && m.append(e);
								d.append(m);
								$("#ViewContactDetailsPageCallsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewContactDetailsPageCallsListUl").append(a)
					}
				$("#ViewContactDetailsPageCallsListUl").listview("refresh")
			}
		})
	}

	function getContactRelatedMeetingsInsetList() {
		$("#ViewContactDetailsPageMeetingsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"meetings","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewContactDetailsPageMeetingsListUl").append('<li data-role="list-divider">'+RES_MEETINGS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "";
								if (b.name_value_list.status != undefined) {                              
									e = "<p>" + status2[b.name_value_list.status.value];
									if (b.name_value_list.date_start != undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
									e += "</p>"
								} else e = "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentMeetingId = $(this).data("identity");
										$.mobile.changePage("#ViewMeetingDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetMeetingDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewContactDetailsPageMeetingsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewContactDetailsPageMeetingsListUl").append(a)
					}
				$("#ViewContactDetailsPageMeetingsListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function getContactRelatedTasksInsetList() {
		$("#ViewContactDetailsPageTasksListUl li").remove();
		SugarSessionId == "" && $.mobile.changePage("#HomePage");
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"tasks","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				if (a != undefined) {
					$("#ViewContactDetailsPageTasksListUl").append('<li data-role="list-divider">'+RES_TASKS_LABEL+'</li>');
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a != undefined && a.entry_list != undefined)
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] != undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = "<h4>" + b.name_value_list.name.value + "</h4>",
										e = "";
									if (b.name_value_list.status !=
										undefined) {
										e = "<p>" + status2[b.name_value_list.status.value];
										if (b.name_value_list.date_start != undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
										e += "</p>"
									} else e = "<p></p>";
									b = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentTaskId = $(this).data("identity");
											$.mobile.changePage("#ViewTaskDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetTaskDetails()
										}
									});
									b.append(f);
									b.append(e);
									d.append(b);
									$("#ViewContactDetailsPageTasksListUl").append(d)
								}
						} else {
							a = $("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewContactDetailsPageTasksListUl").append(a)
						}
					$("#ViewContactDetailsPageTasksListUl").listview("refresh")
				}
				$.mobile.loading( "hide" );
			})
	}

	function SugarCrmGetOpportunitiesListFromServer(a) {
		if ($("#AllOpportunitiesListDiv li").length === 0 || OpportunitiesListCurrentOffset !== a || toUpdateOpportunities ===true) {
			toUpdateOpportunities = false;
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});
			OpportunitiesListCurrentOffset = a;
			$.get(sugarURL+"/service/v2/rest.php", {
					method: "get_entry_list",
					input_type: "JSON",
					response_type: "JSON",
					rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","query":"","order_by":"amount desc","offset":' + a + ',"select_fields":"","link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews + ',"deleted":0}'
				},
				function (c) {
					if (c != undefined) {
						c = $.parseJSON(JSON.stringify(c, undefined, 2));
						if (c.name !== undefined && c.name === "Invalid Session ID") {
							SugarSessionId = "";
							$.mobile.changePage("#LoginPage")
						}
						if (c != undefined && c.entry_list != undefined) {
							if (c.result_count === 0) OpportunitiesListCurrentOffset = OpportunitiesListPrevOffset + RowsPerPageInListViews;
							else if (c.next_offset === 0) OpportunitiesListCurrentOffset = 0;
							if (c.next_offset == 0 || c.result_count == 0) toast(""+RES_NOTHING_TO_SHOW+"");
							else {
								$("#AllOpportunitiesListDiv li").remove();
								var b = 0;
								for (b = 0; b <= c.entry_list.length; b++)
									if (c.entry_list[b] != undefined) {
										var d = c.entry_list[b],
											f = $("<li/>"),
											e = "<h4>" + d.name_value_list.name.value + "</h4>",
											m = $("<p/>");
										
										// Euros value FIX
										if (d.name_value_list.amount !== undefined && d.name_value_list.amount.value !== "")
											if (d.name_value_list.currency_name !== undefined && d.name_value_list.currency_name.value !== "") {
												m.append(parseFloat(d.name_value_list.amount.value).toFixed(2))
												m.append(d.name_value_list.currency_symbol.value);
											} else {
												m.append(parseFloat(d.name_value_list.amount_usdollar.value).toFixed(2))
												m.append("$");
											}
										d.name_value_list.sales_stage !==
											undefined && d.name_value_list.sales_stage.value !== "" && m.append(" - " + status[d.name_value_list.sales_stage.value]);
										d = $("<a/>", {
											href: "#",
											"data-identity": d.id,
											click: function () {
												CurrentOpportunityId = $(this).data("identity");
												$.mobile.changePage("#ViewOpportunityDetailsPage");
												$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
												SugarCrmGetOpportunityDetails()
											}
										});
										d.append(e);
										d.append(m);
										f.append(d);
										$("#AllOpportunitiesListDiv").append(f)
									}
								$("#AllOpportunitiesListDiv").listview("refresh");
								OpportunitiesListNextOffset = c.next_offset;
								OpportunitiesListPrevOffset =
									a - RowsPerPageInListViews
							}
						}
					}
					$.mobile.loading( "hide" );
				})
		}
	}

	function SugarCrmGetOpportunityDetails() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#OpportunityNameH1").html("");
		$("#OpportunityDescriptionP").text("");
		$("#ViewOpportunityDetailsPageDetailsList li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","id":"' + CurrentOpportunityId + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (a) {
			if (a != undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !==
					undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list[0] != undefined) {
						a = a.entry_list[0];
						CurrentOpportunity=a;
						$("#OpportunityNameH1").html(a.name_value_list.name.value);
						$("#OpportunityDescriptionP").text(a.name_value_list.account_name.value);
						$("#ViewOpportunityDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_OPPORTUNITY_LABEL+'</li>');
						if (a.name_value_list.amount !== undefined && a.name_value_list.amount.value !==
							"") {
							var c = $("<li/>"),
								b = $("<p/>");
							b.append("<br />"+RES_OPPORTUNITY_AMOUNT_LABEL+" (");
							var d = $("<h4/>");

							// Euros Value FIX
							if (a.name_value_list.currency_name !== undefined && a.name_value_list.currency_name.value !== "") {
								b.append(a.name_value_list.currency_name.value + ")");
								d.append(parseFloat(a.name_value_list.amount.value).toFixed(2))
								d.append(a.name_value_list.currency_symbol.value);
							} else {
								b.append("USD)");
								d.append(parseFloat(a.name_value_list.amount_usdollar.value).toFixed(2))
								d.append("$");
							}
							b.append(d);
							c.append(b);
							c.append(d);
							$("#ViewOpportunityDetailsPageDetailsList").append(c)
						}
						a.name_value_list.date_closed !==
							undefined && a.name_value_list.date_closed.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_OPPORTUNITY_EXPECTED_CLOSE_DATE_LABEL+"</p><h4>" + change(a.name_value_list.date_closed.value) + "</h4></li>");
						a.name_value_list.sales_stage !== undefined && a.name_value_list.sales_stage.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_OPPORTUNITY_SALES_STAGE_LABEL+"</p><h4>" + status[a.name_value_list.sales_stage.value] + "</h4></li>");
						a.name_value_list.opportunity_type !== undefined && a.name_value_list.opportunity_type.value !==
							"" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Type</p><h4>" + a.name_value_list.opportunity_type.value + "</h4></li>");
						a.name_value_list.probability !== undefined && a.name_value_list.probability.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_OPPORTUNITY_PROBABILITY_LABEL+"</p><h4>" + a.name_value_list.probability.value + "</h4></li>");
						a.name_value_list.lead_source !== undefined && a.name_value_list.lead_source.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_LEAD_REFERRED_BY+"</p><h4>" +
							a.name_value_list.lead_source.value + "</h4></li>");
						a.name_value_list.next_step !== undefined && a.name_value_list.next_step.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_OPPORTUNITY_NEXT_STEP_LABEL+"</p><h4>" + a.name_value_list.next_step.value + "</h4></li>");
						a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_DESCRIPTION_LABEL+"</p><h4>" + a.name_value_list.description.value + "</h4></li>");
						$("#ViewOpportunityDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_OPPORTUNITY_LABEL+'</li>');
						a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_LEAD_REFERRED_BY+"</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
						a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_MODIFIED_LABEL+"</p><h4>" + change(a.name_value_list.date_modified.value) + "</h4></li>");
						a.name_value_list.date_entered !==
							undefined && a.name_value_list.date_entered.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_CREATED_LABEL+" </p><h4>" + change(a.name_value_list.date_entered.value) + " por " + a.name_value_list.created_by_name.value + "</h4></li>")
					}
				$("#ViewOpportunityDetailsPageDetailsList").listview("refresh")
			}
		});
		getOpportunityRelatedContactsInsetList();
		getOpportunityRelatedLeadsInsetList();
		getOpportunityRelatedCallsInsetList();
		getOpportunityRelatedMeetingsInsetList();
		getOpportunityRelatedTasksInsetList()
	}

	function getOpportunityRelatedContactsInsetList() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#ViewOpportunityDetailsPageContactsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","module_id":"' + CurrentOpportunityId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				if (a != undefined) {
					$("#ViewOpportunityDetailsPageContactsListUl li").remove();
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a != undefined && a.entry_list != undefined) {
						$("#ViewOpportunityDetailsPageContactsListUl").append('<li data-role="list-divider">Contactos</li>');
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] != undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = '<h4 class="contactName">' +
											b.name_value_list.first_name.value + "&nbsp;" + b.name_value_list.last_name.value + "</h4>",
										e = "<p>" + b.name_value_list.title.value + "</p>";
									b = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentContactId = $(this).data("identity");
											$.mobile.changePage("#ViewContactDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetContactDetails()
										}
									});
									b.append(f);
									b.append(e);
									d.append(b);
									$("#ViewOpportunityDetailsPageContactsListUl").append(d)
								}
						} else {
							a = $("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewOpportunityDetailsPageContactsListUl").append(a)
						}
					}
					$("#ViewOpportunityDetailsPageContactsListUl").listview("refresh")
				}
				$.mobile.loading( "hide" );
			})
	}

	function getOpportunityRelatedLeadsInsetList() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#ViewOpportunityDetailsPageLeadsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","module_id":"' + CurrentOpportunityId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				if (a != undefined) {
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a != undefined && a.entry_list != undefined) {
						$("#ViewOpportunityDetailsPageLeadsListUl").append('<li data-role="list-divider">'+RES_LEADS_LABEL+'</li>');
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] != undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = "<h4>" + b.name_value_list.first_name.value + " " + b.name_value_list.last_name.value +
											"</h4>",
										e = "";
									e = b.name_value_list.title != undefined ? "<p>" + b.name_value_list.title.value + "</p>" : "<p></p>";
									b = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentLeadId = $(this).data("identity");
											$.mobile.changePage("#ViewLeadDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetLeadDetails()
										}
									});
									b.append(f);
									b.append(e);
									d.append(b);
									$("#ViewOpportunityDetailsPageLeadsListUl").append(d)
								}
						} else {
							a = $("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewOpportunityDetailsPageLeadsListUl").append(a)
						}
					}
					$("#ViewOpportunityDetailsPageLeadsListUl").listview("refresh")
				}
				$.mobile.loading( "hide" );
			})
	}

	function getOpportunityRelatedCallsInsetList() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#ViewOpportunityDetailsPageCallsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","module_id":"' + CurrentOpportunityId + '","link_field_name":"calls","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				if (a != undefined) {
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a != undefined && a.entry_list != undefined) {
						$("#ViewOpportunityDetailsPageCallsListUl").append('<li data-role="list-divider">'+RES_CALLS_LABEL+'</li>');
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] != undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = "<h4>" + b.name_value_list.name.value + "</h4>",
										e = "";
									if (b.name_value_list.status !=
										undefined) {
										e = "<p>" + status2[b.name_value_list.status.value];
										if (b.name_value_list.date_start != undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
										e += "</p>"
									} else e = "<p></p>";
									var m = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentCallId = $(this).data("identity");
											$.mobile.changePage("#ViewCallDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetCallDetails()
										}
									});
									m.append(f);
									b.name_value_list.status != undefined && m.append(e);
									d.append(m);
									$("#ViewOpportunityDetailsPageCallsListUl").append(d)
								}
						} else {
							a = $("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewOpportunityDetailsPageCallsListUl").append(a)
						}
					}
					$("#ViewOpportunityDetailsPageCallsListUl").listview("refresh")
				}
				$.mobile.loading( "hide" );
			})
	}

	function getOpportunityRelatedMeetingsInsetList() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#ViewOpportunityDetailsPageMeetingsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","module_id":"' + CurrentOpportunityId + '","link_field_name":"meetings","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				if (a != undefined) {
					$("#ViewOpportunityDetailsPageMeetingsListUl li").remove();
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a != undefined && a.entry_list != undefined) {
						$("#ViewOpportunityDetailsPageMeetingsListUl").append('<li data-role="list-divider">'+RES_MEETINGS_LABEL+'</li>');
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] != undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = "<h4>" +
											b.name_value_list.name.value + "</h4>",
										e = "";
									if (b.name_value_list.status != undefined) {
										e = "<p>" + status2[b.name_value_list.status.value];
										if (b.name_value_list.date_start != undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
										e += "</p>"
									} else e = "<p></p>";
									b = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentMeetingId = $(this).data("identity");
											$.mobile.changePage("#ViewMeetingDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetMeetingDetails()
										}
									});
									b.append(f);
									b.append(e);
									d.append(b);
									$("#ViewOpportunityDetailsPageMeetingsListUl").append(d)
								}
						} else {
							a =
								$("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewOpportunityDetailsPageMeetingsListUl").append(a)
						}
					}
					$("#ViewOpportunityDetailsPageMeetingsListUl").listview("refresh")
				}
				$.mobile.loading( "hide" );
			})
	}

	function getOpportunityRelatedTasksInsetList() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#ViewOpportunityDetailsPageTasksListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","module_id":"' + CurrentOpportunityId + '","link_field_name":"tasks","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				if (a != undefined) {
					$("#ViewOpportunityDetailsPageTasksListUl li").remove();
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a != undefined && a.entry_list != undefined) {
						$("#ViewOpportunityDetailsPageTasksListUl").append('<li data-role="list-divider">'+RES_TASKS_LABEL+'</li>');
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] != undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = "<h4>" + b.name_value_list.name.value +
											"</h4>",
										e = "";
									if (b.name_value_list.status != undefined) {
										e = "<p>" + status2[b.name_value_list.status.value];
										if (b.name_value_list.date_start != undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
										e += "</p>"
									} else e = "<p></p>";
									b = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentTaskId = $(this).data("identity");
											$.mobile.changePage("#ViewTaskDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetTaskDetails()
										}
									});
									b.append(f);
									b.append(e);
									d.append(b);
									$("#ViewOpportunityDetailsPageTasksListUl").append(d)
								}
						} else {
							a = $("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewOpportunityDetailsPageTasksListUl").append(a)
						}
					}
					$("#ViewOpportunityDetailsPageTasksListUl").listview("refresh")
				}
				$.mobile.loading( "hide" );
			})
	}

	function SugarCrmGetLeadsListFromServer(a) {
		if ($("#AllLeadsListDiv li").length === 0 || LeadsListCurrentOffset !== a || toUpdateLeads === true) {
			toUpdateLeads = false;
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});
			LeadsListCurrentOffset = a;
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_entry_list",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","query":"","order_by":"name","offset":' + a + ',"select_fields":"","link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews + ',"deleted":0}'
			}, function (c) {
				if (c != undefined) {
					c = $.parseJSON(JSON.stringify(c, undefined, 2));
					if (c.name !== undefined && c.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (c != undefined && c.entry_list != undefined) {
						if (c.result_count === 0) LeadsListCurrentOffset = LeadsListPrevOffset + RowsPerPageInListViews;
						else if (c.next_offset === 0) LeadsListCurrentOffset = 0;
						if (c.next_offset == 0 || c.result_count == 0) toast(""+RES_NOTHING_TO_SHOW+"");
						else {
							$("#AllLeadsListDiv li").remove();
							var b = 0;
							for (b = 0; b <= c.entry_list.length; b++)
								if (c.entry_list[b] != undefined) {
									var d = c.entry_list[b],
										f = $("<li/>"),
										e = "<h4>" + d.name_value_list.first_name.value + "&nbsp;" + d.name_value_list.last_name.value + "</h4>",
										m = "<p>" + d.name_value_list.title.value + "&nbsp;" + d.name_value_list.account_name.value + "</p>";
									d = $("<a/>", {
										href: "#",
										"data-identity": d.id,
										click: function () {
											CurrentLeadId = $(this).data("identity");
											$.mobile.changePage("#ViewLeadDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetLeadDetails()
										}
									});
									d.append(e);
									d.append(m);
									f.append(d);
									$("#AllLeadsListDiv").append(f)
								}
							$("#AllLeadsListDiv").listview("refresh");
							LeadsListNextOffset = c.next_offset;
							LeadsListPrevOffset = a - RowsPerPageInListViews
						}
					}
				}
				$.mobile.loading( "hide" );
			})
		}
	}

	function SugarCrmGetLeadDetails() {
		$("#ContactNameH1").html("");
		$("#ContactTitleP").text("");
		$("#ViewLeadDetailsPageDetailsList li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","id":"' + CurrentLeadId + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (a) {
			if (a != undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a !=
					undefined && a.entry_list != undefined)
					if (a.entry_list[0] != undefined) {
						a = a.entry_list[0];
						CurrentLead=a;
						$("#LeadNameH1").html(a.name_value_list.first_name.value + "&nbsp;" + a.name_value_list.last_name.value);
						/*
						// TODO: Nombre de la cuenta, no lo devuelve (revisar)
						if (a.name_value_list.account_name !== undefined && a.name_value_list.account_name.value !== "") {
							var c = a.name_value_list.title.value;
							c += " en " + a.name_value_list.account_name.value;
							$("#LeadTitleP").text(c)
						}
						*/
						$("#ViewLeadDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_OPPORTUNITY_LABEL+'</li>');
						if (a.name_value_list.phone_work !==
							undefined && a.name_value_list.phone_work.value !== "") {
							c = $("<li/>");
							var b = a.name_value_list.phone_work.value.replace("(", "");
							b = b.replace(")", "");
							b = b.replace(" ", "");
							b = b.replace("-", "");
							var d = "<h4>" + a.name_value_list.phone_work.value + "</h4>";
							b = $("<a/>", {
								href: "tel:" + b,
								target: "_blank", //Si no se pone el blank, pierde el foco.
								rel: "external",
								style: "text-decoration:none;color:#444;",
								click: function () {
									SugarCrmSetNewCall("Leads", CurrentLeadId);
									return true
								}
							});
							b.append("<p><br />"+RES_WORK+"</p>");
							b.append(d);
							c.append(b);
							$("#ViewLeadDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.phone_mobile !== undefined && a.name_value_list.phone_mobile.value !==
							"") {
							c = $("<li/>");
							b = a.name_value_list.phone_mobile.value.replace("(", "");
							b = b.replace(")", "");
							b = b.replace(" ", "");
							b = b.replace("-", "");
							d = "<h4>"+RES_MOBILE_PHONE_LABEL+":&nbsp;" + a.name_value_list.phone_mobile.value + "</h4>";
							b = $("<a/>", {
								href: "tel:" + b,
								target: "_blank", //Si no se pone el blank, pierde el foco.
								rel: "external",
								style: "text-decoration:none;color:#444;",
								click: function () {
									SugarCrmSetNewCall("Leads", CurrentLeadId);
									return true
								}
							});
							b.append("<p><br />"+RES_MOBILE_PHONE_LABEL+"</p>");
							b.append(d);
							c.append(b);
							$("#ViewLeadDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.phone_fax !== undefined && a.name_value_list.phone_fax.value !== "") {
							c = $("<li/>");
							d = "<h4>" +
								a.name_value_list.phone_fax.value + "</h4>";
							c.append("<p><br />Fax</p>");
							c.append(d);
							$("#ViewLeadDetailsPageDetailsList").append(c)
						}
						a.name_value_list.department !== undefined && a.name_value_list.department.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Departamento</p><h4>" + a.name_value_list.department.value + "</h4></li>");
						if (a.name_value_list.primary_address_street !== undefined && a.name_value_list.primary_address_street.value != "" || a.name_value_list.primary_address_city !== undefined &&
							a.name_value_list.primary_address_city.value != "" || a.name_value_list.primary_address_state !== undefined && a.name_value_list.primary_address_state.value != "" || a.name_value_list.primary_address_postalcode !== undefined && a.name_value_list.primary_address_postalcode.value != "" || a.name_value_list.primary_address_country !== undefined && a.name_value_list.primary_address_country.value != "") {
							c = $("<li/>");
							b = a.name_value_list.primary_address_street.value;
							var f = a.name_value_list.primary_address_city.value,
								e = a.name_value_list.primary_address_state.value,
								m = a.name_value_list.primary_address_postalcode.value;
							d = "<h4>" + b + "<br />" + f + ", " + e + m + "<br />" + a.name_value_list.primary_address_country.value + "</h4>";
							b = $("<a/>", {
								href: "http://maps.google.com/?q=" + b + "%20" + f + "%20" + e + "%20" + m + "&t=m&z=13",
								rel: "external",
								target: "_new",
								style: "text-decoration:none;color:#444;"
							});
							b.append("<p><br />"+RES_PRIMARY_ADDRESS_LABEL+"</p>");
							b.append(d);
							c.append(b);
							$("#ViewLeadDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.alt_address_street !== undefined && a.name_value_list.alt_address_street.value !=
							"" || a.name_value_list.alt_address_city !== undefined && a.name_value_list.alt_address_city.value != "" || a.name_value_list.alt_address_state !== undefined && a.name_value_list.alt_address_state.value != "" || a.name_value_list.alt_address_postalcode !== undefined && a.name_value_list.alt_address_postalcode.value != "" || a.name_value_list.alt_address_country !== undefined && a.name_value_list.alt_address_country.value != "") {
							c = $("<li/>");
							b = a.name_value_list.alt_address_street.value;
							f = a.name_value_list.alt_address_city.value;
							e = a.name_value_list.alt_address_state.value;
							m = a.name_value_list.alt_address_postalcode.value;
							d = "<h4>" + b + "<br />" + f + ", " + e + m + "<br />" + a.name_value_list.alt_address_country.value + "</h4>";
							b = $("<a/>", {
								href: "http://maps.google.com/?q=" + b + "%20" + f + "%20" + e + "%20" + m + "&t=m&z=13",
								rel: "external",
								target: "_new",
								style: "text-decoration:none;color:#444;"
							});
							b.append("<p><br />"+RES_OTHER_ADDRESS_LABEL+"</p>");
							b.append(d);
							c.append(b);
							$("#ViewLeadDetailsPageDetailsList").append(c)
						}
						if (a.name_value_list.email1 !== undefined && a.name_value_list.email1.value !==
							"") {
							c = $("<li/>");
							d = "<h4>" + a.name_value_list.email1.value + "</h4>";
							b = $("<a/>", {
								href: "mailto:" + a.name_value_list.email1.value,
								rel: "external",
								style: "text-decoration:none;color:#444;"
							});
							b.append("<p><br />"+RES_EMAIL_ADDRESS_LABEL+"</p>");
							b.append(d);
							c.append(b);
							$("#ViewLeadDetailsPageDetailsList").append(c)
						}
						a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_DESCRIPTION_LABEL+"<p><h4>" + a.name_value_list.description.value + "</h4></li>");
						$("#ViewLeadDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_MORE_INFORMATION_LABEL+'</li>');
						a.name_value_list.status !== undefined && a.name_value_list.status.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_STATUS_LABEL+"<p><h4>" + status2[a.name_value_list.status.value] + "</h4></li>");
						a.name_value_list.lead_source !== undefined && a.name_value_list.lead_source.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_LEAD_SOURCE_LABEL+"<p><h4>" + sources[a.name_value_list.lead_source.value] + "</h4></li>");
						a.name_value_list.status_description !== undefined && a.name_value_list.status_description.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_DESCRIPTION_STATUS+"<p><h4>" +
							a.name_value_list.status_description.value + "</h4></li>");
						a.name_value_list.lead_source_description !== undefined && a.name_value_list.lead_source_description.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_DESCRIPTION_SOURCE+"<p><h4>" + a.name_value_list.lead_source_description.value + "</h4></li>");
						a.name_value_list.opportunity_amount !== undefined && a.name_value_list.opportunity_amount.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_OPPORTUNITY_AMOUNT_LABEL+"<p><h4>€" + parseFloat(a.name_value_list.opportunity_amount.value).toFixed(2) +
							"</h4></li>");
						a.name_value_list.refered_by !== undefined && a.name_value_list.refered_by.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_LEAD_SOURCE_LABEL+"<p><h4>" + a.name_value_list.refered_by.value + "</h4></li>");
						a.name_value_list.campaign_name !== undefined && a.name_value_list.campaign_name.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br /><p><h4>"+RES_CAMPAIGN_LABEL+":&nbsp;" + a.name_value_list.campaign_name.value + "</h4></li>");
						$("#ViewLeadDetailsPageDetailsList").append('<li data-role="list-divider">Otra información</li>');
						a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_CONTACT_REPORTS_TO_LABEL+"</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
						a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_MODIFIED_LABEL+"</p><h4>" + change(a.name_value_list.date_modified.value) + RES_BY + a.name_value_list.modified_by_name.value +
							"</h4></li>");
						a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_CREATED_LABEL+"</p><h4>" + change(a.name_value_list.date_entered.value) + RES_BY + a.name_value_list.created_by_name.value + "</h4></li>");
						a.name_value_list.do_not_call.value == "true" && toast(RES_DO_NOT_CALL)
					}
				$("#ViewLeadDetailsPageDetailsList").listview("refresh")
			}
		});
		getLeadRelatedCallsInsetList();
		getLeadRelatedMeetingsInsetList();
		getLeadRelatedTasksInsetList()
	}

	function getLeadRelatedCallsInsetList() {
		$("#ViewLeadDetailsPageCallsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","module_id":"' + CurrentLeadId + '","link_field_name":"calls","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewLeadDetailsPageCallsListUl").append('<li data-role="list-divider">'+RES_CALLS_LABEL+'</li>');
				a =
					$.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "";
								if (b.name_value_list.status != undefined) {
									e = "<p>" + status2[b.name_value_list.status.value];
									if (b.name_value_list.date_start != undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
									e += "</p>"
								} else e = "<p></p>";
								var m = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentCallId = $(this).data("identity");
										$.mobile.changePage("#ViewCallDetailsPage")
									}
								});
								m.append(f);
								b.name_value_list.status != undefined && m.append(e);
								d.append(m);
								$("#ViewLeadDetailsPageCallsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewLeadDetailsPageCallsListUl").append(a)
					}
				$("#ViewLeadDetailsPageCallsListUl").listview("refresh")
			}
		})
	}

	function getLeadRelatedMeetingsInsetList() {
		$("#ViewLeadDetailsPageMeetingsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","module_id":"' + CurrentLeadId + '","link_field_name":"meetings","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewLeadDetailsPageMeetingsListUl").append('<li data-role="list-divider">'+RES_MEETINGS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "";
								if (b.name_value_list.status != undefined) {
									e = "<p>" + status2[b.name_value_list.status.value];
									if (b.name_value_list.date_start != undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
									e += "</p>"
								} else e = "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentMeetingId = $(this).data("identity");
										$.mobile.changePage("#ViewMeetingDetailsPage")
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewLeadDetailsPageMeetingsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewLeadDetailsPageMeetingsListUl").append(a)
					}
				$("#ViewLeadDetailsPageMeetingsListUl").listview("refresh")
			}
		})
	}

	function getLeadRelatedTasksInsetList() {
		$("#ViewLeadDetailsPageTasksListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","module_id":"' + CurrentLeadId + '","link_field_name":"tasks","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewLeadDetailsPageTasksListUl").append('<li data-role="list-divider">'+RES_TASKS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "";
								if (b.name_value_list.status != undefined) {
									e = "<p>" + status2[b.name_value_list.status.value];
									if (b.name_value_list.date_start != undefined) e += "<br/>" + change(b.name_value_list.date_start.value);
									e += "</p>"
								} else e = "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentTaskId = $(this).data("identity");
										$.mobile.changePage("#ViewTaskDetailsPage")
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewLeadDetailsPageTasksListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewLeadDetailsPageTasksListUl").append(a)
					}
				$("#ViewLeadDetailsPageTasksListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function SugarCrmGetCallsListFromServer(a) {
		if ($("#AllCallsListDiv li").length === 0 || CallsListCurrentOffset !== a) {
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});
			CallsListCurrentOffset = a;
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_entry_list",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","query":"","order_by":"date_start desc","offset":' + a + ',"select_fields":"","link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews + ',"deleted":0}'
			}, function (c) {
				if (c != undefined) {
					c =
						$.parseJSON(JSON.stringify(c, undefined, 2));
					if (c.name !== undefined && c.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (c != undefined && c.entry_list != undefined) {
						if (c.result_count === 0) CallsListCurrentOffset = CallsListPrevOffset + RowsPerPageInListViews;
						else if (c.next_offset === 0) CallsListCurrentOffset = 0;
						if (c.next_offset == 0 || c.result_count == 0) toast(""+RES_NOTHING_TO_SHOW+"");
						else {
							$("#AllCallsListDiv li").remove();
							var b = 0;
							for (b = 0; b <= c.entry_list.length; b++)
								if (c.entry_list[b] !=
									undefined) {
									var d = c.entry_list[b],
										f = $("<li/>"),
										e = "<p>" + change(d.name_value_list.date_start.value) + "</p>",
										m = "<h4>" + d.name_value_list.name.value + "</h4>",
										g = "<p>" + status2[d.name_value_list.direction.value] + " " + status2[d.name_value_list.status.value] + "</p>";
									d = $("<a/>", {
										href: "#",
										"data-identity": d.id,
										click: function () {
											CurrentCallId = $(this).data("identity");
											$.mobile.changePage("#ViewCallDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetCallDetails()
										}
									});
									d.append(m);
									d.append(g);
									d.append(e);
									f.append(d);
									$("#AllCallsListDiv").append(f)
								}
							$("#AllCallsListDiv").listview("refresh");
							CallsListNextOffset = c.next_offset;
							CallsListPrevOffset = a - RowsPerPageInListViews
						}
					}
				}
				$.mobile.loading( "hide" );
			})
		}
	}

	function SugarCrmGetCallDetails() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#CallNameH1").html("");
		$("#CallSubjectP").text("");
		$("#ViewCallDetailsPageDetailsList li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","id":"' + CurrentCallId + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (a) {
			if (a != undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId =
						"";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list[0] != undefined) {
						a = a.entry_list[0];
						$("#CallNameH1").html(a.name_value_list.name.value);
						var c = status2[a.name_value_list.direction.value] + " " + status2[a.name_value_list.status.value];
						$("#CallSubjectP").text(c);
						$("#ViewCallDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_CALL_LABEL+'</li>');
						a.name_value_list.date_start !== undefined && a.name_value_list.date_start.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />"+RES_START_DATE_TIME_LABEL+"</p><h4>" +
							change(a.name_value_list.date_start.value) + "</h4></li>");
						a.name_value_list.duration_hours !== undefined && a.name_value_list.duration_hours.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />"+RES_DURATION_LABEL+"</p><h4>" + a.name_value_list.duration_hours.value + "h&nbsp;" + a.name_value_list.duration_minutes.value + "m&nbsp;</h4></li>");
						a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />"+RES_DESCRIPTION_LABEL+"</p><h4>" + a.name_value_list.description.value +
							"</h4></li>");
						$("#ViewCallDetailsPageDetailsList").append('<li data-role="list-divider">Otra información</li>');
						a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />"+RES_ASSIGNED_TO_LABEL+"</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
						a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_MODIFIED_LABEL+"</p><h4>" +
							change(a.name_value_list.date_modified.value) + RES_BY + a.name_value_list.modified_by_name.value + "</h4></li>");
						a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_CREATED_LABEL+"</p><h4>" + change(a.name_value_list.date_entered.value) + RES_BY + a.name_value_list.created_by_name.value + "</h4></li>");
						a.name_value_list.parent_id !== undefined && a.name_value_list.parent_id.value !== "" ? getCallParentDetails(a.name_value_list.parent_type.value,
							a.name_value_list.parent_id.value) : $("#ViewCallDetailsPageDetailsList").listview("refresh")
					}
			}
		});
		getCallRelatedContactsInsetList();
		getCallRelatedLeadsInsetList();
		getCallRelatedNotesInsetList()
	}

	function getCallParentDetails(a, c) {
		var b = "<h4>" + a + ":&nbsp;";
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"' + a + '","id":"' + c + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (d) {
			d = $.parseJSON(JSON.stringify(d, undefined, 2));
			if (d.name !== undefined && d.name === "Invalid Session ID") {
				SugarSessionId = "";
				$.mobile.changePage("#LoginPage")
			}
			if (d != undefined && d.entry_list != undefined)
				if (d.entry_list[0] != undefined) {
					d = d.entry_list[0];
					b += d.module_name == "Leads" || d.module_name == "Contacts" ? d.name_value_list.first_name.value + " " + d.name_value_list.last_name.value : d.name_value_list.name.value
				}
			b += "</h4>";
			$("#ViewCallDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_LINKED_WITH+'</li>');
			$("#ViewCallDetailsPageDetailsList").append("<li>" + b + "</li>");
			$("#ViewCallDetailsPageDetailsList").listview("refresh")
		})
	}

	function getCallRelatedContactsInsetList() {
		$("#ViewCallDetailsPageContactsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","module_id":"' + CurrentCallId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewCallDetailsPageContactsListUl").append('<li data-role="list-divider">'+RES_CONTACTS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.first_name.value + "&nbsp;" + b.name_value_list.last_name.value + "</h4>",
									e = "<p>" + b.name_value_list.title.value + "</p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentContactId =
											$(this).data("identity");
										$.mobile.changePage("#ViewContactDetailsPage");
										$.mobile.loading( "show", {
												text: RES_LOADER_MSG,
												textonly: textOnly,
												textVisible: textVisible
										});
										SugarCrmGetContactDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewCallDetailsPageContactsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewCallDetailsPageContactsListUl").append(a)
					}
				$("#ViewCallDetailsPageContactsListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function getCallRelatedUsersInsetList() {
		$("#ViewCallDetailsPageUsersListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","module_id":"' + CurrentCallId + '","link_field_name":"users","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewCallDetailsPageUsersListUl").append('<li data-role="list-divider">'+RES_USERS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<p>" + b.name_value_list.title.value + "</p>";
								d.append("<h4>" + b.name_value_list.first_name.value + "&nbsp;" + b.name_value_list.last_name.value + "</h4>");
								d.append(f);
								$("#ViewCallDetailsPageUsersListUl").append(d)
							}
					} else {
						a =
							$("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewCallDetailsPageUsersListUl").append(a)
					}
				$("#ViewCallDetailsPageUsersListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function getCallRelatedLeadsInsetList() {
		$("#ViewCallDetailsPageLeadsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","module_id":"' + CurrentCallId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewCallDetailsPageLeadsListUl").append('<li data-role="list-divider">'+RES_LEADS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.first_name.value + " " + b.name_value_list.last_name.value + "</h4>",
									e = "";
								e = b.name_value_list.title != undefined ? "<p>" + b.name_value_list.title.value + "</p>" : "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentLeadId = $(this).data("identity");
										$.mobile.changePage("#ViewLeadDetailsPage");
										$.mobile.loading( "show", {
												text: RES_LOADER_MSG,
												textonly: textOnly,
												textVisible: textVisible
										});
										SugarCrmGetLeadDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewCallDetailsPageLeadsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewCallDetailsPageLeadsListUl").append(a)
					}
				$("#ViewCallDetailsPageLeadsListUl").listview("refresh")
			}
		})
	}

	function getCallRelatedNotesInsetList() {
		$("#ViewCallDetailsPageNotesListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","module_id":"' + CurrentCallId + '","link_field_name":"notes","related_module_query":"","related_fields":["id","name","description","date_entered"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewCallDetailsPageNotesListUl").append('<li data-role="list-divider">'+RES_NOTES_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "";
								e = b.name_value_list.description != undefined ? "<p>" + b.name_value_list.description.value + "</p>" : "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentNoteId =
											$(this).data("identity");
										$.mobile.changePage("#ViewNoteDetailsPage");
										$.mobile.loading( "show", {
												text: RES_LOADER_MSG,
												textonly: textOnly,
												textVisible: textVisible
										});
										SugarCrmGetNoteDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewCallDetailsPageNotesListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewCallDetailsPageNotesListUl").append(a)
					}
				$("#ViewCallDetailsPageNotesListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function SugarCrmGetMeetingsListFromServer(a) {
		if ($("#AllMeetingsListDiv li").length === 0 || MeetingsListCurrentOffset !== a || toUpdateMeetings === true) {
			
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});
			MeetingsListCurrentOffset = a;
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_entry_list",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","query":"","order_by":"date_start desc","offset":' + a + ',"select_fields":"","link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews + ',"deleted":0}'
			}, function (c) {
				if (c != undefined) {
					c = $.parseJSON(JSON.stringify(c, undefined, 2));
					if (c.name !== undefined && c.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (c !== undefined && c.entry_list !== undefined) {
						if (c.result_count === 0) MeetingsListCurrentOffset = MeetingsListPrevOffset + RowsPerPageInListViews;
						else if (c.next_offset === 0) MeetingsListCurrentOffset = 0;
						if (c.next_offset == 0 || c.result_count == 0) toast(""+RES_NOTHING_TO_SHOW+"");
						else {
							$("#AllMeetingsListDiv li").remove();
							var b = 0;
							for (b = 0; b <= c.entry_list.length; b++)
								if (c.entry_list[b] != undefined) {
									var d = c.entry_list[b],
										f = $("<li/>"),
										e = "<h4>" + d.name_value_list.name.value + "</h4>";
										g = "<p>" + status2[d.name_value_list.status.value] +" ";

									var m = g + " " + change(d.name_value_list.date_start.value) + "</p>";
									d = $("<a/>", {
										href: "#",
										"data-identity": d.id,
										click: function () {
											CurrentMeetingId = $(this).data("identity");
											$.mobile.changePage("#ViewMeetingDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetMeetingDetails()
										}
									});
									d.append(e);
									d.append(m);
									f.append(d);
									$("#AllMeetingsListDiv").append(f)
								}
							$("#AllMeetingsListDiv").listview("refresh");
							MeetingsListNextOffset =
								c.next_offset;
							MeetingsListPrevOffset = a - RowsPerPageInListViews
						}
						toUpdateMeetings = false;
					}
				}
				$.mobile.loading( "hide" );
			})
		}
	}

	function SugarCrmGetMeetingDetails() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#MeetingNameH1").html("");
		$("#MeetingSubjectP").text("");
		$("#ViewMeetingDetailsPageDetailsList li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","id":"' + CurrentMeetingId + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (a) {
			if (a != undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId =
						"";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list[0] != undefined) {
						a = a.entry_list[0];
						CurrentMeeting = a;
						$("#MeetingNameH1").html(a.name_value_list.name.value);
						var c = status2[a.name_value_list.status.value];

						$("#MeetingSubjectP").text(c);
						$("#ViewMeetingDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_MEETING_LABEL+'</li>');
						a.name_value_list.date_start !== undefined && a.name_value_list.date_start.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />"+RES_START_DATE_TIME_LABEL+"</p><h4>" +
							change(a.name_value_list.date_start.value) + "</h4></li>");
						a.name_value_list.duration_hours !== undefined && a.name_value_list.duration_hours.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />"+RES_DURATION_LABEL+"</p><h4>" + a.name_value_list.duration_hours.value + "h&nbsp;" + a.name_value_list.duration_minutes.value + "m&nbsp;</h4></li>");
						a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />"+RES_DESCRIPTION_LABEL+"</p><h4>" + a.name_value_list.description.value +
							"</h4></li>");
						$("#ViewMeetingDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_MORE_INFORMATION_LABEL+'</li>');
						a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />"+RES_ASSIGNED_TO_LABEL+"</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
						a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_MODIFIED_LABEL+"</p><h4>" +
							change(a.name_value_list.date_modified.value) + RES_BY + a.name_value_list.modified_by_name.value + "</h4></li>");
						a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_CREATED_LABEL+"</p><h4>" + change(a.name_value_list.date_entered.value) + RES_BY + a.name_value_list.created_by_name.value + "</h4></li>");
						a.name_value_list.parent_id !== undefined && a.name_value_list.parent_id.value !== "" ? getMeetingParentDetails(a.name_value_list.parent_type.value,
							a.name_value_list.parent_id.value) : $("#ViewMeetingDetailsPageDetailsList").listview("refresh")
					}
			}
		});
		getMeetingRelatedContactsInsetList();
		getMeetingRelatedLeadsInsetList();
		getMeetingRelatedNotesInsetList()
	}

	function getMeetingParentDetails(a, c) {
		var b = "<h4>" + a + ":&nbsp;";
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"' + a + '","id":"' + c + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (d) {
			d = $.parseJSON(JSON.stringify(d, undefined, 2));
			if (d.name !== undefined && d.name === "Invalid Session ID") {
				SugarSessionId = "";
				$.mobile.changePage("#LoginPage")
			}
			if (d != undefined && d.entry_list != undefined)
				if (d.entry_list[0] != undefined) {
					d = d.entry_list[0];
					b += d.module_name == "Leads" || d.module_name == "Contacts" ? d.name_value_list.first_name.value + " " + d.name_value_list.last_name.value : d.name_value_list.name.value
				}
			b += "</h4>";
			$("#ViewMeetingDetailsPageDetailsList").append('<li data-role="list-divider">Enlazado con</li>');
			$("#ViewMeetingDetailsPageDetailsList").append("<li>" + b + "</li>");
			$("#ViewMeetingDetailsPageDetailsList").listview("refresh")
		})
	}

	function getMeetingRelatedContactsInsetList() {
		$("#ViewMeetingDetailsPageContactsListUl li").remove();
		SugarSessionId == "" && $.mobile.changePage("#HomePage");
		$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_relationships",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","module_id":"' + CurrentMeetingId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
			},
			function (a) {
				if (a != undefined) {
					$("#ViewMeetingDetailsPageContactsListUl").append('<li data-role="list-divider">Contactos</li>');
					a = $.parseJSON(JSON.stringify(a, undefined, 2));
					if (a.name !== undefined && a.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (a != undefined && a.entry_list != undefined)
						if (a.entry_list.length > 0) {
							var c = 0;
							for (c = 0; c <= a.entry_list.length; c++)
								if (a.entry_list[c] != undefined) {
									var b = a.entry_list[c],
										d = $("<li/>"),
										f = "<h4>" + b.name_value_list.first_name.value + "&nbsp;" + b.name_value_list.last_name.value +
											"</h4>",
										e = "<p>" + b.name_value_list.title.value + "</p>";
									b = $("<a/>", {
										href: "#",
										"data-identity": b.id,
										click: function () {
											CurrentContactId = $(this).data("identity");
											$.mobile.changePage("#ViewContactDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetContactDetails()
										}
									});
									b.append(f);
									b.append(e);
									d.append(b);
									$("#ViewMeetingDetailsPageContactsListUl").append(d)
								}
						} else {
							a = $("<li/>");
							a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
							$("#ViewMeetingDetailsPageContactsListUl").append(a)
						}
					$("#ViewMeetingDetailsPageContactsListUl").listview("refresh")
				}
				$.mobile.loading( "hide" );
			})
	}

	function getMeetingRelatedUsersInsetList() {
		$("#ViewMeetingDetailsPageUsersListUl li").remove();
		SugarSessionId == "" && $.mobile.changePage("#HomePage");
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","module_id":"' + CurrentMeetingId + '","link_field_name":"users","related_module_query":"","related_fields":"","related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewMeetingDetailsPageUsersListUl").append('<li data-role="list-divider">Usuarios</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<p>" + b.name_value_list.title.value + "</p>";
								d.append("<h4>" + b.name_value_list.first_name.value + "&nbsp;" + b.name_value_list.last_name.value + "</h4>");
								d.append(f);
								$("#ViewMeetingDetailsPageUsersListUl").append(d)
							}
					} else {
						a =
							$("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewMeetingDetailsPageUsersListUl").append(a)
					}
				$("#ViewMeetingDetailsPageUsersListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function getMeetingRelatedLeadsInsetList() {
		$("#ViewMeetingDetailsPageLeadsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","module_id":"' + CurrentMeetingId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewMeetingDetailsPageLeadsListUl").append('<li data-role="list-divider">'+RES_LEADS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.first_name.value + " " + b.name_value_list.last_name.value + "</h4>",
									e = "";
								e = b.name_value_list.title != undefined ? "<p>" + b.name_value_list.title.value + "</p>" : "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentLeadId = $(this).data("identity");
										$.mobile.changePage("#ViewLeadDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetLeadDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewMeetingDetailsPageLeadsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewMeetingDetailsPageLeadsListUl").append(a)
					}
				$("#ViewMeetingDetailsPageLeadsListUl").listview("refresh")
			}
		})
	}

	function getMeetingRelatedNotesInsetList() {
		$("#ViewMeetingDetailsPageNotesListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","module_id":"' + CurrentMeetingId + '","link_field_name":"notes","related_module_query":"","related_fields":["id","name","description","date_entered"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewMeetingDetailsPageNotesListUl").append('<li data-role="list-divider">'+RES_NOTES_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.name.value + "</h4>",
									e = "";
								e = b.name_value_list.description != undefined ? "<p>" + b.name_value_list.description.value + "</p>" : "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentNoteId =
											$(this).data("identity");
										$.mobile.changePage("#ViewNoteDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetNoteDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewMeetingDetailsPageNotesListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewMeetingDetailsPageNotesListUl").append(a)
					}
				$("#ViewMeetingDetailsPageNotesListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function SugarCrmGetTasksListFromServer(a) {
		if ($("#AllTasksListDiv li").length === 0 || TasksListCurrentOffset !== a || toUpdateTasks === true) {
			toUpdateTasks = false;
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});
			TasksListCurrentOffset = a;
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_entry_list",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","query":"","order_by":"date_start desc","offset":' + a + ',"select_fields":"","link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews + ',"deleted":0}'
			}, function (c) {
				if (c != undefined) {
					c =
						$.parseJSON(JSON.stringify(c, undefined, 2));
					if (c.name !== undefined && c.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (c != undefined && c.entry_list != undefined) {
						if (c.result_count === 0) TasksListCurrentOffset = TasksListPrevOffset + RowsPerPageInListViews;
						else if (c.next_offset === 0) TasksListCurrentOffset = 0;
						if (c.next_offset == 0 || c.result_count == 0) toast(""+RES_NOTHING_TO_SHOW+"");
						else {
							$("#AllTasksListDiv li").remove();
							var b = 0;
							for (b = 0; b <= c.entry_list.length; b++)
								if (c.entry_list[b] !=
									undefined) {
									var d = c.entry_list[b],
										f = $("<li/>"),
										e = "<h4>" + d.name_value_list.name.value + "</h4>",
										m = "<p>" + status2[d.name_value_list.status.value] + " - " + change(d.name_value_list.date_due.value) + "</p>";
									d = $("<a/>", {
										href: "#",
										"data-identity": d.id,
										click: function () {
											CurrentTaskId = $(this).data("identity");
											$.mobile.changePage("#ViewTaskDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetTaskDetails()
										}
									});
									d.append(e);
									d.append(m);
									f.append(d);
									$("#AllTasksListDiv").append(f)
								}
							$("#AllTasksListDiv").listview("refresh");
							TasksListNextOffset = c.next_offset;
							TasksListPrevOffset = a - RowsPerPageInListViews
						}
					}
				}
				$.mobile.loading( "hide" );
			})
		}
	}

	function SugarCrmGetTaskDetails() {
		$.mobile.loading( "show", {
				text: RES_LOADER_MSG,
				textonly: textOnly,
				textVisible: textVisible
		});
		$("#TaskNameH1").html("");
		$("#TaskSubjectP").text("");
		$("#ViewTaskDetailsPageDetailsList li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","id":"' + CurrentTaskId + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (a) {
			if (a != undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId =
						"";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list[0] != undefined) {
						a = a.entry_list[0];
						CurrentTask = a;
						$("#TaskNameH1").html(a.name_value_list.name.value);
						var c = status2[a.name_value_list.status.value];
						$("#TaskSubjectP").text(c);
						$("#ViewTaskDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_TASK_LABEL+'</li>');
						a.name_value_list.date_due !== undefined && a.name_value_list.date_due.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />"+RES_DATE+"</p><h4>" + change(a.name_value_list.date_due.value) +
							"</h4></li>");
						a.name_value_list.duration_hours !== undefined && a.name_value_list.duration_hours.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />"+RES_DURATION_LABEL+"</p><h4>" + a.name_value_list.duration_hours.value + "h&nbsp;" + a.name_value_list.duration_minutes.value + "m&nbsp;</h4></li>");
						a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />"+RES_DESCRIPTION_LABEL+"</p><h4>" + a.name_value_list.description.value + "</h4></li>");
						$("#ViewTaskDetailsPageDetailsList").append('<li data-role="list-divider">Otra información</li>');
						a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />"+RES_ASSIGNED_TO_LABEL+"</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
						a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_MODIFIED_LABEL+"</p><h4>" +
							change(a.name_value_list.date_modified.value) + RES_BY + a.name_value_list.modified_by_name.value + "</h4></li>");
						a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_CREATED_LABEL+"</p><h4>" + change(a.name_value_list.date_entered.value) + RES_BY + a.name_value_list.created_by_name.value + "</h4></li>");
						a.name_value_list.parent_id !== undefined && a.name_value_list.parent_id.value !== "" ? getTaskParentDetails(a.name_value_list.parent_type.value,
							a.name_value_list.parent_id.value) : $("#ViewTaskDetailsPageDetailsList").listview("refresh")
					}
			}
			getTaskRelatedContactsInsetList();
			getTaskRelatedLeadsInsetList()
		})
	}

	function getTaskParentDetails(a, c) {
		var b = "<h4>" + a + ":&nbsp;";
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"' + a + '","id":"' + c + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (d) {
			d = $.parseJSON(JSON.stringify(d, undefined, 2));
			if (d.name !== undefined && d.name === "Invalid Session ID") {
				SugarSessionId = "";
				$.mobile.changePage("#LoginPage")
			}
			if (d != undefined && d.entry_list != undefined)
				if (d.entry_list[0] != undefined) {
					d = d.entry_list[0];
					b += d.module_name == "Leads" || d.module_name == "Contacts" ? d.name_value_list.first_name.value + " " + d.name_value_list.last_name.value : d.name_value_list.name.value
				}
			b += "</h4>";
			$("#ViewTaskDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_LINKED_WITH+'</li>');
			$("#ViewTaskDetailsPageDetailsList").append("<li>" + b + "</li>");
			$("#ViewTaskDetailsPageDetailsList").listview("refresh")
		})
	}

	function getTaskRelatedContactsInsetList() {
		$("#ViewTaskDetailsPageContactsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","module_id":"' + CurrentTaskId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewTaskDetailsPageContactsListUl").append('<li data-role="list-divider">'+RES_CONTACTS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.first_name.value + "&nbsp;" + b.name_value_list.last_name.value + "</h4>",
									e = "<p>" + b.name_value_list.title.value + "</p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentContactId =
											$(this).data("identity");
										$.mobile.changePage("#ViewContactDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetContactDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewTaskDetailsPageContactsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewTaskDetailsPageContactsListUl").append(a)
					}
				$("#ViewTaskDetailsPageContactsListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function getTaskRelatedUsersInsetList() {
		$("#ViewTaskDetailsPageUsersListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","module_id":"' + CurrentTaskId + '","link_field_name":"users","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewTaskDetailsPageUsersListUl").append('<li data-role="list-divider">'+RES_USERS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<p>" + b.name_value_list.title.value + "</p>";
								d.append("<h4>" + b.name_value_list.first_name.value + "&nbsp;" + b.name_value_list.last_name.value + "</h4>");
								d.append(f);
								$("#ViewTaskDetailsPageUsersListUl").append(d)
							}
					} else {
						a =
							$("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewTaskDetailsPageUsersListUl").append(a)
					}
				$("#ViewTaskDetailsPageUsersListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function getTaskRelatedLeadsInsetList() {
		$("#ViewTaskDetailsPageLeadsListUl li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_relationships",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","module_id":"' + CurrentTaskId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
		}, function (a) {
			if (a != undefined) {
				$("#ViewTaskDetailsPageLeadsListUl").append('<li data-role="list-divider">'+RES_LEADS_LABEL+'</li>');
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a != undefined && a.entry_list != undefined)
					if (a.entry_list.length > 0) {
						var c = 0;
						for (c = 0; c <= a.entry_list.length; c++)
							if (a.entry_list[c] != undefined) {
								var b = a.entry_list[c],
									d = $("<li/>"),
									f = "<h4>" + b.name_value_list.first_name.value + " " + b.name_value_list.last_name.value + "</h4>",
									e = "";
								e = b.name_value_list.title != undefined ? "<p>" + b.name_value_list.title.value + "</p>" : "<p></p>";
								b = $("<a/>", {
									href: "#",
									"data-identity": b.id,
									click: function () {
										CurrentLeadId = $(this).data("identity");
										$.mobile.changePage("#ViewLeadDetailsPage");
										$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
										SugarCrmGetLeadDetails()
									}
								});
								b.append(f);
								b.append(e);
								d.append(b);
								$("#ViewTaskDetailsPageLeadsListUl").append(d)
							}
					} else {
						a = $("<li/>");
						a.append("<h4>"+RES_NOTHING_TO_SHOW+"</h4>");
						$("#ViewTaskDetailsPageLeadsListUl").append(a)
					}
				$("#ViewTaskDetailsPageLeadsListUl").listview("refresh")
			}
			$.mobile.loading( "hide" );
		})
	}

	function SugarCrmGetNotesListFromServer(a) {
		if ($("#AllNotesListDiv li").length === 0 || NotesListCurrentOffset !== a) {
			$.mobile.loading( "show", {
					text: RES_LOADER_MSG,
					textonly: textOnly,
					textVisible: textVisible
			});
			NotesListCurrentOffset = a;
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "get_entry_list",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Notes","query":"","order_by":"date_start desc","offset":' + a + ',"select_fields":"","link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews + ',"deleted":0}'
			}, function (c) {

				if (c != undefined) {
					c =
						$.parseJSON(JSON.stringify(c, undefined, 2));
					if (c.name !== undefined && c.name === "Invalid Session ID") {
						SugarSessionId = "";
						$.mobile.changePage("#LoginPage")
					}
					if (c != undefined && c.entry_list != undefined) {
						if (c.result_count === 0) NotesListCurrentOffset = NotesListPrevOffset + RowsPerPageInListViews;
						else if (c.next_offset === 0) NotesListCurrentOffset = 0;
						if (c.next_offset == 0 || c.result_count == 0) toast(""+RES_NOTHING_TO_SHOW+"");
						else {
							$("#AllNotesListDiv li").remove();
							var b = 0;
							for (b = 0; b <= c.entry_list.length; b++)
								if (c.entry_list[b] !=
									undefined) {
									var d = c.entry_list[b],
										f = $("<li/>"),
										e = "<h4>" + d.name_value_list.name.value + "</h4>",
										m = "<p>" + d.name_value_list.description.value.substring(0,50) + "</p>";
									d = $("<a/>", {
										href: "#",
										"data-identity": d.id,
										click: function () {
											CurrentNoteId = $(this).data("identity");
											$.mobile.changePage("#ViewNoteDetailsPage");
											$.mobile.loading( "show", {
													text: RES_LOADER_MSG,
													textonly: textOnly,
													textVisible: textVisible
											});
											SugarCrmGetNoteDetails()
										}
									});
									d.append(e);
									d.append(m);
									f.append(d);
									$("#AllNotesListDiv").append(f)
								}
							$("#AllNotesListDiv").listview("refresh");
							NotesListNextOffset = c.next_offset;
							NotesListPrevOffset = a - RowsPerPageInListViews
						}
					}
				}
				$.mobile.loading( "hide" );
			})
		}
	}

	function SugarCrmGetNoteDetails() {
		$("#NoteSubjectH1").html("");
		$("#NoteTextP").text("");
		$("#ViewNoteDetailsPageDetailsList li").remove();
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "get_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Notes","id":"' + CurrentNoteId + '","select_fields":"","link_name_to_fields_array":""}'
		}, function (a) {
			if (a != undefined) {
				a = $.parseJSON(JSON.stringify(a, undefined, 2));
				if (a.name !== undefined && a.name === "Invalid Session ID") {
					SugarSessionId = "";
					$.mobile.changePage("#LoginPage")
				}
				if (a !=
					undefined && a.entry_list != undefined)
					if (a.entry_list[0] != undefined) {
						a = a.entry_list[0];
						$("#NoteSubjectH1").html(a.name_value_list.name.value);
						var c = a.name_value_list.description.value;
						$("#NoteTextP").text(c);
						$("#ViewNoteDetailsPageDetailsList").append('<li data-role="list-divider">'+RES_MORE_INFORMATION_LABEL+'</li>');
						a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewNoteDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_MODIFIED_LABEL+"</p><h4>" + change(a.name_value_list.date_modified.value) +
							RES_BY + a.name_value_list.modified_by_name.value + "</h4></li>");
						a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewNoteDetailsPageDetailsList").append("<li><p><br />"+RES_DATE_CREATED_LABEL+"</p><h4>" + change(a.name_value_list.date_entered.value) + RES_BY + a.name_value_list.created_by_name.value + "</h4></li>");
						$("#ViewNoteDetailsPageDetailsList").append('<li data-role="list-divider">Archivo adjunto</li>');
						a.name_value_list.id !== undefined && a.name_value_list.id.value !== "" && $("#ViewNoteDetailsPageDetailsList").append("<li><a href='"+sugarURL+"/index.php?entryPoint=download&id="+ a.name_value_list.id.value + "&type=Notes' target='_blank'>" + a.name_value_list.filename.value + "</a></li>");
						$("#ViewNoteDetailsPageDetailsList").listview("refresh")
					}
			}
			$.mobile.loading( "hide" );
		})
	}


	// ***********************************************************************************************************************
	// ** CÓDIGO DE MODIFICACIÓN Y DE CREACIÓN					  															**
	// ***********************************************************************************************************************

	var editionEnabled = true;
	var lastNewNoteId = "";
	var imageFile = null;
	var CurrentAccount ="";
	var CurrentContact ="";
	var CurrentLead ="";
	var CurrentTask = "";
	var CurrentOpportunity ="";
	var CurrentMeeting = "";

	// Métodos onclick de boton de edición
	$("a#SaveNewNote").click(function(event){ SugarCrmSetNewNote(); });
	$("a#SaveNewAccount").click(function(event){ SugarCrmSetNewAccount(CurrentAccountId); }); 
	$("a#EditAccountDetails").click(function(event){ SugarCrmGetAccountData(); }); 
	$("a#SaveNewContact").click(function(event){ SugarCrmSetNewContact(CurrentContactId); }); 
	$("a#EditContactDetails").click(function(event){ SugarCrmGetContactData(); });
	$("a#SaveNewLead").click(function(event){ SugarCrmSetNewLead(CurrentLeadId); }); 
	$("a#EditLeadDetails").click(function(event){ SugarCrmGetLeadData(); });
	
	$("a#ButtonCreateNewAccount").click(function(event){ SugarCrmSetDataEmpty(); });
	$("a#ButtonCreateNewLead").click(function(event){ SugarCrmSetDataEmpty(); });
	$("a#ButtonCreateNewContact").click(function(event){ SugarCrmSetDataEmpty(); });
	$("a#ButtonCreateNewTask").click(function(event){ SugarCrmSetDataEmpty(); });
	$("a#ButtonCreateNewOpportunity").click(function(event){ SugarCrmSetDataEmptyOpportunity(); });
	$("a#ButtonCreateNewMeeting").click(function(event){ SugarCrmSetDataEmptyMeeting(); });

	$("#autocompleteNewContactTask").on("listviewbeforefilter", function(event){ 
		SugarCrmGetContactsTask();
	});
	$("a#SaveNewTask").click(function(event){ SugarCrmSetNewTask(CurrentTaskId); });
	$("a#EditTaskDetails").click(function(event){
		SugarCrmGetTaskData();
	});

	$("#NewOpportunityAccountName").on("listviewbeforefilter", function(event){ SugarCrmGetAccountsOpportunities(); });
	$("a#SaveNewOpportunity").click(function(event){ SugarCrmSetNewOpportunity(CurrentOpportunityId); });
	$("a#EditOpportunityDetails").click(function(event){ SugarCrmGetOpportunityData(); });

	$("a#SaveNewMeeting").click(function(event){ SugarCrmSetNewMeeting(CurrentMeetingId); });
	$("a#EditMeetingDetails").click(function(event){ SugarCrmGetMeetingData(); });

   	// Método onchange de imagen
   	$('#imageInput').on('change', function() {
   		
   		var fileInput = document.getElementById('imageInput');	    	
	    
   		var file = fileInput.files[0]; // MegaPixImage constructor accepts File/Blob object.
	    var mpImg = new MegaPixImage(file);

	    // Render resized image into image element using quality option.
	    // Quality option is valid when rendering into image element.
	    var resImg = document.getElementById('attachedImage');
	    mpImg.render(resImg, {quality: 0.9 });
	    imageFile = resImg.toDataURL("image/jpeg", { quality: 0.9 }); // , { maxWidth: 300, maxHeight: 300, quality: 0.8 });
    });


	// Función para registrar la llamada. Parámetros: "Accounts" y Cuenta actual.
	function SugarCrmSetNewCall(a, c) {

		$.get(sugarURL+"/service/v2/rest.php", {
			method: "set_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","name_value_list":[{"name":"name","value":"'+RES_CALL_LOGGED_FROM_CLIENT +'"},{"name":"direction","value":"Outbound"},{"name":"parent_type","value":"' + a + '"},{"name":"parent_id","value":"' + c + '"},{"name":"status","value":"Held"},{"name":"duration_hours","value":0},{"name":"duration_minutes","value":1},{"name":"date_start","value":"' + now(false, true) + '"},{"name":"date_end","value":"' + now(false, true) + '"},{"name":"direction","value":"Outbound"}]}'
		}, function (b) {
			toast(RES_NEW_ITEM_CREATED);
		})
	}

	function SugarCrmSetNewNote()
	{
		var subject = $("input#NewNoteSubject").val();
		var description = $("textarea#NewNoteDescription").val();
		var filename = $("input#imageInput").val();
		
		toast(RES_NEW_ITEM_LOADING);

		$.get(sugarURL+"/service/v2/rest.php", {
			method: "set_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Notes","module_name":"Notes","name_value_list":[{"name":"name","value":"'+ subject +'"},{"name":"description","value":"'+ description +'"},{"name":"parent_type","value":""},{"name":"parent_id","value":""},{"name":"date_entered","value":"' + now(false, true) + '"},{"name":"date_modified","value":"' + now(false, true) + '"},{"name":"created_by","value":"'+SugarCurrentUserId+'"}]}'
		}, function (b) {
			
			lastNewNoteId = b.id;
			console.log(b.id);
			console.log(imageFile);

			
			if (imageFile != null)
			{
				$.get(sugarURL+"/service/v2/rest.php", {
					method: "set_note_attachment",
					input_type: "JSON",
					response_type: "JSON",
					rest_data: '{"session":"' + SugarSessionId + '","note":[{"id":"'+ lastNewNoteId +'","filename":"'+ filename +'","file":"'+ imageFile +'"}]}'
				}, function (c) {																											
					
					// rest_data: '{"session":"' + SugarSessionId + '","note":[{"id":"'+ lastNewNoteId +'","filename":"'+ filename +'","file":"'+ imageFile +'"}]}' // Cabecera del tipo:  data:image/jpeg;base64,000

					// TODO: Comprobar aquí si la transacción fue bien.
					
					// Reset de todos los valores.
					$("input#NewNoteSubject").val("");
					$("textarea#NewNoteDescription").val("");
					$("input#imageInput").val("");
					imageFile = null;

					console.log(c);
					toast(RES_NEW_ITEM_CREATED);
				})
			}
			
		})
	}



	// Función para insertar una nueva empresa
	function SugarCrmSetNewAccount(id)
	{
		var accountName = $("input#NewAccountName").val();
		var phoneOffice = $("input#NewAccountPhoneOffice").val();
		var website = $("input#NewAccountWebsite").val();
		var phoneFax = $("input#NewAccountPhoneFax").val();
		var billingAddressStreet = $("input#NewAccountBillingAddressStreet").val();
		var billingAddressCity = $("input#NewAccountBillingAddressCity").val();
		var billingAddressState = $("input#NewAccountBillingAddressState").val();
		var billingAddressPostalCode = $("input#NewAccountBillingAddressPostalCode").val();
		var billingAddressCountry = $("input#NewAccountBillingAddressCountry").val();
		
		toast(RES_NEW_ITEM_LOADING);
		if(id=="")
		{
			
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","name_value_list":[{"name":"name","value":"'+ accountName +'"},{"name":"phone_office","value":"'+ phoneOffice +'"},{"name":"website","value":"'+ website +'"},{"name":"phone_fax","value":"'+ phoneFax +'"},{"name":"billing_address_street","value":"'+ billingAddressStreet +'"},{"name":"billing_address_city","value":"'+ billingAddressCity +'"},{"name":"billing_address_state","value":"'+ billingAddressState +'"},{"name":"billing_address_postalcode","value":"'+ billingAddressPostalCode +'"},{"name":"billing_address_country","value":"'+ billingAddressCountry +'"},{"name":"date_entered","value":"' + now(false, true) + '"},{"name":"date_modified","value":"' + now(false, true) + '"},{"name":"created_by","value":"'+SugarCurrentUserId+'"}]}'
			}, function (b) {
				toUpdateAccounts = true;
				console.log(b.id);
				//$("input[id^='NewAccount']").val("");
				$("input#NewAccountWebsite").val("http://");
				$.mobile.changePage("#HomePage");
		
			})
		}
		else{
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","name_value_list":[{"name":"name","value":"'+ accountName +'"},{"name":"id","value":"'+ CurrentAccountId +'"},{"name":"phone_office","value":"'+ phoneOffice +'"},{"name":"website","value":"'+ website +'"},{"name":"phone_fax","value":"'+ phoneFax +'"},{"name":"billing_address_street","value":"'+ billingAddressStreet +'"},{"name":"billing_address_city","value":"'+ billingAddressCity +'"},{"name":"billing_address_state","value":"'+ billingAddressState +'"},{"name":"billing_address_postalcode","value":"'+ billingAddressPostalCode +'"},{"name":"billing_address_country","value":"'+ billingAddressCountry +'"},{"name":"date_modified","value":"' + now(false, true) + '"}]}'
			}, function (c) {
				console.log(c.name);
				CurrentAccountId="";
				toUpdateAccounts = true;
				$("input#NewAccountWebsite").val("http://");
				$.mobile.changePage("#HomePage");
				//$( "input[name^='news']" ).val( "news here!" );
					
			})

		}
		$("input[id^='NewAccount']").val("");
	}

	//Funcion que carga los datos de la empresa
	function SugarCrmGetAccountData()
	{
		$("input#NewAccountName").val(CurrentAccount.name_value_list.name.value);		
		$("input#NewAccountPhoneOffice").val(CurrentAccount.name_value_list.phone_office.value);
		$("input#NewAccountWebsite").val(CurrentAccount.name_value_list.website.value);
		$("input#NewAccountPhoneFax").val(CurrentAccount.name_value_list.phone_fax.value);	
		$("input#NewAccountBillingAddressStreet").val(CurrentAccount.name_value_list.billing_address_street.value);
		$("input#NewAccountBillingAddressCity").val(CurrentAccount.name_value_list.billing_address_city.value);
		$("input#NewAccountBillingAddressState").val(CurrentAccount.name_value_list.billing_address_state.value);
		$("input#NewAccountBillingAddressPostalCode").val(CurrentAccount.name_value_list.billing_address_postalcode.value);
		$("input#NewAccountBillingAddressCountry").val(CurrentAccount.name_value_list.billing_address_country.value);

	}

	//Función que borra los datos 
	function SugarCrmSetDataEmpty()
	{
		$("input[id^='New']").val("");	
		$("#autocompleteNewContactTask li").remove();
		$("#NewTaskDescription").val("");
		$('[name=NewTaskPriority]').val( "High" );		
		$('[name=NewTaskStatus]').val( "Not Started" );

		$("input#autocomplete").val("");
		$("input#autocomplete").attr("data-identity", "");

		$("input#autocomplete").removeAttr("data-identity");		

		//refresh
		$('select#NewTaskStatus').selectmenu("refresh",true);		
		$('select#NewTaskPriority').selectmenu("refresh",true);
		

	}
	//borra la pagina de las oportunidades
	function SugarCrmSetDataEmptyOpportunity(){
		$("input[id^='NewOpportunity']").val("");	
		$("input#autocompleteAccounts").val("");

		$("input#autocompleteAccounts").attr("data-identity", "");
		$("input#autocompleteAccounts").removeAttr("data-identity");

		$("textarea#NewOpportunityDescription").val("");

		$('[name=NewOpportunitySalesStage]').val( "Prospecting" );		
		$('[name=NewOpportunityType]').val( "New Business" );		
		$('[name=NewOpportunityLeadSource]').val( "Cold Call" );

		$('select#NewOpportunitySalesStage').selectmenu("refresh",true);
		$('select#NewOpportunityType').selectmenu("refresh",true);
		$('select#NewOpportunityLeadSource').selectmenu("refresh",true);
	}

	//borra la pagina de las reuniones
	function SugarCrmSetDataEmptyMeeting(){
		$("input[id^='NewMeeting']").val("");
		$("textarea#NewMeetingDescription").val("");	
		
		
		$('select#NewMeetingStatus').val("Planned");		
		$('[name=NewMeetingDuration]').val( "" );		
		
		$('select#NewMeetingStatus').selectmenu("refresh",true);
		$('select#NewMeetingDuration').selectmenu("refresh",true);
		
	}

	//Funcion crear nuevo contacto
	function SugarCrmSetNewContact(id)
	{
		var newContactName = $("input#NewContactName").val();
		var newContactPhoneWork = $("input#NewContactPhoneWork").val();
		var newContactPhoneFax = $("input#NewContactPhoneFax").val();
		var newContactPhoneMobile = $("input#NewContactPhoneMobile").val();
		
		var newContactLastName = $("input#NewContactLastName").val();
		var newContactPrimaryAddressStreet = $("input#NewContactPrimaryAddressStreet").val();
		var newContactPrimaryAddressCity = $("input#NewContactPrimaryAddressCity").val();
		var newContactPrimaryAddressState = $("input#NewContactPrimaryAddressState").val();
		var newContactPrimaryAddressPostalCode = $("input#NewContactPrimaryAddressPostalCode").val();
		var newContactPrimaryAddressCountry = $("input#NewContactPrimaryAddressCountry").val();
		
		toast(RES_NEW_ITEM_LOADING);
		if(id=="")
		{
			
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","name_value_list":[{"name":"first_name","value":"'+ newContactName +'"},{"name":"last_name","value":"'+ newContactLastName +'"},{"name":"phone_fax","value":"'+ newContactPhoneFax +'"},{"name":"phone_work","value":"'+ newContactPhoneWork +'"},{"name":"phone_mobile","value":"'+ newContactPhoneMobile +'"},{"name":"primary_address_street","value":"'+ newContactPrimaryAddressStreet +'"},{"name":"primary_address_city","value":"'+ newContactPrimaryAddressCity +'"},{"name":"primary_address_state","value":"'+ newContactPrimaryAddressState +'"},{"name":"primary_address_postalcode","value":"'+ newContactPrimaryAddressPostalCode +'"},{"name":"primary_address_country","value":"'+ newContactPrimaryAddressCountry +'"},{"name":"date_entered","value":"' + now(false, true) + '"},{"name":"date_modified","value":"' + now(false, true) + '"},{"name":"created_by","value":"'+SugarCurrentUserId+'"}]}'
			}, function (b) {
				toUpdateContacts = true;
				console.log(b.id);
				
				$.mobile.changePage("#HomePage");
			})
		}
		else{
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","name_value_list":[{"name":"id","value":"'+ CurrentContactId +'"},{"name":"first_name","value":"'+ newContactName +'"},{"name":"last_name","value":"'+ newContactLastName +'"},{"name":"phone_fax","value":"'+ newContactPhoneFax +'"},{"name":"phone_work","value":"'+ newContactPhoneWork +'"},{"name":"phone_mobile","value":"'+ newContactPhoneMobile +'"},{"name":"primary_address_street","value":"'+ newContactPrimaryAddressStreet +'"},{"name":"primary_address_city","value":"'+ newContactPrimaryAddressCity +'"},{"name":"primary_address_state","value":"'+ newContactPrimaryAddressState +'"},{"name":"primary_address_postalcode","value":"'+ newContactPrimaryAddressPostalCode +'"},{"name":"primary_address_country","value":"'+ newContactPrimaryAddressCountry +'"},{"name":"date_entered","value":"' + now(false, true) + '"},{"name":"date_modified","value":"' + now(false, true) + '"},{"name":"created_by","value":"'+SugarCurrentUserId+'"}]}'
			}, function (c) {
				console.log(c.name);
				CurrentContactId="";
				toUpdateContacts = true;
				$.mobile.changePage("#HomePage");
				
			})

		}
		$("input[id^='NewContact']").val("");
	}

	//Funcion que carga los datos del contacto
	function SugarCrmGetContactData()
	{

		$("input#NewContactName").val(CurrentContact.name_value_list.first_name.value);		
		$("input#NewContactPhoneWork").val(CurrentContact.name_value_list.phone_work.value);
		
		$("input#NewContactPhoneFax").val(CurrentContact.name_value_list.phone_fax.value);	
		$("input#NewContactPhoneMobile").val(CurrentContact.name_value_list.phone_mobile.value);
		$("input#NewContactLastName").val(CurrentContact.name_value_list.last_name.value);
		$("input#NewContactPrimaryAddressStreet").val(CurrentContact.name_value_list.primary_address_street.value);
		$("input#NewContactPrimaryAddressCity").val(CurrentContact.name_value_list.primary_address_city.value);
		$("input#NewContactPrimaryAddressPostalCode").val(CurrentContact.name_value_list.primary_address_postalcode.value);
		$("input#NewContactPrimaryAddressState").val(CurrentContact.name_value_list.primary_address_state.value);
		$("input#NewContactPrimaryAddressCountry").val(CurrentContact.name_value_list.primary_address_country.value);
	}


	//Funcion crear nuevo potencial
	function SugarCrmSetNewLead(id)
	{
		var newLeadName = $("input#NewLeadName").val();
		var newLeadPhoneWork = $("input#NewLeadPhoneWork").val();
		
		var newLeadPhoneFax = $("input#NewLeadPhoneFax").val();
		var newLeadPhoneMobile = $("input#NewLeadPhoneMobile").val();
		
		var newLeadLastName = $("input#NewLeadLastName").val();
		var newLeadPrimaryAddressStreet = $("input#NewLeadPrimaryAddressStreet").val();
		var newLeadPrimaryAddressCity = $("input#NewLeadPrimaryAddressCity").val();
		var newLeadPrimaryAddressState = $("input#NewLeadPrimaryAddressState").val();
		var newLeadPrimaryAddressPostalCode = $("input#NewLeadPrimaryAddressPostalCode").val();
		var newLeadPrimaryAddressCountry = $("input#NewLeadPrimaryAddressCountry").val();
		
		toast(RES_NEW_ITEM_LOADING);
		if(id=="")
		{
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","name_value_list":[{"name":"first_name","value":"'+ newLeadName +'"},{"name":"last_name","value":"'+ newLeadLastName +'"},{"name":"phone_fax","value":"'+ newLeadPhoneFax +'"},{"name":"phone_work","value":"'+ newLeadPhoneWork +'"},{"name":"phone_mobile","value":"'+ newLeadPhoneMobile +'"},{"name":"primary_address_street","value":"'+ newLeadPrimaryAddressStreet +'"},{"name":"primary_address_city","value":"'+ newLeadPrimaryAddressCity +'"},{"name":"primary_address_state","value":"'+ newLeadPrimaryAddressState +'"},{"name":"primary_address_postalcode","value":"'+ newLeadPrimaryAddressPostalCode +'"},{"name":"primary_address_country","value":"'+ newLeadPrimaryAddressCountry +'"},{"name":"date_entered","value":"' + now(false, true) + '"},{"name":"date_modified","value":"' + now(false, true) + '"},{"name":"created_by","value":"'+SugarCurrentUserId+'"}]}'
			}, function (b) {
				toUpdateLeads = true;
				console.log(b.id);
				//$("input[id^='NewAccount']").val("");
				
				$.mobile.changePage("#HomePage");
				//$( "input[name^='news']" ).val( "news here!" );
				
				
			})
		}
		else{
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","name_value_list":[{"name":"id","value":"'+ CurrentLeadId +'"},{"name":"first_name","value":"'+ newLeadName +'"},{"name":"last_name","value":"'+ newLeadLastName +'"},{"name":"phone_fax","value":"'+ newLeadPhoneFax +'"},{"name":"phone_work","value":"'+ newLeadPhoneWork +'"},{"name":"phone_mobile","value":"'+ newLeadPhoneMobile +'"},{"name":"primary_address_street","value":"'+ newLeadPrimaryAddressStreet +'"},{"name":"primary_address_city","value":"'+ newLeadPrimaryAddressCity +'"},{"name":"primary_address_state","value":"'+ newLeadPrimaryAddressState +'"},{"name":"primary_address_postalcode","value":"'+ newLeadPrimaryAddressPostalCode +'"},{"name":"primary_address_country","value":"'+ newLeadPrimaryAddressCountry +'"},{"name":"date_entered","value":"' + now(false, true) + '"},{"name":"date_modified","value":"' + now(false, true) + '"},{"name":"created_by","value":"'+SugarCurrentUserId+'"}]}'
			}, function (c) {
				console.log(c.name);
				CurrentLeadId="";
				toUpdateLeads = true;
				$.mobile.changePage("#HomePage");
					
			})

		}
		$("input[id^='NewLead']").val("");
	}

	//Funcion que carga los datos del potencial
	function SugarCrmGetLeadData()
	{
		$("input#NewLeadName").val(CurrentLead.name_value_list.first_name.value);		
		$("input#NewLeadPhoneWork").val(CurrentLead.name_value_list.phone_work.value);
		$("input#NewLeadPhoneFax").val(CurrentLead.name_value_list.phone_fax.value);	
		$("input#NewLeadPhoneMobile").val(CurrentLead.name_value_list.phone_mobile.value);
		$("input#NewLeadLastName").val(CurrentLead.name_value_list.last_name.value);
		$("input#NewLeadPrimaryAddressStreet").val(CurrentLead.name_value_list.primary_address_street.value);
		$("input#NewLeadPrimaryAddressCity").val(CurrentLead.name_value_list.primary_address_city.value);
		$("input#NewLeadPrimaryAddressPostalCode").val(CurrentLead.name_value_list.primary_address_postalcode.value);
		$("input#NewLeadPrimaryAddressState").val(CurrentLead.name_value_list.primary_address_state.value);
		$("input#NewLeadPrimaryAddressCountry").val(CurrentLead.name_value_list.primary_address_country.value);
	}

	//Función que autocompleta el input referente a tareas con los contactos ya cargados,
	//en caso de no estar cargados, los carga
	//requiere que el usuario teclee al menos 3 caracteres
function SugarCrmGetContactsTask(){
		
	var value, results=0;
	value = $("input#autocomplete").val().toLowerCase();
		$("#autocompleteNewContactTask li").remove();
		if(value.length > 2){		
			var b = 0;
			for (b = 0; b <= ContactsList.entry_list.length; b++)
				if (ContactsList.entry_list[b] != undefined) {
						
				
					var contact = ContactsList.entry_list[b].name_value_list.first_name.value+" "+ContactsList.entry_list[b].name_value_list.last_name.value;
					contact=contact.toLowerCase();
					var n = contact.indexOf(value); 
					if(n !== -1 && results < 5){
						
						var d = ContactsList.entry_list[b],
							f = $("<li class='ui-screen-hidden' data-filtertext='"+d.name_value_list.first_name.value + " " + d.name_value_list.last_name.value+"'/>"),
							e = d.name_value_list.first_name.value + " " + d.name_value_list.last_name.value,
							
						d = $("<a/>", {
							"data-identity": d.id,
							href: "#",
							click: function () {
								var text = $(this).html();
								$("input#autocomplete").val(text);
								$("input#autocomplete").removeAttr("data-identity");
								$("input#autocomplete").attr("data-identity", $(this).data("identity"));
							 	$("#autocompleteNewContactTask li").remove();
							 	$("input#autocomplete").textinput('refresh');
							}
						});
						d.append(e);
						f.append(d);
						$("#autocompleteNewContactTask").append(f);
						results++;
					}
				}
			$("ul#autocompleteNewContactTask").listview("refresh");

		}
	}


	// Función para insertar una nueva tarea
	function SugarCrmSetNewTask(id)
	{
		
			var newTaskStartDate = $("input#NewTaskStartDate").val();
			var newTaskStartTime = $("input#NewTaskStartTime").val();
			var newTaskName = $("input#NewTaskName").val();
			var newTaskStart = changeDate(newTaskStartDate, newTaskStartTime);
			var newTaskDueDate = $("input#NewTaskDueDate").val();
			var newTaskDueTime = $("input#NewTaskDueTime").val();
			var newTaskDue = changeDate(newTaskDueDate, newTaskDueTime);
			var newTaskPriority = $("#NewTaskPriority").val();
			var newTaskStatus = $("#NewTaskStatus").val();
			var newTaskDescription = $("#NewTaskDescription").val();
			var newTaskContact = $("input#autocomplete").attr("data-identity");
		
			toast(RES_NEW_ITEM_LOADING);
			if(id=="")
			{
				$.get(sugarURL+"/service/v2/rest.php", {
					method: "set_entry",
					input_type: "JSON",
					response_type: "JSON",
					rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","name_value_list":[{"name":"name","value":"'+ newTaskName +'"},{"name":"date_entered","value":"'+ now(false, true) +'"},{"name":"date_modified","value":"'+ now(false, true) +'"},{"name":"description","value":"'+ newTaskDescription +'"},{"name":"status","value":"'+ newTaskStatus +'"},{"name":"date_due","value":"'+ newTaskDue +'"},{"name":"date_start","value":"'+ newTaskStart +'"},{"name":"parent_type","value":"Accounts"},{"name":"contact_id","value":"'+ newTaskContact +'"},{"name":"priority","value":"' + newTaskPriority + '"}]}'
				}, function (b) {
					toUpdateTasks = true;
					console.log(b.id);
					$.mobile.changePage("#HomePage");
			
				})
			}
			else{
				$.get(sugarURL+"/service/v2/rest.php", {
					method: "set_entry",
					input_type: "JSON",
					response_type: "JSON",
					rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","name_value_list":[{"name":"name","value":"'+ newTaskName +'"},{"name":"id","value":"'+ CurrentTaskId +'"},{"name":"date_entered","value":"'+ now(false, true) +'"},{"name":"date_modified","value":"'+ now(false, true) +'"},{"name":"description","value":"'+ newTaskDescription +'"},{"name":"status","value":"'+ newTaskStatus +'"},{"name":"date_due","value":"'+ newTaskDue +'"},{"name":"date_start","value":"'+ newTaskStart +'"},{"name":"parent_type","value":"Accounts"},{"name":"contact_id","value":"'+ newTaskContact +'"},{"name":"priority","value":"' + newTaskPriority + '"}]}'
				}, function (b) {
					CurrentTaskId="";
					toUpdateTasks = true;
					console.log(b.id);
					$.mobile.changePage("#HomePage");
				})
			}
			$("input[id^='NewTask']").val("");
			$("#NewTaskDescription").val("");
			$("input#autocomplete").removeAttr("data-identity");

		

	}

	//Obtener los datos de la tarea
	function SugarCrmGetTaskData(){
			var b;
			
			for (b = 0; b <= ContactsList.entry_list.length; b++){
				if (ContactsList.entry_list[b] != undefined) {
					var d = ContactsList.entry_list[b];

					if(d.id == CurrentTask.name_value_list.contact_id.value){
						$("input#autocomplete").val(d.name_value_list.first_name.value+" "+d.name_value_list.last_name.value);
						$("input#autocomplete").attr("data-identity", d.id);
						break;
					}
				}
			}
			$("input#NewTaskName").val(CurrentTask.name_value_list.name.value);
			var valueInputStart = setDateInput(CurrentTask.name_value_list.date_start.value);
			valueInputStart = valueInputStart.split("-",2);
			$("input#NewTaskStartDate").val(valueInputStart[0]);
			$("input#NewTaskStartTime").val(valueInputStart[1]);
			var valueInputDue = setDateInput(CurrentTask.name_value_list.date_due.value);
			valueInputDue = valueInputDue.split("-",2);
			$("input#NewTaskDueDate").val(valueInputDue[0]);
			$("input#NewTaskDueTime").val(valueInputDue[1]);
			$("#NewTaskDescription").val(CurrentTask.name_value_list.description.value);

			$('[name=NewTaskPriority]').val(CurrentTask.name_value_list.priority.value);
			$('[name=NewTaskStatus]').val(CurrentTask.name_value_list.status.value);

			$('select#NewTaskPriority').selectmenu('refresh', true);
			$('select#NewTaskStatus').selectmenu('refresh', true);
			
	}


	//rellena el % asociado a cada etapa de ventas en oportunidades
	$("select#NewOpportunitySalesStage").on("change", function(event){
		var selectvalue = $("select#NewOpportunitySalesStage").val();
		switch(selectvalue){
			case "Prospecting":
				$("input#NewOpportunityProbability").val(10);
			break;
			case "Qualification":
				$("input#NewOpportunityProbability").val(20);
			break;
			case "Needs Analysis":
				$("input#NewOpportunityProbability").val(25);
			break;
			case "Value Proposition":
				$("input#NewOpportunityProbability").val(30);
			break;
			case "Id. Decision Makers":
				$("input#NewOpportunityProbability").val(40);
			break;
			case "Perception Analysis":
				$("input#NewOpportunityProbability").val(50);	
			break;
			case "Proposal/Price Quote":
				$("input#NewOpportunityProbability").val(65);
			break;
			case "Negotiation/Review":
				$("input#NewOpportunityProbability").val(80);
			break;
			case "Closed Won":
				$("input#NewOpportunityProbability").val(100);
			break;
			case "Closed Lost":
				$("input#NewOpportunityProbability").val(0);
			break;
		}
	});

	//Inserta o modifica las oportunidades
	function SugarCrmSetNewOpportunity(id)
	{
		var newOpportunityName = $("input#NewOpportunityName").val();
		var newOpportunityAccountId = $("input#autocompleteAccounts").attr("data-identity");
		var newOpportunityQuantity = $("input#NewOpportunityQuantity").val();
		var newOpportunityCloseDate =changeDate($("input#NewOpportunityCloseDate").val(),0);
		var newOpportunitySalesStage = $("select#NewOpportunitySalesStage").val();
		var newOpportunityType = $("select#NewOpportunityType").val();
		var newOpportunityProbability = $("input#NewOpportunityProbability").val();
		var newOpportunityLeadSource = $("select#NewOpportunityLeadSource").val();
		var newOpportunityNextStep = $("input#NewOpportunityNextStep").val();
		var newOpportunityDescription = $("textarea#NewOpportunityDescription").val();

		
		
		toast(RES_NEW_ITEM_LOADING);
		if(id=="")
		{
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","name_value_list":[{"name":"name","value":"'+ newOpportunityName +'"},{"name":"date_entered","value":"'+ now(false, true) +'"},{"name":"date_modified","value":"'+ now(false, true) +'"},{"name":"description","value":"'+ newOpportunityDescription +'"},{"name":"opportunity_type","value":"'+ newOpportunityType +'"},{"name":"lead_source","value":"'+ newOpportunityLeadSource +'"},{"name":"amount","value":"'+ newOpportunityQuantity +'"},{"name":"amount_usdollar","value":"'+newOpportunityQuantity+'"},{"name":"currency_id","value":"-99"},{"name":"date_closed","value":"' + newOpportunityCloseDate + '"},{"name":"next_step","value":"' + newOpportunityNextStep + '"},{"name":"sales_stage","value":"' + newOpportunitySalesStage + '"},{"name":"probability","value":"' + newOpportunityProbability + '"}]}'
			}, function (b) {
				console.log(b);
				$.get(sugarURL+"/service/v2/rest.php", {
    				method: "set_relationship",
    				input_type: "JSON",
    				response_type: "JSON",
    				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","module_id":"' + b.id + '","link_field_name":"accounts","related_ids":["'+ newOpportunityAccountId +'"],"name_value_list":[],"deleted":"0"}'
				}, function (c) {
					if (c !== undefined) {
     				    console.log(c);
						toUpdateOpportunities = true;
						$.mobile.changePage("#HomePage");
					}	
				})
			})
		}
		else{
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","name_value_list":[{"name":"id","value":"'+ CurrentOpportunityId +'"},{"name":"name","value":"'+ newOpportunityName +'"},{"name":"date_entered","value":"'+ now(false, true) +'"},{"name":"date_modified","value":"'+ now(false, true) +'"},{"name":"description","value":"'+ newOpportunityDescription +'"},{"name":"opportunity_type","value":"'+ newOpportunityType +'"},{"name":"lead_source","value":"'+ newOpportunityLeadSource +'"},{"name":"amount","value":"'+ newOpportunityQuantity +'"},{"name":"amount_usdollar","value":"'+newOpportunityQuantity+'"},{"name":"currency_id","value":"-99"},{"name":"date_closed","value":"' + newOpportunityCloseDate + '"},{"name":"next_step","value":"' + newOpportunityNextStep + '"},{"name":"sales_stage","value":"' + newOpportunitySalesStage + '"},{"name":"probability","value":"' + newOpportunityProbability + '"}]}'
			}, function (b) {
				console.log(b);
				var idOpportunity = b.id;
				for(var c=0; c<AccountsList.entry_list.length; c++){
					if(AccountsList.entry_list[c].name_value_list.name.value == CurrentOpportunity.name_value_list.account_name.value){
						$.get(sugarURL+"/service/v2/rest.php", {
    						method: "set_relationship",
    						input_type: "JSON",
    						response_type: "JSON",
    						rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","module_id":"' + idOpportunity + '","link_field_name":"accounts","related_ids":["'+ AccountsList.entry_list[c].id +'"],"name_value_list":[],"deleted":"1"}'
						}, function (d) {
							$.get(sugarURL+"/service/v2/rest.php", {
    							method: "set_relationship",
    							input_type: "JSON",
    							response_type: "JSON",
    							rest_data: '{"session":"' + SugarSessionId + '","module_name":"Opportunities","module_id":"' + idOpportunity + '","link_field_name":"accounts","related_ids":["'+ newOpportunityAccountId +'"],"name_value_list":[],"deleted":"0"}'
							}, function (e) {
								console.log(e);
								toUpdateOpportunities = true;
								$.mobile.changePage("#HomePage");
							});
						});
					}
				}
			})

		}
		$("input[id^='NewOpportunity']").val("");
		$("textarea#NewOpportunityDescription").val("");
		$("input#autocompleteAccounts").removeAttr("data-identity");

	}

	//Obtener los datos de las oportunidades
	function SugarCrmGetOpportunityData(){
			
		$("#NewOpportunityAccountName li").remove();
		for (var b = 0; b <= AccountsList.entry_list.length; b++){
			if (AccountsList.entry_list[b] != undefined) {
				var d = AccountsList.entry_list[b];

				if(d.name_value_list.name.value == CurrentOpportunity.name_value_list.account_name.value){

					$("input#autocompleteAccounts").val(d.name_value_list.name.value);
					$("input#autocompleteAccounts").attr("data-identity", d.id);
					break;
				}
			}
		}	
		
		$("input#NewOpportunityName").val(CurrentOpportunity.name_value_list.name.value);
		$("input#NewOpportunityQuantity").val(CurrentOpportunity.name_value_list.amount.value);
		var valueInputStart = setDateInput(CurrentOpportunity.name_value_list.date_closed.value);
		$("input#NewOpportunityCloseDate").val(valueInputStart);
		$('[name=NewOpportunitySalesStage]').val(CurrentOpportunity.name_value_list.sales_stage.value);
		
		$('[name=NewOpportunityType]').val(CurrentOpportunity.name_value_list.opportunity_type.value);
		
		$("input#NewOpportunityProbability").val(CurrentOpportunity.name_value_list.probability.value);
		$('[name=NewOpportunityLeadSource]').val(CurrentOpportunity.name_value_list.lead_source.value);
		
		$("input#NewOpportunityNextStep").val(CurrentOpportunity.name_value_list.next_step.value);
		$("textarea#NewOpportunityDescription").val(CurrentOpportunity.name_value_list.description.value);

		$('select#NewOpportunitySalesStage').selectmenu('refresh', true);
		$('select#NewOpportunityType').selectmenu('refresh', true);
		$('select#NewOpportunityLeadSource').selectmenu('refresh', true);
	}

	//Función que autocompleta el input referente a oportunidades con los empresas ya cargadas,
	//en caso de no estar cargadas, las carga
	function SugarCrmGetAccountsOpportunities(){
		var results=0;

		var	value = $("input#autocompleteAccounts").val().toLowerCase();
		$("#NewOpportunityAccountName li").remove();
		if(value.length > 2){
			var b = 0;
			for (b = 0; b <= AccountsList.entry_list.length; b++)
				if (AccountsList.entry_list[b] != undefined) {

					var account = AccountsList.entry_list[b].name_value_list.name.value;
					account=account.toLowerCase();
					var n = account.indexOf(value); 
					if(n !== -1 && results < 5){

						var d = AccountsList.entry_list[b],
							f = $("<li class='ui-screen-hidden' data-filtertext='"+d.name_value_list.name.value+"'/>"),
							e = d.name_value_list.name.value ,
							
						d = $("<a/>", {
							"data-identity": d.id,
							href: "#",
							click: function () {
								var text = $(this).html();
								$("input#autocompleteAccounts").val(text);
								$("input#autocompleteAccounts").removeAttr("data-identity");
								$("input#autocompleteAccounts").attr("data-identity", $(this).data("identity"));
							 	$("#NewOpportunityAccountName li").remove();
							 	$("input#autocompleteAccounts").textinput('refresh');

							}
						});
						d.append(e);
						f.append(d);
						$("#NewOpportunityAccountName").append(f);
						results++;
					}
				}
			$("#NewOpportunityAccountName").listview("refresh");
		}
	}

	//Inserta o modifica las reuniones
	function SugarCrmSetNewMeeting(id){
		var newMeetingSubject = $("input#NewMeetingSubject").val();
		var newMeetingStatus = $("select#NewMeetingStatus").val();
		if($("input#NewMeetingStartTime").val()!==""){
			var newMeetingStartDateTime = changeDate($("input#NewMeetingStartDate").val(), $("input#NewMeetingStartTime").val());
		}
		else{
			var newMeetingStartDateTime = changeDate($("input#NewMeetingStartDate").val(), "00:00 AM");
		}
		var newMeetingEndDateTime = changeDate($("input#NewMeetingEndDate").val(), $("input#NewMeetingEndTime").val());
		var newMeetingStatus = $("select#NewMeetingDuration").val();
		var time = secondsToHoursandMinutes(newMeetingStatus);
			time = time.split("-",2);
		var hours = time[0];
		var minutes = time[1];
		var newMeetingDescription = $("textarea#NewMeetingDescription").val();
		
		
		toast(RES_NEW_ITEM_LOADING);
		if(id=="")
		{
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","name_value_list":[{"name":"name","value":"'+ newMeetingSubject +'"},{"name":"date_entered","value":"'+ now(false, true) +'"},{"name":"date_modified","value":"'+ now(false, true) +'"},{"name":"description","value":"'+ newMeetingDescription +'"},{"name":"duration_hours","value":"'+ hours +'"},{"name":"duration_minutes","value":"'+ minutes +'"},{"name":"date_start","value":"'+ newMeetingStartDateTime +'"},{"name":"date_end","value":"'+newMeetingEndDateTime+'"},{"name":"parent_id","value":"Accounts"},{"name":"status","value":"' + NewMeetingStatus + '"},{"name":"type","value":"Sugar"}]}'
			}, function (b) {
				toUpdateMeetings = true;
				console.log(b.id);
				$.mobile.changePage("#HomePage");
			
			})
		}
		else{
			$.get(sugarURL+"/service/v2/rest.php", {
				method: "set_entry",
				input_type: "JSON",
				response_type: "JSON",
				rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","name_value_list":[{"name":"name","value":"'+ newMeetingSubject +'"},{"name":"id","value":"'+ CurrentMeetingId +'"},{"name":"date_entered","value":"'+ now(false, true) +'"},{"name":"date_modified","value":"'+ now(false, true) +'"},{"name":"description","value":"'+ newMeetingDescription +'"},{"name":"duration_hours","value":"'+ hours +'"},{"name":"duration_minutes","value":"'+ minutes +'"},{"name":"date_start","value":"'+ newMeetingStartDateTime +'"},{"name":"date_end","value":"'+newMeetingEndDateTime+'"},{"name":"parent_id","value":"Accounts"},{"name":"status","value":"' + NewMeetingStatus + '"},{"name":"type","value":"Sugar"}]}'
			}, function (b) {
				CurrentMeetingId="";
				toUpdateMeetings = true;
				console.log(b.id);		
				$.mobile.changePage("#HomePage");
			})
		}
		$("input[id^='NewMeeting']").val("");
		$("textarea#NewMeetingDescription").val("");
	}


	//Obtener los datos de las reuniones (NO OBTENEMOS INVITADOS [faltan los ul] )
	function SugarCrmGetMeetingData(){
		$("input#NewMeetingSubject").val(CurrentMeeting.name_value_list.name.value);

		var valueInputStart = setDateInput(CurrentMeeting.name_value_list.date_start.value);
					valueInputStart = valueInputStart.split("-",2);
					$("input#NewMeetingStartDate").val(valueInputStart[0]);
					$("input#NewMeetingStartTime").val(valueInputStart[1]);
		var valueInputEnd = setDateInput(CurrentMeeting.name_value_list.date_end.value);
					valueInputEnd = valueInputEnd.split("-",2);
					$("input#NewMeetingEndDate").val(valueInputEnd[0]);
					$("input#NewMeetingEndTime").val(valueInputEnd[1]);

		$('[name=NewMeetingDuration]').val(HoursandMinutesToSeconds(CurrentMeeting.name_value_list.duration_hours.value,CurrentMeeting.name_value_list.duration_minutes.value));
		
		$("textarea#NewMeetingDescription").val(CurrentMeeting.name_value_list.description.value);


		$('[name=NewMeetingStatus]').val(CurrentMeeting.name_value_list.status.value);
		$('select#NewMeetingStatus').selectmenu('refresh', true);
		$('select#NewMeetingDuration').selectmenu('refresh', true);			
	}

	// *************************************************************
	// ** FUNCIONES AUXILIARES									  **
	// *************************************************************

	// Cambia la fecha y hora a formato datetime si time es 0 es que no pasamos time
	function changeDate(date, time){
		
		if(time==0){
			var dayMonthYear = date.split("/",3);
			var datetime = dayMonthYear[2]+"-"+dayMonthYear[1]+"-"+dayMonthYear[0];
			return datetime;
		}
		else{
			var dayMonthYear = date.split("/",3);
			var timeMeridian = time.split(" ",2);
			var hours = timeMeridian[0].split(":", 2);
			if(timeMeridian[1] === "PM" && hours[0] !== "12"){
				hours[0] = parseInt(hours[0])+12;
			}
			var datetime = dayMonthYear[2]+"-"+dayMonthYear[1]+"-"+dayMonthYear[0]+" "+hours[0]+":"+hours[1]+":00";
			return datetime;
		}
	}

	function setDateInput(datetime){
		var r = datetime.match(/^\s*([0-9]+)\s*-\s*([0-9]+)\s*-\s*([0-9]+)(.*)$/);
		var meridian ="AM";
		if ((r !== null) && (r !== undefined))
		{   
			horaCompleta = r[4].trim().split(":");
			minutos = horaCompleta[1];
			hora = parseInt(horaCompleta[0]);
			

			if (minutos !== undefined)
			{	
				if(hora >=12){
					meridian ="PM";
					hora = hora-12;
				}			
				return r[3]+"/"+r[2]+"/"+r[1]+"-"+hora+":"+minutos+" "+meridian;
			}
			else
			{
				return r[3]+"/"+r[2]+"/"+r[1];
			}
			
		}
		else
		{
			return "";
		}
	}
	
	//Conversor de horas y minutos a segundos usado en la duracion de las reuniones para guardarlas en la BD
	function secondsToHoursandMinutes(seconds){
		var minutes,
			hours;
		minutes = parseInt(seconds)/60;
		hours = minutes/60;
		minutes = minutes%60;
		return hours+"-"+minutes;
	}
	//Conversor de horas y minutos a segundos usado en la duracion de las reuniones al leer de la BD
	function HoursandMinutesToSeconds(hours,minutes){
		var seconds=parseInt(hours)*3600;
		seconds+=parseInt(minutes)*60;
		return seconds;

	}

	// Cambia la fecha al ser mostrada al formato español
	function change(time) {
		var r = time.match(/^\s*([0-9]+)\s*-\s*([0-9]+)\s*-\s*([0-9]+)(.*)$/);
		if ((r !== null) && (r !== undefined))
		{   
			horaCompleta = r[4].trim().split(":");
			minutos = horaCompleta[1];
			hora = parseInt(horaCompleta[0]);
			
			if (minutos !== undefined)
			{				
				return r[3]+"-"+r[2]+"-"+r[1]+" "+hora+":"+minutos;
			}
			else
			{
				return r[3]+"-"+r[2]+"-"+r[1];
			}
		}
		else
		{
			return "";
		}
	}


	// Devuelve la fecha y hora actual 
	// param local= true:local, false:GMT
	// param toStore= true:database format, false: to show on screen
	// Usar siempre que se pueda (false, true).
	function now(local, toStore) {
		var currentdate = new Date();
		var hora, minuto, segundo; 

		if (local) currentdate.setHours(currentdate.getHours() + (timeOffset * (-1) / 60));

		currentdate.setMonth(currentdate.getMonth()+1); // Incrementar mes en uno.

		if (toStore)
		{
			datetime = currentdate.getFullYear() + "-" + currentdate.getMonth() + "-" + currentdate.getDate() + " ";
		}
		else
		{
			datetime = currentdate.getDate() + "-" + currentdate.getMonth()  + "-" + currentdate.getFullYear() + " ";
		}

		// Completar con dos dígitos
		var hora = '' + currentdate.getHours();
		if (hora.length == 1) {
		  hora = '0' + hora;
		}

		var minuto = '' + currentdate.getMinutes();
		if (minuto.length == 1) {
		  minuto = '0' + minuto;
		}

		var segundo = '' + currentdate.getSeconds();
		if (segundo.length == 1) {
		  segundo = '0' + segundo;
		}		

		datetime += hora + ":" + minuto + ":" + segundo;
		console.log("datetime "+datetime);

		return datetime;
	}

	(function (a) {
		var c = function (g, i) {
			var o, n, q, p, h;
			q = g & 2147483648;
			p = i & 2147483648;
			o = g & 1073741824;
			n = i & 1073741824;
			h = (g & 1073741823) + (i & 1073741823);
			if (o & n) return h ^ 2147483648 ^ q ^ p;
			return o | n ? h & 1073741824 ? h ^ 3221225472 ^ q ^ p : h ^ 1073741824 ^ q ^ p : h ^ q ^ p
		}, b = function (g, i, o, n, q, p, h) {
				g = c(g, c(c(i & o | ~i & n, q), h));
				return c(g << p | g >>> 32 - p, i)
			}, d = function (g, i, o, n, q, p, h) {
				g = c(g, c(c(i & n | o & ~n, q), h));
				return c(g << p | g >>> 32 - p, i)
			}, f = function (g, i, o, n, q, p, h) {
				g = c(g, c(c(i ^ o ^ n, q), h));
				return c(g << p | g >>> 32 - p, i)
			}, e = function (g, i, o, n, q, p, h) {
				g = c(g,
					c(c(o ^ (i | ~n), q), h));
				return c(g << p | g >>> 32 - p, i)
			}, m = function (g) {
				var i = "",
					o = "",
					n;
				for (n = 0; n <= 3; n++) {
					o = g >>> n * 8 & 255;
					o = "0" + o.toString(16);
					i += o.substr(o.length - 2, 2)
				}
				return i
			};
		a.extend({
			md5: function (g) {
				var i = [],
					o, n, q, p, h, j, k, l;
				i = g;
				i = i.replace(/\x0d\x0a/g, "\n");
				g = "";
				for (o = 0; o < i.length; o++) {
					n = i.charCodeAt(o);
					if (n < 128) g += String.fromCharCode(n);
					else {
						if (n > 127 && n < 2048) g += String.fromCharCode(n >> 6 | 192);
						else {
							g += String.fromCharCode(n >> 12 | 224);
							g += String.fromCharCode(n >> 6 & 63 | 128)
						}
						g += String.fromCharCode(n & 63 | 128)
					}
				}
				i = g =
					g;
				g = i.length;
				o = g + 8;
				n = ((o - o % 64) / 64 + 1) * 16;
				q = Array(n - 1);
				for (h = p = 0; h < g;) {
					o = (h - h % 4) / 4;
					p = h % 4 * 8;
					q[o] |= i.charCodeAt(h) << p;
					h++
				}
				o = (h - h % 4) / 4;
				p = h % 4 * 8;
				q[o] |= 128 << p;
				q[n - 2] = g << 3;
				q[n - 1] = g >>> 29;
				i = q;
				h = 1732584193;
				j = 4023233417;
				k = 2562383102;
				l = 271733878;
				for (g = 0; g < i.length; g += 16) {
					o = h;
					n = j;
					q = k;
					p = l;
					h = b(h, j, k, l, i[g + 0], 7, 3614090360);
					l = b(l, h, j, k, i[g + 1], 12, 3905402710);
					k = b(k, l, h, j, i[g + 2], 17, 606105819);
					j = b(j, k, l, h, i[g + 3], 22, 3250441966);
					h = b(h, j, k, l, i[g + 4], 7, 4118548399);
					l = b(l, h, j, k, i[g + 5], 12, 1200080426);
					k = b(k, l, h, j, i[g + 6], 17, 2821735955);
					j = b(j, k, l, h, i[g + 7], 22, 4249261313);
					h = b(h, j, k, l, i[g + 8], 7, 1770035416);
					l = b(l, h, j, k, i[g + 9], 12, 2336552879);
					k = b(k, l, h, j, i[g + 10], 17, 4294925233);
					j = b(j, k, l, h, i[g + 11], 22, 2304563134);
					h = b(h, j, k, l, i[g + 12], 7, 1804603682);
					l = b(l, h, j, k, i[g + 13], 12, 4254626195);
					k = b(k, l, h, j, i[g + 14], 17, 2792965006);
					j = b(j, k, l, h, i[g + 15], 22, 1236535329);
					h = d(h, j, k, l, i[g + 1], 5, 4129170786);
					l = d(l, h, j, k, i[g + 6], 9, 3225465664);
					k = d(k, l, h, j, i[g + 11], 14, 643717713);
					j = d(j, k, l, h, i[g + 0], 20, 3921069994);
					h = d(h, j, k, l, i[g + 5], 5, 3593408605);
					l = d(l, h, j, k, i[g + 10], 9, 38016083);
					k = d(k, l, h, j, i[g + 15], 14, 3634488961);
					j = d(j, k, l, h, i[g + 4], 20, 3889429448);
					h = d(h, j, k, l, i[g + 9], 5, 568446438);
					l = d(l, h, j, k, i[g + 14], 9, 3275163606);
					k = d(k, l, h, j, i[g + 3], 14, 4107603335);
					j = d(j, k, l, h, i[g + 8], 20, 1163531501);
					h = d(h, j, k, l, i[g + 13], 5, 2850285829);
					l = d(l, h, j, k, i[g + 2], 9, 4243563512);
					k = d(k, l, h, j, i[g + 7], 14, 1735328473);
					j = d(j, k, l, h, i[g + 12], 20, 2368359562);
					h = f(h, j, k, l, i[g + 5], 4, 4294588738);
					l = f(l, h, j, k, i[g + 8], 11, 2272392833);
					k = f(k, l, h, j, i[g + 11], 16, 1839030562);
					j = f(j, k, l, h, i[g + 14], 23, 4259657740);
					h = f(h, j, k, l, i[g + 1], 4, 2763975236);
					l = f(l, h, j, k, i[g + 4], 11, 1272893353);
					k = f(k, l, h, j, i[g + 7], 16, 4139469664);
					j = f(j, k, l, h, i[g + 10], 23, 3200236656);
					h = f(h, j, k, l, i[g + 13], 4, 681279174);
					l = f(l, h, j, k, i[g + 0], 11, 3936430074);
					k = f(k, l, h, j, i[g + 3], 16, 3572445317);
					j = f(j, k, l, h, i[g + 6], 23, 76029189);
					h = f(h, j, k, l, i[g + 9], 4, 3654602809);
					l = f(l, h, j, k, i[g + 12], 11, 3873151461);
					k = f(k, l, h, j, i[g + 15], 16, 530742520);
					j = f(j, k, l, h, i[g + 2], 23, 3299628645);
					h = e(h, j, k, l, i[g + 0], 6, 4096336452);
					l = e(l, h, j, k, i[g + 7], 10, 1126891415);
					k = e(k, l, h, j, i[g + 14], 15, 2878612391);
					j = e(j, k, l, h, i[g + 5], 21, 4237533241);
					h = e(h, j, k, l, i[g + 12], 6, 1700485571);
					l = e(l, h, j, k, i[g + 3], 10, 2399980690);
					k = e(k, l, h, j, i[g + 10], 15, 4293915773);
					j = e(j, k, l, h, i[g + 1], 21, 2240044497);
					h = e(h, j, k, l, i[g + 8], 6, 1873313359);
					l = e(l, h, j, k, i[g + 15], 10, 4264355552);
					k = e(k, l, h, j, i[g + 6], 15, 2734768916);
					j = e(j, k, l, h, i[g + 13], 21, 1309151649);
					h = e(h, j, k, l, i[g + 4], 6, 4149444226);
					l = e(l, h, j, k, i[g + 11], 10, 3174756917);
					k = e(k, l, h, j, i[g + 2], 15, 718787259);
					j = e(j, k, l, h, i[g + 9], 21, 3951481745);
					h = c(h, o);
					j = c(j, n);
					k = c(k, q);
					l = c(l, p)
				}
				return (m(h) + m(j) + m(k) + m(l)).toLowerCase()
			}
		})
	})(jQuery);
});