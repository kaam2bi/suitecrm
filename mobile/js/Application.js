var RES_LOGIN_MESSAGE = "Enter your username and password, then click login",
    RES_LOGIN_TITLE = "Login",
    RES_LOGOUT_LABEL = "Logout",
    RES_HOME_LABEL = "Home",
    RES_BACK_LABEL = "Back Test",
    RES_USERNAME_LABEL = "Username",
    RES_PASSWORD_LABEL = "Password",
    RES_ACCOUNTS_LABEL = "Accounts",
    RES_ACCOUNT_LABEL = "Account",
    RES_CONTACTS_LABEL = "Contacts",
    RES_CONTACT_LABEL = "Contact",
    RES_OPPORTUNITIES_LABEL = "Opportunities",
    RES_OPPORTUNITY_LABEL = "Opportunity",
    RES_LEADS_LABEL = "Leads",
    RES_LEAD_LABEL = "Lead",
    RES_CALLS_LABEL = "Calls",
    RES_CALL_LABEL =
        "Call",
    RES_MEETINGS_LABEL = "Meetings",
    RES_MEETING_LABEL = "Meeting",
    RES_TASKS_LABEL = "Tasks",
    RES_TASK_LABEL = "Task",
    RES_NOTES_LABEL = "Notes",
    RES_NOTE_LABEL = "Note",
    RES_CAMPAIGN_LABEL = "Campaign",
    RES_CAMPAIGNS_LABEL = "Campaigns",
    RES_USER_LABEL = "User",
    RES_USERS_LABEL = "Users",
    RES_OVERVIEW_LABEL = "Overview",
    RES_MORE_INFORMATION_LABEL = "More Information",
    RES_OTHER_LABEL = "Other",
    RES_ACCOUNT_BILLING_ADDRESS_LABEL = "Billing Address",
    RES_ACCOUNT_SHIPPING_ADDRESS_LABEL = "Shipping Address",
    RES_ACCOUNT_INDUSTRY_LABEL = "Industry",
    RES_ACCOUNT_REVENUE_LABEL = "Annual Revenue",
    RES_ACCOUNT_EMPLOYEES_LABEL = "Employees",
    RES_ACCOUNT_SIC_LABEL = "SIC Code",
    RES_ACCOUNT_TICKER_LABEL = "Ticker Symbol",
    RES_ACCOUNT_MEMBER_LABEL = "Member Of",
    RES_ACCOUNT_OWNERSHIP_LABEL = "Ownership",
    RES_ACCOUNT_CAMPAIGN_LABEL = "Campaign",
    RES_ACCOUNT_RATING_LABEL = "Rating",
    RES_CONTACT_REPORTS_TO_LABEL = "Reports To",
    RES_OPPORTUNITY_NAME_LABEL = "Opportunity Name",
    RES_OPPORTUNITY_AMOUNT_WITH_CURRENCY_LABEL = "Opportunity Amount ({0} {1})",
    RES_OPPORTUNITY_AMOUNT_LABEL = "Opportunity Amount",
    RES_OPPORTUNITY_EXPECTED_CLOSE_DATE_LABEL = "Expected Close Date",
    RES_OPPORTUNITY_SALES_STAGE_LABEL = "Sales Stage",
    RES_OPPORTUNITY_PROBABILITY_LABEL = "Probability",
    RES_OPPORTUNITY_NEXT_STEP_LABEL = "Next Step",
    RES_LEAD_REFERRED_BY = "Referred By",
    RES_TASK_DUE_DATE_LABEL = "Due Date",
    RES_TASK_PRIORITY_LABEL = "Priority",
    RES_OFFICE_PHONE_LABEL = "Office Phone",
    RES_FAX_LABEL = "Fax",
    RES_DESCRIPTION_LABEL = "Description",
    RES_EMAIL_ADDRESS_LABEL = "Email Address",
    RES_LEAD_SOURCE_LABEL = "Lead Source",
    RES_RELATED_ITEM_NAME_LABEL =
        "Name",
    RES_TYPE_LABEL = "Type",
    RES_NAME_LABEL = "Name",
    RES_TITLE_LABEL = "Title",
    RES_MOBILE_PHONE_LABEL = "Mobile",
    RES_DEPARTMENT_LABEL = "Department",
    RES_PRIMARY_ADDRESS_LABEL = "Primary Address",
    RES_OTHER_ADDRESS_LABEL = "Other Address",
    RES_WEBSITE_LABEL = "Website",
    RES_SUBJECT = "Subject",
    RES_STATUS_LABEL = "Status",
    RES_START_DATE_TIME_LABEL = "Start Date & Time",
    RES_START_DATE_LABEL = "Start Date",
    RES_DURATION_LABEL = "Duration",
    RES_LOCATION_LABEL = "Location",
    RES_REMINDER_LABEL = "Reminder",
    RES_DETAILS_LABEL = "Details",
    RES_ASSIGNED_TO_LABEL =
        "Assigned To",
    RES_DATE_MODIFIED_LABEL = "Date Modified",
    RES_DATE_CREATED_LABEL = "Date Created",
    RES_DO_NOT_CALL = "*NOTE: This Contact is marked as Do Not Call.",
    RES_LOG_CALL_QUESTION = "Would you like to log this call?",
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
    ContactsListPrevOffset =
        0,
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
$("#HomePage").live("pagecreate", function () {
    $("#LogOutButton .ui-btn-text").text(RES_LOGOUT_LABEL);
    $("#AccountsListPageLinkLabel").text(RES_ACCOUNTS_LABEL);
    $("#ContactsListPageLinkLabel").text(RES_CONTACTS_LABEL);
    $("#OpportunitiesListPageLinkLabel").text(RES_OPPORTUNITIES_LABEL);
    $("#LeadsListPageLinkLabel").text(RES_LEADS_LABEL);
    $("#CallsListPageLinkLabel").text(RES_CALLS_LABEL);
    $("#MeetingsListPageLinkLabel").text(RES_MEETINGS_LABEL);
    $("#TasksListPageLinkLabel").text(RES_TASKS_LABEL);
    $("#AccountsListPageTitle").text(RES_ACCOUNTS_LABEL);
    $("#ContactsListPageTitle").text(RES_CONTACTS_LABEL);
    $("#OpportunitiesListPageTitle").text(RES_OPPORTUNITIES_LABEL);
    $("#LeadsListPageTitle").text(RES_LEADS_LABEL);
    $("#CallsListPageTitle").text(RES_CALLS_LABEL);
    $("#MeetingsListPageTitle").text(RES_MEETINGS_LABEL);
    $("#TasksListPageTitle").text(RES_TASKS_LABEL);
    $("#ViewContactDetailsPageTitle").text(RES_CONTACT_LABEL + " " + RES_DETAILS_LABEL);
    $("#ViewAccountDetailsPageTitle").text(RES_ACCOUNT_LABEL + " " + RES_DETAILS_LABEL)
});
$("#AccountsListPage").live("pageshow", function () {
    SugarCrmGetAccountsListFromServer(AccountsListCurrentOffset)
});
$("#ContactsListPage").live("pageshow", function () {
    SugarCrmGetContactListFromServer(ContactsListCurrentOffset)
});
$("#OpportunitiesListPage").live("pageshow", function () {
    SugarCrmGetOpportunitiesListFromServer(OpportunitiesListCurrentOffset)
});
$("#LeadsListPage").live("pageshow", function () {
    SugarCrmGetLeadsListFromServer(LeadsListCurrentOffset)
});
$("#CallsListPage").live("pageshow", function () {
    SugarCrmGetCallsListFromServer(CallsListCurrentOffset)
});
$("#MeetingsListPage").live("pageshow", function () {
    SugarCrmGetMeetingsListFromServer(MeetingsListCurrentOffset)
});
$("#TasksListPage").live("pageshow", function () {
    SugarCrmGetTasksListFromServer(TasksListCurrentOffset)
});
$("#HomePage").live("pageshow", function () {
    SugarSessionId === "" && $.mobile.changePage("#LoginPage")
});

function LoginUser(a) {
    $.mobile.showPageLoadingMsg();
    var c = $("#SettingsPageSugarCrmUsername").val(),
        b = $("#SettingsPageSugarCrmPassword").val();
    if (a == undefined) b = $.md5(b);
    $.get("../service/v2/rest.php", {
        method: "login",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '[{"password":"' + b + '","user_name":"' + c + '"},"SugarCrm",{"name":"language","value":"es_ES"}]'
    }, function (d) {
        console.log(d); 
        if (d !== "") {
            //console.log($.parseJSON(JSON.stringify(d, undefined, 2)));
            //d = jQuery.parseJSON(d);
            //console.log(d);
            
            d = $.parseJSON(JSON.stringify(d, undefined, 2));

            if (d.name !== undefined && d.name === "Invalid Login") a == undefined ? LoginUser(true) : alert("Login Failed");
            else {
                SugarSessionId = d.id;
                $("#SettingsPageSugarCrmUsername").val("");
                $("#SettingsPageSugarCrmPassword").val("");
                $.mobile.changePage("#HomePage")
            }
        } else alert("An unexpected error occurred logging in.");
        $.mobile.hidePageLoadingMsg()
    })
}
window.onbeforeunload = function () {
    $.get("../service/v2/rest.php", {
        method: "logout",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '[{"session":"' + SugarSessionId + '"}]'
    })
};

function LogOutUser() {
    $.get("../service/v2/rest.php", {
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

function LogCall(a, c) {
    $.get("../service/v2/rest.php", {
        method: "set_entry",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"' + a + '","name_value_list":[{"name":"name","value":"Call placed from mobile device"},{"name":"direction","value":"Outbound"},{"name":"parent_type","value":"' + a + '"},{"name":"parent_id","value":"' + c + '"},{"name":"status","value":"Test"},{"name":"duration_hours","value":0},{"name":"duration_minutes","value":0}]}'
    }, function (b) {
        alert(b)
    })
}

function SugarCrmGetAccountsListFromServer(a) {
    if ($("#AllAccountsListDiv li").length === 0 || AccountsListCurrentOffset !== a) {
        $.mobile.pageLoading();
        AccountsListCurrentOffset = a;
        $.get("../service/v2/rest.php", {
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
                    if (c.result_count === 0) AccountsListCurrentOffset = AccountsListPrevOffset + RowsPerPageInListViews;
                    else if (c.next_offset === 0) AccountsListCurrentOffset = 0;
                    if (c.next_offset === 0 || c.result_count === 0) alert("There are no more records in that direction");
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
                                        $.mobile.pageLoading();
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
            }
            $.mobile.pageLoading(true)
        })
    }
}

function SugarCrmGetAccountDetails() {
    $("#ViewAccountDetailsPageDetailsList li").remove();
    $("#AccountNameH1").html("");
    $("#AccountDescriptionP").text("");
    $.get("../service/v2/rest.php", {
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
                    $("#AccountNameH1").html(a.name_value_list.name.value);
                    $("#AccountDescriptionP").text(a.name_value_list.description.value);
                    $("#ViewAccountDetailsPageDetailsList").append('<li data-role="list-divider">Account Overview</li>');
                    var c = $("<li/>"),
                        b = a.name_value_list.phone_office.value.replace("(", "");
                    b = b.replace(")", "");
                    b = b.replace(" ", "");
                    b = b.replace("-", "");
                    b = b.replace("+1",
                        "");
                    var d = "<h4>" + a.name_value_list.phone_office.value + "</h4>";
                    b = $("<a/>", {
                        href: "tel:+1" + b,
                        rel: "external",
                        style: "text-decoration:none;color:#444;",
                        click: function () {
                            confirm("Log this call?") && LogCall("Accounts", CurrentAccountId);
                            return true
                        }
                    });
                    b.append("<p><br />Office Phone</p>");
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
                        b.append("<p><br />Web Site</p>");
                        b.append(d);
                        c.append(b);
                        $("#ViewAccountDetailsPageDetailsList").append(c)
                    }
                    c = $("<li/>");
                    c.append("<h4>" + a.name_value_list.phone_fax.value + "</h4>");
                    c.append("<p>Fax</p>");
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
                    d.append("<p><br />Billing Address</p>");
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
                    n.append("<p><br />Shipping Address</p>");
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
                    b.append("<p><br />Email</p>");
                    b.append(d);
                    c.append(b);
                    a.name_value_list.email1.value !==
                        "" && $("#ViewAccountDetailsPageDetailsList").append(c);
                    $("#ViewAccountDetailsPageDetailsList").append('<li data-role="list-divider">More Information</li>');
                    a.name_value_list.account_type !== undefined && a.name_value_list.account_type.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Account Type</p><h4>" + a.name_value_list.account_type.value + "</h4></li>");
                    a.name_value_list.industry !== undefined && a.name_value_list.industry.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Industry</p><h4>" +
                        a.name_value_list.industry.value + "</h4></li>");
                    a.name_value_list.annual_revenue !== undefined && a.name_value_list.annual_revenue.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Annual Revenue</p><h4>" + a.name_value_list.annual_revenue.value + "</h4></li>");
                    a.name_value_list.employees !== undefined && a.name_value_list.employees.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Employees</p><h4>" + a.name_value_list.employees.value + "</h4></li>");
                    a.name_value_list.sic_code !==
                        undefined && a.name_value_list.sic_code.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><P><br />SIC Code</p><h4>" + a.name_value_list.sic_code.value + "</h4></li>");
                    a.name_value_list.ticker_symbol !== undefined && a.name_value_list.ticker_symbol.value != "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Ticker Symbol</p><h4>" + a.name_value_list.ticker_symbol.value + "</h4></li>");
                    a.name_value_list.parent_name !== undefined && a.name_value_list.parent_name.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Member of</p><h4>" +
                        a.name_value_list.parent_name.value + "</h4></li>");
                    a.name_value_list.ownership !== undefined && a.name_value_list.ownership.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Ownership</p><h4>" + a.name_value_list.ownership.value + "</h4></li>");
                    a.name_value_list.campaign_name !== undefined && a.name_value_list.campaign_name.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Campaign</p><h4>" + a.name_value_list.campaign_name.value + "</h4></li>");
                    a.name_value_list.rating !==
                        undefined && a.name_value_list.rating.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Rating</p><h4>" + a.name_value_list.rating.value + "</h4></li>");
                    $("#ViewAccountDetailsPageDetailsList").append('<li data-role="list-divider">Other</li>');
                    a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Assigned To</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
                    a.name_value_list.date_modified !==
                        undefined && a.name_value_list.date_modified.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Date Modified</p><h4>" + a.name_value_list.date_modified.value + "</h4></li>");
                    a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewAccountDetailsPageDetailsList").append("<li><p><br />Date Created</p><h4>" + a.name_value_list.date_entered.value + " by " + a.name_value_list.created_by_name.value + "</h4></li>")
                }
        }
        $("#ViewAccountDetailsPageDetailsList").listview("refresh")
    });
    $("#ViewAccountDetailsPageContactsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        $("#ViewAccountDetailsPageContactsListUl").append('<li data-role="list-divider">Contacts</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewAccountDetailsPageContactsListUl").append(a)
                }
            $("#ViewAccountDetailsPageContactsListUl").listview("refresh")
        }
    });
    $("#ViewAccountDetailsPageOpportunitiesListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"opportunities","related_module_query":"","related_fields":["id","name","sales_stage"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        $("#ViewAccountDetailsPageOpportunitiesListUl").append('<li data-role="list-divider">Opportunities</li>');
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
                                e = "<p>" + b.name_value_list.sales_stage.value + "</p>";
                            b = $("<a/>", {
                                href: "#",
                                "data-identity": b.id,
                                click: function () {
                                    CurrentOpportunityId = $(this).data("identity");
                                    $.mobile.changePage("#ViewOpportunityDetailsPage");
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewAccountDetailsPageOpportunitiesListUl").append(a)
                }
        }
        $("#ViewAccountDetailsPageOpportunitiesListUl").listview("refresh")
    });
    $("#ViewAccountDetailsPageLeadsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' +
            SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        $("#ViewAccountDetailsPageLeadsListUl").append('<li data-role="list-divider">Leads</li>');
        if (a !== undefined) {
            a = $.parseJSON(JSON.stringify(a, undefined, 2));
            if (a.name !== undefined && a.name === "Invalid Session ID") {
                SugarSessionId = "";
                $.mobile.changePage("#LoginPage")
            }
            if (a !==
                undefined && a.entry_list !== undefined)
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewAccountDetailsPageLeadsListUl").append(a)
                }
        }
        $("#ViewAccountDetailsPageLeadsListUl").listview("refresh")
    });
    $("#ViewAccountDetailsPageCallsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' +
            CurrentAccountId + '","link_field_name":"calls","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        $("#ViewAccountDetailsPageCallsListUl").append('<li data-role="list-divider">Calls</li>');
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
                                e = "<p>" + b.name_value_list.status.value;
                                e += "<br/>" + b.name_value_list.date_start.value;
                                e += "</p>"
                            }
                            var m = $("<a/>", {
                                href: "#",
                                "data-identity": b.id,
                                click: function () {
                                    CurrentCallId = $(this).data("identity");
                                    $.mobile.changePage("#ViewCallDetailsPage");
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewAccountDetailsPageCallsListUl").append(a)
                }
        }
        $("#ViewAccountDetailsPageCallsListUl").listview("refresh")
    });
    $("#ViewAccountDetailsPageMeetingsListUl li").remove();
    $.get("../service/v2/rest.php", {
            method: "get_relationships",
            input_type: "JSON",
            response_type: "JSON",
            rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"meetings","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
        },
        function (a) {
            $("#ViewAccountDetailsPageMeetingsListUl").append('<li data-role="list-divider">Meetings</li>');
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
                                    e = "<p>" + b.name_value_list.status.value;
                                    if (b.name_value_list.date_start !== undefined) e += "<br/>" + b.name_value_list.date_start.value;
                                    e += "</p>"
                                } else e = "<p></p>";
                                b = $("<a/>", {
                                    href: "#",
                                    "data-identity": b.id,
                                    click: function () {
                                        CurrentMeetingId = $(this).data("identity");
                                        $.mobile.changePage("#ViewMeetingDetailsPage");
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewAccountDetailsPageMeetingsListUl").append(a)
                    }
            }
            $("#ViewAccountDetailsPageMeetingsListUl").listview("refresh")
        });
    $("#ViewAccountDetailsPageTasksListUl li").remove();
    $.get("../service/v2/rest.php", {
            method: "get_relationships",
            input_type: "JSON",
            response_type: "JSON",
            rest_data: '{"session":"' + SugarSessionId + '","module_name":"Accounts","module_id":"' + CurrentAccountId + '","link_field_name":"tasks","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
        },
        function (a) {
            $("#ViewAccountDetailsPageTasksListUl").append('<li data-role="list-divider">Tasks</li>');
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
                                    e = "<p>" + b.name_value_list.status.value;
                                    if (b.name_value_list.date_start !== undefined) e += "<br/>" + b.name_value_list.date_start.value;
                                    e += "</p>"
                                } else e = "<p></p>";
                                b = $("<a/>", {
                                    href: "#",
                                    "data-identity": b.id,
                                    click: function () {
                                        CurrentTaskId = $(this).data("identity");
                                        $.mobile.changePage("#ViewTaskDetailsPage");
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewAccountDetailsPageTasksListUl").append(a)
                    }
            }
            $("#ViewAccountDetailsPageTasksListUl").listview("refresh");
            $.mobile.pageLoading(true)
        })
}

function SugarCrmGetContactListFromServer(a) {
    if ($("#AllContactsListDiv li").length === 0 || ContactsListCurrentOffset !== a) {
        $.mobile.pageLoading();
        ContactsListCurrentOffset = a;
        $.get("../service/v2/rest.php", {
            method: "get_entry_list",
            input_type: "JSON",
            response_type: "JSON",
            rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","query":"","order_by":"name","offset":' + a + ',"select_fields":["first_name","last_name","account_name","title"],"link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews +
                ',"deleted":0}'
        }, function (c) {
            if (c != undefined) {
                c = $.parseJSON(JSON.stringify(c, undefined, 2));
                if (c != undefined && c.entry_list != undefined) {
                    if (c.result_count === 0) ContactsListCurrentOffset = ContactsListPrevOffset + RowsPerPageInListViews;
                    else if (c.next_offset === 0) ContactsListCurrentOffset = 0;
                    if (c.next_offset == 0 || c.result_count == 0) alert("There are no more records in that direction");
                    else {
                        $("#AllContactsListDiv li").remove();
                        var b = 0;
                        for (b = 0; b <= c.entry_list.length; b++)
                            if (c.entry_list[b] != undefined) {
                                var d = c.entry_list[b],
                                    f = $("<li/>"),
                                    e = "<h4>" + d.name_value_list.first_name.value + "&nbsp;" + d.name_value_list.last_name.value + "</h4>",
                                    m = d.name_value_list.title.value;
                                if (d.name_value_list.account_name != undefined) m += " at " + d.name_value_list.account_name.value;
                                m = "<p>" + m + "</p>";
                                d = $("<a/>", {
                                    href: "#",
                                    "data-identity": d.id,
                                    click: function () {
                                        CurrentContactId = $(this).data("identity");
                                        $.mobile.changePage("#ViewContactDetailsPage");
                                        $.mobile.pageLoading();
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
            }
            $.mobile.pageLoading(true)
        })
    }
}

function SugarCrmGetContactDetails() {
    $("#ContactNameH1").html("");
    $("#ContactTitleP").text("");
    $("#ViewContactDetailsPageDetailsList li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_entry",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","id":"' + CurrentContactId + '","select_fields":["first_name","last_name","account_name","title","phone_work","email1","description","primary_address_street","primary_address_city","primary_address_state","primary_address_postalcode","primary_address_country","phone_mobile","phone_fax","department","alt_address_street","alt_address_city","alt_address_state","alt_address_postalcode","alt_address_country"],"link_name_to_fields_array":""}'
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
                    $("#ContactNameH1").html(a.name_value_list.first_name.value + "&nbsp;" + a.name_value_list.last_name.value);
                    var c = a.name_value_list.title.value;
                    if (a.name_value_list.account_name != undefined) c += " at " + a.name_value_list.account_name.value;
                    $("#ContactTitleP").text(c);
                    $("#ViewContactDetailsPageDetailsList").append('<li data-role="list-divider">Contact Information</li>');
                    if (a.name_value_list.phone_work !== undefined && a.name_value_list.phone_work.value !== "") {
                        c = $("<li/>");
                        var b = a.name_value_list.phone_work.value.replace("(", "");
                        b = b.replace(")", "");
                        b = b.replace(" ", "");
                        b = b.replace("-", "");
                        if (a.name_value_list.phone_work !== undefined) {
                            var d = "<h4>" + a.name_value_list.phone_work.value + "</h4>",
                                f = $("<a/>", {
                                    href: "tel:+1" + b,
                                    rel: "external",
                                    style: "text-decoration:none;color:#444;"
                                });
                            f.append("<p><br />Office Phone</p>");
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
                        f.append("<p><br />Email</p>");
                        f.append(d);
                        c.append(f);
                        $("#ViewContactDetailsPageDetailsList").append(c)
                    }
                    if (a.name_value_list.description !== undefined && a.name_value_list.description.value !== "") {
                        c = $("<li/>");
                        d = "<h4>" + a.name_value_list.description.value + "</h4>";
                        c.append("<p><br />Description</p>");
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
                        d.append("<p><br />Primary Address</p>");
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
                            href: "tel:+1" + d,
                            rel: "external",
                            style: "text-decoration:none;color:#444;"
                        });
                        d.append("<p><br />Mobile Phone</p>");
                        d.append(b);
                        c.append(d);
                        $("#ViewContactDetailsPageDetailsList").append(c)
                    }
                    if (a.name_value_list.phone_fax !== undefined && a.name_value_list.phone_fax.value !== "") {
                        b = $("<li/>");
                        c = "<h4>" + a.name_value_list.phone_fax.value + "</h4>";
                        b.append("<p><br />Fax</p>");
                        b.append(c);
                        $("#ViewContactDetailsPageDetailsList").append(b)
                    }
                    if (a.name_value_list.department !== undefined && a.name_value_list.department.value !== "") {
                        b = $("<li/>");
                        c = "<h4>" + a.name_value_list.department.value + "</h4>";
                        b.append("<p><br />Department</p>");
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
                        d.append("<p><br />Other Address</p>");
                        d.append(c);
                        b.append(d);
                        $("#ViewContactDetailsPageDetailsList").append(b)
                    }
                    $("#ViewContactDetailsPageDetailsList").append('<li data-role="list-divider">More Information</li>');
                    a.name_value_list.report_to_name !== undefined && a.name_value_list.report_to_name.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />Reports To</p><h4>" + a.name_value_list.report_to_name.value + "</h4></li>");
                    a.name_value_list.lead_source !== undefined && a.name_value_list.lead_source.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />Lead Source</p><h4>" +
                        a.name_value_list.lead_source.value + "</h4></li>");
                    $("#ViewContactDetailsPageDetailsList").append('<li data-role="list-divider">Other Information</li>');
                    a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />Assigned To</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
                    a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />Date Modified</p><h4>" +
                        a.name_value_list.date_modified.value + "&nbsp;by&nbsp;" + a.name_value_list.modified_by_name.value + "</h4></li>");
                    a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewContactDetailsPageDetailsList").append("<li><p><br />Date Created</p><h4>" + a.name_value_list.date_entered.value + "&nbsp;by&nbsp;" + a.name_value_list.created_by_name.value + "</h4></li>");
                    a.name_value_list.do_not_call !== undefined && a.name_value_list.do_not_call.value == "true" && alert("*NOTE: This Contact is marked as Do Not Call.")
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
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"opportunities","related_module_query":"","related_fields":["id","name","sales_stage"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewContactDetailsPageOpportunitiesListUl").append('<li data-role="list-divider">Opportunities</li>');
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
                                e = "<p>" + b.name_value_list.sales_stage.value + "</p>";
                            b = $("<a/>", {
                                href: "#",
                                "data-identity": b.id,
                                click: function () {
                                    CurrentOpportunityId = $(this).data("identity");
                                    $.mobile.changePage("#ViewOpportunityDetailsPage");
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewContactDetailsPageOpportunitiesListUl").append(a)
                }
            $("#ViewContactDetailsPageOpportunitiesListUl").listview("refresh")
        }
    })
}

function getContactRelatedLeadsInsetList() {
    $("#ViewContactDetailsPageLeadsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewContactDetailsPageLeadsListUl").append('<li data-role="list-divider">Leads</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewContactDetailsPageLeadsListUl").append(a)
                }
            $("#ViewContactDetailsPageLeadsListUl").listview("refresh")
        }
    })
}

function getContactRelatedCallsInsetList() {
    $("#ViewContactDetailsPageCallsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"calls","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewContactDetailsPageCallsListUl").append('<li data-role="list-divider">Calls</li>');
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
                                e = "<p>" + b.name_value_list.status.value;
                                if (b.name_value_list.date_start !=
                                    undefined) e += "<br/>" + b.name_value_list.date_start.value;
                                e += "</p>"
                            } else e = "<p></p>";
                            var m = $("<a/>", {
                                href: "#",
                                "data-identity": b.id,
                                click: function () {
                                    CurrentCallId = $(this).data("identity");
                                    $.mobile.changePage("#ViewCallDetailsPage");
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewContactDetailsPageCallsListUl").append(a)
                }
            $("#ViewContactDetailsPageCallsListUl").listview("refresh")
        }
    })
}

function getContactRelatedMeetingsInsetList() {
    $("#ViewContactDetailsPageMeetingsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"meetings","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewContactDetailsPageMeetingsListUl").append('<li data-role="list-divider">Meetings</li>');
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
                                e = "<p>" + b.name_value_list.status.value;
                                if (b.name_value_list.date_start != undefined) e += "<br/>" + b.name_value_list.date_start.value;
                                e += "</p>"
                            } else e = "<p></p>";
                            b = $("<a/>", {
                                href: "#",
                                "data-identity": b.id,
                                click: function () {
                                    CurrentMeetingId = $(this).data("identity");
                                    $.mobile.changePage("#ViewMeetingDetailsPage");
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewContactDetailsPageMeetingsListUl").append(a)
                }
            $("#ViewContactDetailsPageMeetingsListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function getContactRelatedTasksInsetList() {
    $("#ViewContactDetailsPageTasksListUl li").remove();
    SugarSessionId == "" && $.mobile.changePage("#HomePage");
    $.get("../service/v2/rest.php", {
            method: "get_relationships",
            input_type: "JSON",
            response_type: "JSON",
            rest_data: '{"session":"' + SugarSessionId + '","module_name":"Contacts","module_id":"' + CurrentContactId + '","link_field_name":"tasks","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
        },
        function (a) {
            if (a != undefined) {
                $("#ViewContactDetailsPageTasksListUl").append('<li data-role="list-divider">Tasks</li>');
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
                                    e = "<p>" + b.name_value_list.status.value;
                                    if (b.name_value_list.date_start != undefined) e += "<br/>" + b.name_value_list.date_start.value;
                                    e += "</p>"
                                } else e = "<p></p>";
                                b = $("<a/>", {
                                    href: "#",
                                    "data-identity": b.id,
                                    click: function () {
                                        CurrentTaskId = $(this).data("identity");
                                        $.mobile.changePage("#ViewTaskDetailsPage");
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewContactDetailsPageTasksListUl").append(a)
                    }
                $("#ViewContactDetailsPageTasksListUl").listview("refresh")
            }
            $.mobile.pageLoading(true)
        })
}

function SugarCrmGetOpportunitiesListFromServer(a) {
    if ($("#AllOpportunitiesListDiv li").length === 0 || OpportunitiesListCurrentOffset !== a) {
        $.mobile.pageLoading();
        OpportunitiesListCurrentOffset = a;
        $.get("../service/v2/rest.php", {
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
                        if (c.next_offset == 0 || c.result_count == 0) alert("There are no more records in that direction");
                        else {
                            $("#AllOpportunitiesListDiv li").remove();
                            var b = 0;
                            for (b = 0; b <= c.entry_list.length; b++)
                                if (c.entry_list[b] != undefined) {
                                    var d = c.entry_list[b],
                                        f = $("<li/>"),
                                        e = "<h4>" + d.name_value_list.name.value + "</h4>",
                                        m = $("<p/>");
                                    if (d.name_value_list.amount !== undefined && d.name_value_list.amount.value !== "")
                                        if (d.name_value_list.currency_name !== undefined && d.name_value_list.currency_name.value !== "") {
                                            m.append(d.name_value_list.currency_symbol.value);
                                            m.append(parseFloat(d.name_value_list.amount.value).toFixed(2))
                                        } else {
                                            m.append("$");
                                            m.append(parseFloat(d.name_value_list.amount_usdollar.value).toFixed(2))
                                        }
                                    d.name_value_list.sales_stage !==
                                        undefined && d.name_value_list.sales_stage.value !== "" && m.append(" - " + d.name_value_list.sales_stage.value);
                                    d = $("<a/>", {
                                        href: "#",
                                        "data-identity": d.id,
                                        click: function () {
                                            CurrentOpportunityId = $(this).data("identity");
                                            $.mobile.changePage("#ViewOpportunityDetailsPage");
                                            $.mobile.pageLoading();
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
                $.mobile.pageLoading(true)
            })
    }
}

function SugarCrmGetOpportunityDetails() {
    $.mobile.pageLoading();
    $("#OpportunityNameH1").html("");
    $("#OpportunityDescriptionP").text("");
    $("#ViewOpportunityDetailsPageDetailsList li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#OpportunityNameH1").html(a.name_value_list.name.value);
                    $("#OpportunityDescriptionP").text(a.name_value_list.account_name.value);
                    $("#ViewOpportunityDetailsPageDetailsList").append('<li data-role="list-divider">Opportunity Information</li>');
                    if (a.name_value_list.amount !== undefined && a.name_value_list.amount.value !==
                        "") {
                        var c = $("<li/>"),
                            b = $("<p/>");
                        b.append("<br />Opportunity Amount (");
                        var d = $("<h4/>");
                        if (a.name_value_list.currency_name !== undefined && a.name_value_list.currency_name.value !== "") {
                            b.append(a.name_value_list.currency_name.value + ")");
                            d.append(a.name_value_list.currency_symbol.value);
                            d.append(parseFloat(a.name_value_list.amount.value).toFixed(2))
                        } else {
                            b.append("USD)");
                            d.append("$");
                            d.append(parseFloat(a.name_value_list.amount_usdollar.value).toFixed(2))
                        }
                        b.append(d);
                        c.append(b);
                        c.append(d);
                        $("#ViewOpportunityDetailsPageDetailsList").append(c)
                    }
                    a.name_value_list.date_closed !==
                        undefined && a.name_value_list.date_closed.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Expected Close Date</p><h4>" + a.name_value_list.date_closed.value + "</h4></li>");
                    a.name_value_list.sales_stage !== undefined && a.name_value_list.sales_stage.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Sales Stage</p><h4>" + a.name_value_list.sales_stage.value + "</h4></li>");
                    a.name_value_list.opportunity_type !== undefined && a.name_value_list.opportunity_type.value !==
                        "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Type</p><h4>" + a.name_value_list.opportunity_type.value + "</h4></li>");
                    a.name_value_list.probability !== undefined && a.name_value_list.probability.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Probability(%)</p><h4>" + a.name_value_list.probability.value + "</h4></li>");
                    a.name_value_list.lead_source !== undefined && a.name_value_list.lead_source.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Lead Source</p><h4>" +
                        a.name_value_list.lead_source.value + "</h4></li>");
                    a.name_value_list.next_step !== undefined && a.name_value_list.next_step.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Next Step</p><h4>" + a.name_value_list.next_step.value + "</h4></li>");
                    a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Description</p><h4>" + a.name_value_list.description.value + "</h4></li>");
                    $("#ViewOpportunityDetailsPageDetailsList").append('<li data-role="list-divider">Opportunity Information</li>');
                    a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Assigned To</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
                    a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Date Modified</p><h4>" + a.name_value_list.date_modified.value + "</h4></li>");
                    a.name_value_list.date_entered !==
                        undefined && a.name_value_list.date_entered.value !== "" && $("#ViewOpportunityDetailsPageDetailsList").append("<li><p><br />Date Created</p><h4>" + a.name_value_list.date_entered.value + " by " + a.name_value_list.created_by_name.value + "</h4></li>")
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
    $.mobile.pageLoading();
    $("#ViewOpportunityDetailsPageContactsListUl li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#ViewOpportunityDetailsPageContactsListUl").append('<li data-role="list-divider">Contacts</li>');
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
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewOpportunityDetailsPageContactsListUl").append(a)
                    }
                }
                $("#ViewOpportunityDetailsPageContactsListUl").listview("refresh")
            }
            $.mobile.pageLoading(true)
        })
}

function getOpportunityRelatedLeadsInsetList() {
    $.mobile.pageLoading();
    $("#ViewOpportunityDetailsPageLeadsListUl li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#ViewOpportunityDetailsPageLeadsListUl").append('<li data-role="list-divider">Leads</li>');
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
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewOpportunityDetailsPageLeadsListUl").append(a)
                    }
                }
                $("#ViewOpportunityDetailsPageLeadsListUl").listview("refresh")
            }
            $.mobile.pageLoading(true)
        })
}

function getOpportunityRelatedCallsInsetList() {
    $.mobile.pageLoading();
    $("#ViewOpportunityDetailsPageCallsListUl li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#ViewOpportunityDetailsPageCallsListUl").append('<li data-role="list-divider">Calls</li>');
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
                                    e = "<p>" + b.name_value_list.status.value;
                                    if (b.name_value_list.date_start != undefined) e += "<br/>" + b.name_value_list.date_start.value;
                                    e += "</p>"
                                } else e = "<p></p>";
                                var m = $("<a/>", {
                                    href: "#",
                                    "data-identity": b.id,
                                    click: function () {
                                        CurrentCallId = $(this).data("identity");
                                        $.mobile.changePage("#ViewCallDetailsPage");
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewOpportunityDetailsPageCallsListUl").append(a)
                    }
                }
                $("#ViewOpportunityDetailsPageCallsListUl").listview("refresh")
            }
            $.mobile.pageLoading(true)
        })
}

function getOpportunityRelatedMeetingsInsetList() {
    $.mobile.pageLoading();
    $("#ViewOpportunityDetailsPageMeetingsListUl li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#ViewOpportunityDetailsPageMeetingsListUl").append('<li data-role="list-divider">Meetings</li>');
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
                                    e = "<p>" + b.name_value_list.status.value;
                                    if (b.name_value_list.date_start != undefined) e += "<br/>" + b.name_value_list.date_start.value;
                                    e += "</p>"
                                } else e = "<p></p>";
                                b = $("<a/>", {
                                    href: "#",
                                    "data-identity": b.id,
                                    click: function () {
                                        CurrentMeetingId = $(this).data("identity");
                                        $.mobile.changePage("#ViewMeetingDetailsPage");
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewOpportunityDetailsPageMeetingsListUl").append(a)
                    }
                }
                $("#ViewOpportunityDetailsPageMeetingsListUl").listview("refresh")
            }
            $.mobile.pageLoading(true)
        })
}

function getOpportunityRelatedTasksInsetList() {
    $.mobile.pageLoading();
    $("#ViewOpportunityDetailsPageTasksListUl li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#ViewOpportunityDetailsPageTasksListUl").append('<li data-role="list-divider">Tasks</li>');
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
                                    e = "<p>" + b.name_value_list.status.value;
                                    if (b.name_value_list.date_start != undefined) e += "<br/>" + b.name_value_list.date_start.value;
                                    e += "</p>"
                                } else e = "<p></p>";
                                b = $("<a/>", {
                                    href: "#",
                                    "data-identity": b.id,
                                    click: function () {
                                        CurrentTaskId = $(this).data("identity");
                                        $.mobile.changePage("#ViewTaskDetailsPage");
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewOpportunityDetailsPageTasksListUl").append(a)
                    }
                }
                $("#ViewOpportunityDetailsPageTasksListUl").listview("refresh")
            }
            $.mobile.pageLoading(true)
        })
}

function SugarCrmGetLeadsListFromServer(a) {
    if ($("#AllLeadsListDiv li").length === 0 || LeadsListCurrentOffset !== a) {
        $.mobile.pageLoading();
        LeadsListCurrentOffset = a;
        $.get("../service/v2/rest.php", {
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
                    if (c.next_offset == 0 || c.result_count == 0) alert("There are no more records in that direction");
                    else {
                        $("#AllLeadsListDiv li").remove();
                        var b = 0;
                        for (b = 0; b <= c.entry_list.length; b++)
                            if (c.entry_list[b] != undefined) {
                                var d = c.entry_list[b],
                                    f = $("<li/>"),
                                    e = "<h4>" + d.name_value_list.first_name.value + "&nbsp;" + d.name_value_list.last_name.value + "</h4>",
                                    m = "<p>" + d.name_value_list.title.value + " at&nbsp;" + d.name_value_list.account_name.value + "</p>";
                                d = $("<a/>", {
                                    href: "#",
                                    "data-identity": d.id,
                                    click: function () {
                                        CurrentLeadId = $(this).data("identity");
                                        $.mobile.changePage("#ViewLeadDetailsPage");
                                        $.mobile.pageLoading();
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
            $.mobile.pageLoading(true)
        })
    }
}

function SugarCrmGetLeadDetails() {
    $("#ContactNameH1").html("");
    $("#ContactTitleP").text("");
    $("#ViewLeadDetailsPageDetailsList li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#LeadNameH1").html(a.name_value_list.first_name.value + "&nbsp;" + a.name_value_list.last_name.value);
                    if (a.name_value_list.account_name !== undefined && a.name_value_list.account_name.value !== "") {
                        var c = a.name_value_list.title.value;
                        c += " at " + a.name_value_list.account_name.value;
                        $("#LeadTitleP").text(c)
                    }
                    $("#ViewLeadDetailsPageDetailsList").append('<li data-role="list-divider">Lead Information</li>');
                    if (a.name_value_list.phone_work !==
                        undefined && a.name_value_list.phone_work.value !== "") {
                        c = $("<li/>");
                        var b = a.name_value_list.phone_work.value.replace("(", "");
                        b = b.replace(")", "");
                        b = b.replace(" ", "");
                        b = b.replace("-", "");
                        var d = "<h4>" + a.name_value_list.phone_work.value + "</h4>";
                        b = $("<a/>", {
                            href: "tel:+1" + b,
                            rel: "external",
                            style: "text-decoration:none;color:#444;"
                        });
                        b.append("<p><br />Office Phone</p>");
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
                        d = "<h4>Mobile Phone:&nbsp;" + a.name_value_list.phone_mobile.value + "</h4>";
                        b = $("<a/>", {
                            href: "tel:+1" + b,
                            rel: "external",
                            style: "text-decoration:none;color:#444;"
                        });
                        b.append("<p><br />Mobile Phone</p>");
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
                    a.name_value_list.department !== undefined && a.name_value_list.department.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Department</p><h4>" + a.name_value_list.department.value + "</h4></li>");
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
                        b.append("<p><br />Primary Address</p>");
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
                        b.append("<p><br />Other Address</p>");
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
                        b.append("<p><br />Email</p>");
                        b.append(d);
                        c.append(b);
                        $("#ViewLeadDetailsPageDetailsList").append(c)
                    }
                    a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Description<p><h4>" + a.name_value_list.description.value + "</h4></li>");
                    $("#ViewLeadDetailsPageDetailsList").append('<li data-role="list-divider">More Information</li>');
                    a.name_value_list.status !== undefined && a.name_value_list.status.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Status<p><h4>" + a.name_value_list.status.value + "</h4></li>");
                    a.name_value_list.lead_source !== undefined && a.name_value_list.lead_source.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Source<p><h4>" + a.name_value_list.lead_source.value + "</h4></li>");
                    a.name_value_list.status_description !== undefined && a.name_value_list.status_description.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Status Desccription<p><h4>" +
                        a.name_value_list.status_description.value + "</h4></li>");
                    a.name_value_list.lead_source_description !== undefined && a.name_value_list.lead_source_description.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Source Description<p><h4>" + a.name_value_list.lead_source_description.value + "</h4></li>");
                    a.name_value_list.opportunity_amount !== undefined && a.name_value_list.opportunity_amount.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Opportunity Amount<p><h4>$" + parseFloat(a.name_value_list.opportunity_amount.value).toFixed(2) +
                        "</h4></li>");
                    a.name_value_list.refered_by !== undefined && a.name_value_list.refered_by.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Referred By<p><h4>" + a.name_value_list.refered_by.value + "</h4></li>");
                    a.name_value_list.campaign_name !== undefined && a.name_value_list.campaign_name.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br /><p><h4>Campaign:&nbsp;" + a.name_value_list.campaign_name.value + "</h4></li>");
                    $("#ViewLeadDetailsPageDetailsList").append('<li data-role="list-divider">Other Information</li>');
                    a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Assigned To</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
                    a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Date Modified</p><h4>" + a.name_value_list.date_modified.value + "&nbsp;by&nbsp;" + a.name_value_list.modified_by_name.value +
                        "</h4></li>");
                    a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewLeadDetailsPageDetailsList").append("<li><p><br />Date Created</p><h4>" + a.name_value_list.date_entered.value + "&nbsp;by&nbsp;" + a.name_value_list.created_by_name.value + "</h4></li>");
                    a.name_value_list.do_not_call.value == "true" && alert("*NOTE: This Lead is marked as Do Not Call.")
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
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","module_id":"' + CurrentLeadId + '","link_field_name":"calls","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewLeadDetailsPageCallsListUl").append('<li data-role="list-divider">Calls</li>');
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
                                e = "<p>" + b.name_value_list.status.value;
                                if (b.name_value_list.date_start != undefined) e += "<br/>" + b.name_value_list.date_start.value;
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewLeadDetailsPageCallsListUl").append(a)
                }
            $("#ViewLeadDetailsPageCallsListUl").listview("refresh")
        }
    })
}

function getLeadRelatedMeetingsInsetList() {
    $("#ViewLeadDetailsPageMeetingsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","module_id":"' + CurrentLeadId + '","link_field_name":"meetings","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewLeadDetailsPageMeetingsListUl").append('<li data-role="list-divider">Meetings</li>');
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
                                e = "<p>" + b.name_value_list.status.value;
                                if (b.name_value_list.date_start != undefined) e += "<br/>" + b.name_value_list.date_start.value;
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewLeadDetailsPageMeetingsListUl").append(a)
                }
            $("#ViewLeadDetailsPageMeetingsListUl").listview("refresh")
        }
    })
}

function getLeadRelatedTasksInsetList() {
    $("#ViewLeadDetailsPageTasksListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Leads","module_id":"' + CurrentLeadId + '","link_field_name":"tasks","related_module_query":"","related_fields":["id","name","status","date_start"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewLeadDetailsPageTasksListUl").append('<li data-role="list-divider">Tasks</li>');
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
                                e = "<p>" + b.name_value_list.status.value;
                                if (b.name_value_list.date_start != undefined) e += "<br/>" + b.name_value_list.date_start.value;
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewLeadDetailsPageTasksListUl").append(a)
                }
            $("#ViewLeadDetailsPageTasksListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function SugarCrmGetCallsListFromServer(a) {
    if ($("#AllCallsListDiv li").length === 0 || CallsListCurrentOffset !== a) {
        $.mobile.pageLoading();
        CallsListCurrentOffset = a;
        $.get("../service/v2/rest.php", {
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
                    if (c.next_offset == 0 || c.result_count == 0) alert("There are no more records in that direction");
                    else {
                        $("#AllCallsListDiv li").remove();
                        var b = 0;
                        for (b = 0; b <= c.entry_list.length; b++)
                            if (c.entry_list[b] !=
                                undefined) {
                                var d = c.entry_list[b],
                                    f = $("<li/>"),
                                    e = "<p>" + d.name_value_list.date_start.value + "</p>",
                                    m = "<h4>" + d.name_value_list.name.value + "</h4>",
                                    g = "<p>" + d.name_value_list.direction.value + " " + d.name_value_list.status.value + "</p>";
                                d = $("<a/>", {
                                    href: "#",
                                    "data-identity": d.id,
                                    click: function () {
                                        CurrentCallId = $(this).data("identity");
                                        $.mobile.changePage("#ViewCallDetailsPage");
                                        $.mobile.pageLoading();
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
            $.mobile.pageLoading(true)
        })
    }
}

function SugarCrmGetCallDetails() {
    $.mobile.pageLoading();
    $("#CallNameH1").html("");
    $("#CallSubjectP").text("");
    $("#ViewCallDetailsPageDetailsList li").remove();
    $.get("../service/v2/rest.php", {
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
                    var c = a.name_value_list.direction.value + " " + a.name_value_list.status.value;
                    $("#CallSubjectP").text(c);
                    $("#ViewCallDetailsPageDetailsList").append('<li data-role="list-divider">Call Overview</li>');
                    a.name_value_list.date_start !== undefined && a.name_value_list.date_start.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />Start Date/Time</p><h4>" +
                        a.name_value_list.date_start.value + "</h4></li>");
                    a.name_value_list.duration_hours !== undefined && a.name_value_list.duration_hours.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />Duration</p><h4>" + a.name_value_list.duration_hours.value + "h&nbsp;" + a.name_value_list.duration_minutes.value + "m&nbsp;</h4></li>");
                    a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />Description</p><h4>" + a.name_value_list.description.value +
                        "</h4></li>");
                    $("#ViewCallDetailsPageDetailsList").append('<li data-role="list-divider">Other Information</li>');
                    a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />Assigned To</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
                    a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />Date Modified</p><h4>" +
                        a.name_value_list.date_modified.value + "&nbsp;by&nbsp;" + a.name_value_list.modified_by_name.value + "</h4></li>");
                    a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewCallDetailsPageDetailsList").append("<li><p><br />Date Created</p><h4>" + a.name_value_list.date_entered.value + "&nbsp;by&nbsp;" + a.name_value_list.created_by_name.value + "</h4></li>");
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
    $.get("../service/v2/rest.php", {
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
        $("#ViewCallDetailsPageDetailsList").append('<li data-role="list-divider">Related To</li>');
        $("#ViewCallDetailsPageDetailsList").append("<li>" + b + "</li>");
        $("#ViewCallDetailsPageDetailsList").listview("refresh")
    })
}

function getCallRelatedContactsInsetList() {
    $("#ViewCallDetailsPageContactsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","module_id":"' + CurrentCallId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewCallDetailsPageContactsListUl").append('<li data-role="list-divider">Contacts</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewCallDetailsPageContactsListUl").append(a)
                }
            $("#ViewCallDetailsPageContactsListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function getCallRelatedUsersInsetList() {
    $("#ViewCallDetailsPageUsersListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","module_id":"' + CurrentCallId + '","link_field_name":"users","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewCallDetailsPageUsersListUl").append('<li data-role="list-divider">Users</li>');
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewCallDetailsPageUsersListUl").append(a)
                }
            $("#ViewCallDetailsPageUsersListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function getCallRelatedLeadsInsetList() {
    $("#ViewCallDetailsPageLeadsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","module_id":"' + CurrentCallId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewCallDetailsPageLeadsListUl").append('<li data-role="list-divider">Leads</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewCallDetailsPageLeadsListUl").append(a)
                }
            $("#ViewCallDetailsPageLeadsListUl").listview("refresh")
        }
    })
}

function getCallRelatedNotesInsetList() {
    $("#ViewCallDetailsPageNotesListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Calls","module_id":"' + CurrentCallId + '","link_field_name":"notes","related_module_query":"","related_fields":["id","name","description","date_entered"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewCallDetailsPageNotesListUl").append('<li data-role="list-divider">Notes</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewCallDetailsPageNotesListUl").append(a)
                }
            $("#ViewCallDetailsPageNotesListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function SugarCrmGetMeetingsListFromServer(a) {
    if ($("#AllMeetingsListDiv li").length === 0 || MeetingsListCurrentOffset !== a) {
        $.mobile.pageLoading();
        MeetingsListCurrentOffset = a;
        $.get("../service/v2/rest.php", {
            method: "get_entry_list",
            input_type: "JSON",
            response_type: "JSON",
            rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","query":"","order_by":"date_start desc","offset":' + a + ',"select_fields":"","link_name_to_fields_array":"","max_results":' + RowsPerPageInListViews + ',"deleted":0}'
        }, function (c) {
            if (c !=
                undefined) {
                c = $.parseJSON(JSON.stringify(c, undefined, 2));
                if (c.name !== undefined && c.name === "Invalid Session ID") {
                    SugarSessionId = "";
                    $.mobile.changePage("#LoginPage")
                }
                if (c != undefined && c.entry_list != undefined) {
                    if (c.result_count === 0) MeetingsListCurrentOffset = MeetingsListPrevOffset + RowsPerPageInListViews;
                    else if (c.next_offset === 0) MeetingsListCurrentOffset = 0;
                    if (c.next_offset == 0 || c.result_count == 0) alert("There are no more records in that direction");
                    else {
                        $("#AllMeetingsListDiv li").remove();
                        var b = 0;
                        for (b = 0; b <= c.entry_list.length; b++)
                            if (c.entry_list[b] !=
                                undefined) {
                                var d = c.entry_list[b],
                                    f = $("<li/>"),
                                    e = "<h4>" + d.name_value_list.name.value + "</h4>",
                                    m = "<p>" + d.name_value_list.status.value + " " + d.name_value_list.date_start.value + "</p>";
                                d = $("<a/>", {
                                    href: "#",
                                    "data-identity": d.id,
                                    click: function () {
                                        CurrentMeetingId = $(this).data("identity");
                                        $.mobile.changePage("#ViewMeetingDetailsPage");
                                        $.mobile.pageLoading();
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
                }
            }
            $.mobile.pageLoading(true)
        })
    }
}

function SugarCrmGetMeetingDetails() {
    $.mobile.pageLoading();
    $("#MeetingNameH1").html("");
    $("#MeetingSubjectP").text("");
    $("#ViewMeetingDetailsPageDetailsList li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#MeetingNameH1").html(a.name_value_list.name.value);
                    var c = a.name_value_list.status.value;
                    $("#MeetingSubjectP").text(c);
                    $("#ViewMeetingDetailsPageDetailsList").append('<li data-role="list-divider">Meeting Overview</li>');
                    a.name_value_list.date_start !== undefined && a.name_value_list.date_start.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />Start Date/Time</p><h4>" +
                        a.name_value_list.date_start.value + "</h4></li>");
                    a.name_value_list.duration_hours !== undefined && a.name_value_list.duration_hours.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />Duration</p><h4>" + a.name_value_list.duration_hours.value + "h&nbsp;" + a.name_value_list.duration_minutes.value + "m&nbsp;</h4></li>");
                    a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />Description</p><h4>" + a.name_value_list.description.value +
                        "</h4></li>");
                    $("#ViewMeetingDetailsPageDetailsList").append('<li data-role="list-divider">Other Information</li>');
                    a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />Assigned To</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
                    a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />Date Modified</p><h4>" +
                        a.name_value_list.date_modified.value + "&nbsp;by&nbsp;" + a.name_value_list.modified_by_name.value + "</h4></li>");
                    a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewMeetingDetailsPageDetailsList").append("<li><p><br />Date Created</p><h4>" + a.name_value_list.date_entered.value + "&nbsp;by&nbsp;" + a.name_value_list.created_by_name.value + "</h4></li>");
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
    $.get("../service/v2/rest.php", {
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
        $("#ViewMeetingDetailsPageDetailsList").append('<li data-role="list-divider">Related To</li>');
        $("#ViewMeetingDetailsPageDetailsList").append("<li>" + b + "</li>");
        $("#ViewMeetingDetailsPageDetailsList").listview("refresh")
    })
}

function getMeetingRelatedContactsInsetList() {
    $("#ViewMeetingDetailsPageContactsListUl li").remove();
    SugarSessionId == "" && $.mobile.changePage("#HomePage");
    $.get("../service/v2/rest.php", {
            method: "get_relationships",
            input_type: "JSON",
            response_type: "JSON",
            rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","module_id":"' + CurrentMeetingId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
        },
        function (a) {
            if (a != undefined) {
                $("#ViewMeetingDetailsPageContactsListUl").append('<li data-role="list-divider">Contacts</li>');
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
                                        $.mobile.pageLoading();
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
                        a.append("<h4>No Data</h4>");
                        $("#ViewMeetingDetailsPageContactsListUl").append(a)
                    }
                $("#ViewMeetingDetailsPageContactsListUl").listview("refresh")
            }
            $.mobile.pageLoading(true)
        })
}

function getMeetingRelatedUsersInsetList() {
    $("#ViewMeetingDetailsPageUsersListUl li").remove();
    SugarSessionId == "" && $.mobile.changePage("#HomePage");
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","module_id":"' + CurrentMeetingId + '","link_field_name":"users","related_module_query":"","related_fields":"","related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewMeetingDetailsPageUsersListUl").append('<li data-role="list-divider">Users</li>');
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewMeetingDetailsPageUsersListUl").append(a)
                }
            $("#ViewMeetingDetailsPageUsersListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function getMeetingRelatedLeadsInsetList() {
    $("#ViewMeetingDetailsPageLeadsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","module_id":"' + CurrentMeetingId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewMeetingDetailsPageLeadsListUl").append('<li data-role="list-divider">Leads</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewMeetingDetailsPageLeadsListUl").append(a)
                }
            $("#ViewMeetingDetailsPageLeadsListUl").listview("refresh")
        }
    })
}

function getMeetingRelatedNotesInsetList() {
    $("#ViewMeetingDetailsPageNotesListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Meetings","module_id":"' + CurrentMeetingId + '","link_field_name":"notes","related_module_query":"","related_fields":["id","name","description","date_entered"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewMeetingDetailsPageNotesListUl").append('<li data-role="list-divider">Notes</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewMeetingDetailsPageNotesListUl").append(a)
                }
            $("#ViewMeetingDetailsPageNotesListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function SugarCrmGetTasksListFromServer(a) {
    if ($("#AllTasksListDiv li").length === 0 || TasksListCurrentOffset !== a) {
        $.mobile.pageLoading();
        TasksListCurrentOffset = a;
        $.get("../service/v2/rest.php", {
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
                    if (c.next_offset == 0 || c.result_count == 0) alert("There are no more records in that direction");
                    else {
                        $("#AllTasksListDiv li").remove();
                        var b = 0;
                        for (b = 0; b <= c.entry_list.length; b++)
                            if (c.entry_list[b] !=
                                undefined) {
                                var d = c.entry_list[b],
                                    f = $("<li/>"),
                                    e = "<h4>" + d.name_value_list.name.value + "</h4>",
                                    m = "<p>" + d.name_value_list.status.value + " - " + d.name_value_list.date_due.value + "</p>";
                                d = $("<a/>", {
                                    href: "#",
                                    "data-identity": d.id,
                                    click: function () {
                                        CurrentTaskId = $(this).data("identity");
                                        $.mobile.changePage("#ViewTaskDetailsPage");
                                        $.mobile.pageLoading();
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
            $.mobile.pageLoading(true)
        })
    }
}

function SugarCrmGetTaskDetails() {
    $.mobile.pageLoading();
    $("#TaskNameH1").html("");
    $("#TaskSubjectP").text("");
    $("#ViewTaskDetailsPageDetailsList li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#TaskNameH1").html(a.name_value_list.name.value);
                    var c = a.name_value_list.status.value;
                    $("#TaskSubjectP").text(c);
                    $("#ViewTaskDetailsPageDetailsList").append('<li data-role="list-divider">Task Overview</li>');
                    a.name_value_list.date_due !== undefined && a.name_value_list.date_due.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />Due Date</p><h4>" + a.name_value_list.date_due.value +
                        "</h4></li>");
                    a.name_value_list.duration_hours !== undefined && a.name_value_list.duration_hours.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />Duration</p><h4>" + a.name_value_list.duration_hours.value + "h&nbsp;" + a.name_value_list.duration_minutes.value + "m&nbsp;</h4></li>");
                    a.name_value_list.description !== undefined && a.name_value_list.description.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />Description</p><h4>" + a.name_value_list.description.value + "</h4></li>");
                    $("#ViewTaskDetailsPageDetailsList").append('<li data-role="list-divider">Other Information</li>');
                    a.name_value_list.assigned_user_name !== undefined && a.name_value_list.assigned_user_name.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />Assigned To</p><h4>" + a.name_value_list.assigned_user_name.value + "</h4></li>");
                    a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />Date Modified</p><h4>" +
                        a.name_value_list.date_modified.value + "&nbsp;by&nbsp;" + a.name_value_list.modified_by_name.value + "</h4></li>");
                    a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewTaskDetailsPageDetailsList").append("<li><p><br />Date Created</p><h4>" + a.name_value_list.date_entered.value + "&nbsp;by&nbsp;" + a.name_value_list.created_by_name.value + "</h4></li>");
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
    $.get("../service/v2/rest.php", {
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
        $("#ViewTaskDetailsPageDetailsList").append('<li data-role="list-divider">Related To</li>');
        $("#ViewTaskDetailsPageDetailsList").append("<li>" + b + "</li>");
        $("#ViewTaskDetailsPageDetailsList").listview("refresh")
    })
}

function getTaskRelatedContactsInsetList() {
    $("#ViewTaskDetailsPageContactsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","module_id":"' + CurrentTaskId + '","link_field_name":"contacts","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewTaskDetailsPageContactsListUl").append('<li data-role="list-divider">Contacts</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewTaskDetailsPageContactsListUl").append(a)
                }
            $("#ViewTaskDetailsPageContactsListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function getTaskRelatedUsersInsetList() {
    $("#ViewTaskDetailsPageUsersListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","module_id":"' + CurrentTaskId + '","link_field_name":"users","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewTaskDetailsPageUsersListUl").append('<li data-role="list-divider">Users</li>');
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewTaskDetailsPageUsersListUl").append(a)
                }
            $("#ViewTaskDetailsPageUsersListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function getTaskRelatedLeadsInsetList() {
    $("#ViewTaskDetailsPageLeadsListUl li").remove();
    $.get("../service/v2/rest.php", {
        method: "get_relationships",
        input_type: "JSON",
        response_type: "JSON",
        rest_data: '{"session":"' + SugarSessionId + '","module_name":"Tasks","module_id":"' + CurrentTaskId + '","link_field_name":"leads","related_module_query":"","related_fields":["id","first_name","last_name","title"],"related_module_link_name_to_fields_array":"","deleted":0}'
    }, function (a) {
        if (a != undefined) {
            $("#ViewTaskDetailsPageLeadsListUl").append('<li data-role="list-divider">Leads</li>');
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
                                    $.mobile.pageLoading();
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
                    a.append("<h4>No Data</h4>");
                    $("#ViewTaskDetailsPageLeadsListUl").append(a)
                }
            $("#ViewTaskDetailsPageLeadsListUl").listview("refresh")
        }
        $.mobile.pageLoading(true)
    })
}

function SugarCrmGetNoteDetails() {
    $("#NoteSubjectH1").html("");
    $("#NoteTextP").text("");
    $("#ViewNoteDetailsPageDetailsList li").remove();
    $.get("../service/v2/rest.php", {
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
                    $("#ViewNoteDetailsPageDetailsList").append('<li data-role="list-divider">Other Information</li>');
                    a.name_value_list.date_modified !== undefined && a.name_value_list.date_modified.value !== "" && $("#ViewNoteDetailsPageDetailsList").append("<li><p><br />Date Modified</p><h4>" + a.name_value_list.date_modified.value +
                        "&nbsp;by&nbsp;" + a.name_value_list.modified_by_name.value + "</h4></li>");
                    a.name_value_list.date_entered !== undefined && a.name_value_list.date_entered.value !== "" && $("#ViewNoteDetailsPageDetailsList").append("<li><p><br />Date Created</p><h4>" + a.name_value_list.date_entered.value + "&nbsp;by&nbsp;" + a.name_value_list.created_by_name.value + "</h4></li>");
                    $("#ViewNoteDetailsPageDetailsList").listview("refresh")
                }
        }
        $.mobile.pageLoading(true)
    })
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