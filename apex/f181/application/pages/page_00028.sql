prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Custom Interactive Grid Row Actions'
,p_alias=>'CUSTOM-INTERACTIVE-GRID-ROW-ACTIONS'
,p_step_title=>'Custom Interactive Grid Row Actions'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function () {',
'    // This function executes when the document is ready.',
'    ',
'    $("#myIG").on("interactivegridviewchange", function(event, data) {',
'        // This event listener triggers when the view of the interactive grid changes.',
'',
'        if (data.view === "grid" && data.created) {',
'            // If the view is the "grid" view and it has just been created:',
'',
'            var view = apex.region("myIG").widget().interactiveGrid("getViews", "grid"),',
'                menu$ = view.rowActionMenu$;',
'            // Get the grid view and the row action menu.',
'',
'            // Add a "Delete Row" action to the row action menu.',
'            menu$.menu("option").items.push({',
'                type: "action",',
'                label: "Delete Row",',
'                action: function(menu, element) {',
'                    var record = view.getContextRecord(element)[0];',
'                    // Get the record associated with the context of the selected row.',
'',
'                    var session = apex.util.getSessionState().appSession;',
'                    // Get the current APEX session.',
'',
'                    window.location.href = url;',
'                    // Redirect the user to the specified URL.',
'                }',
'            });',
'',
'            // Add an "Update Row" action to the row action menu.',
'            menu$.menu("option").items.push({',
'                type: "action",',
'                label: "Update Row",',
'                icon: "fa fa-edit",',
'                action: function(menu, element) {',
'                    var record = view.getContextRecord(element)[0];',
'                    // Get the record associated with the context of the selected row.',
'',
'                    var custId = view.model.getValue(record, "CUSTOMER_ID");',
'                    var custFirstName = view.model.getValue(record, "CUST_FIRST_NAME");',
'                    // Extract the CUSTOMER_ID and CUST_FIRST_NAME from the selected record.',
'',
'                    goToModal(custId, custFirstName);',
'                    // Call the goToModal function with the customer ID and first name as arguments.',
'                }',
'            });',
'',
'            // Add a "Display Customer Name in Alert" action to the row action menu.',
'            menu$.menu("option").items.push({',
'                type: "action",',
'                label: "Display Customer Name in Alert",',
'                action: function(menu, element) {',
'                    var record = view.getContextRecord(element)[0];',
'                    // Get the record associated with the context of the selected row.',
'',
'                    alert("Hi " + view.model.getValue(record, "CUST_FIRST_NAME"));',
'                    // Display an alert with the customer''s first name.',
'                }',
'            });',
'        }',
'    });',
'});',
'',
'function goToModal(userId, custFirstName) {',
'    // This function is used to make an AJAX call to process ''AJAXCB_GOTO_MODAL''.',
'',
'    var ajaxCallback = {',
'        success: function (resp) {',
'            // If the AJAX call is successful, redirect to the URL returned by the server.',
'            apex.navigation.redirect(resp.url);',
'        },',
'        error: function(a, b, c) {',
'            // If the AJAX call fails, log the error details.',
'            console.log(a, b, c);',
'        }',
'    };',
'',
'    var dataSent = {',
'        x01: userId,',
'        x02: custFirstName',
'    };',
'    // Prepare the data to be sent in the AJAX request.',
'',
'    apex.server.process(''AJAXCB_GOTO_MODAL'', dataSent, ajaxCallback);',
'    // Make the AJAX call to the APEX server process ''AJAXCB_GOTO_MODAL''.',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19009111885309742)
,p_plug_name=>'Code'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(32943176440813959)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19009003003309741)
,p_plug_name=>'JS Code'
,p_parent_plug_id=>wwv_flow_imp.id(19009111885309742)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Display JavaScript Code with Syntax Highlighting</title>',
'    <!-- Include Prism.js CSS for styling -->',
'    <link href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/themes/prism-tomorrow.min.css" rel="stylesheet" />',
'</head>',
'<body>',
'',
'    <h2>JavaScript Code Example</h2>',
'    ',
'    <!-- Use the ''language-javascript'' class to specify the language -->',
'    <pre><code class="language-javascript">',
'$(function () {',
'    // This function executes when the document is ready.',
'    ',
'    $("#myIG").on("interactivegridviewchange", function(event, data) {',
'        // This event listener triggers when the view of the interactive grid changes.',
'',
'        if (data.view === "grid" && data.created) {',
'            // If the view is the "grid" view and it has just been created:',
'',
'            var view = apex.region("myIG").widget().interactiveGrid("getViews", "grid"),',
'                menu$ = view.rowActionMenu$;',
'            // Get the grid view and the row action menu.',
'',
'            // Add a "Delete Row" action to the row action menu.',
'            menu$.menu("option").items.push({',
'                type: "action",',
'                label: "Delete Row",',
'                action: function(menu, element) {',
'                    var record = view.getContextRecord(element)[0];',
'                    // Get the record associated with the context of the selected row.',
'',
'                    var session = apex.util.getSessionState().appSession;',
'                    // Get the current APEX session.',
'',
'                    window.location.href = url;',
'                    // Redirect the user to the specified URL.',
'                }',
'            });',
'',
'            // Add an "Update Row" action to the row action menu.',
'            menu$.menu("option").items.push({',
'                type: "action",',
'                label: "Update Row",',
'                icon: "fa fa-edit",',
'                action: function(menu, element) {',
'                    var record = view.getContextRecord(element)[0];',
'                    // Get the record associated with the context of the selected row.',
'',
'                    var custId = view.model.getValue(record, "CUSTOMER_ID");',
'                    var custFirstName = view.model.getValue(record, "CUST_FIRST_NAME");',
'                    // Extract the CUSTOMER_ID and CUST_FIRST_NAME from the selected record.',
'',
'                    goToModal(custId, custFirstName);',
'                    // Call the goToModal function with the customer ID and first name as arguments.',
'                }',
'            });',
'',
'            // Add a "Display Customer Name in Alert" action to the row action menu.',
'            menu$.menu("option").items.push({',
'                type: "action",',
'                label: "Display Customer Name in Alert",',
'                action: function(menu, element) {',
'                    var record = view.getContextRecord(element)[0];',
'                    // Get the record associated with the context of the selected row.',
'',
'                    alert("Hi " + view.model.getValue(record, "CUST_FIRST_NAME"));',
'                    // Display an alert with the customer''s first name.',
'                }',
'            });',
'        }',
'    });',
'});',
'',
'function goToModal(userId, custFirstName) {',
'    // This function is used to make an AJAX call to process ''AJAXCB_GOTO_MODAL''.',
'',
'    var ajaxCallback = {',
'        success: function (resp) {',
'            // If the AJAX call is successful, redirect to the URL returned by the server.',
'            apex.navigation.redirect(resp.url);',
'        },',
'        error: function(a, b, c) {',
'            // If the AJAX call fails, log the error details.',
'            console.log(a, b, c);',
'        }',
'    };',
'',
'    var dataSent = {',
'        x01: userId,',
'        x02: custFirstName',
'    };',
'    // Prepare the data to be sent in the AJAX request.',
'',
'    apex.server.process(''AJAXCB_GOTO_MODAL'', dataSent, ajaxCallback);',
'    // Make the AJAX call to the APEX server process ''AJAXCB_GOTO_MODAL''.',
'}',
'    </code></pre>',
'',
'    <!-- Include Prism.js JavaScript to enable syntax highlighting -->',
'    <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/prism.min.js"></script>',
'    <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/components/prism-javascript.min.js"></script>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19009252280309743)
,p_plug_name=>'PL/SQL'
,p_parent_plug_id=>wwv_flow_imp.id(19009111885309742)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Display PL/SQL Code with Syntax Highlighting</title>',
'    <!-- Include Prism.js CSS for styling -->',
'    <link href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/themes/prism-tomorrow.min.css" rel="stylesheet" />',
'</head>',
'<body>',
'',
'    <h2>PL/SQL Code Example</h2>',
'    ',
'    <!-- Use the ''language-plsql'' class to specify the language -->',
'    <pre><code class="language-plsql">',
'DECLARE',
'    l_url VARCHAR2(2000);',
'BEGIN',
'    l_url := APEX_PAGE.GET_URL(',
'        p_page   => 29,',
'        p_items  => ''P29_CUSTOMER_ID,P29_CUST_FIRST_NAME'',',
'        p_values => apex_application.g_x01 || '','' || apex_application.g_x02',
'    );',
'',
'    apex_json.open_object;',
'    apex_json.write(''url'', l_url);',
'    apex_json.close_all;',
'END;',
'    </code></pre>',
'',
'    <!-- Include Prism.js JavaScript to enable syntax highlighting -->',
'    <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/prism.min.js"></script>',
'    <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/components/prism-plsql.min.js"></script>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19322547763143035)
,p_plug_name=>'Custom Interactive Grid Row Actions'
,p_region_name=>'myIG'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_CUSTOMERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Custom Interactive Grid Row Actions'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19008782180309738)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19008876342309739)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19323824790143039)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:RP,29:P29_CUSTOMER_ID:\&CUSTOMER_ID.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19324844398143041)
,p_name=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19325851554143042)
,p_name=>'CUST_FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cust First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19326862593143043)
,p_name=>'CUST_LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cust Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19327809872143044)
,p_name=>'STREET_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STREET_ADDRESS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Street Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19328849420143044)
,p_name=>'POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTAL_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Postal Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19329861041143045)
,p_name=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CITY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19330873047143045)
,p_name=>'STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_PROVINCE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'State Province'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19331820983143046)
,p_name=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTRY_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Country Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19332893017143046)
,p_name=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>25
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19333866379143047)
,p_name=>'NLS_LANGUAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NLS_LANGUAGE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nls Language'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19334845181143047)
,p_name=>'NLS_TERRITORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NLS_TERRITORY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nls Territory'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19335839422143048)
,p_name=>'CREDIT_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREDIT_LIMIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Credit Limit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19336872875143048)
,p_name=>'CUST_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_EMAIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cust Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19337824714143049)
,p_name=>'ACCOUNT_MGR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCOUNT_MGR_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Account Mgr Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(37863822549757927)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19323052843143037)
,p_internal_uid=>19323052843143037
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19323410658143038)
,p_interactive_grid_id=>wwv_flow_imp.id(19323052843143037)
,p_static_id=>'193235'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19323661915143038)
,p_report_id=>wwv_flow_imp.id(19323410658143038)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19324244655143040)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19323824790143039)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19325274440143042)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19324844398143041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19326217282143043)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19325851554143042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19327247965143043)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(19326862593143043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19328277543143044)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19327809872143044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19329231945143044)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(19328849420143044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19330266584143045)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(19329861041143045)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19331289753143045)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(19330873047143045)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19332212510143046)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(19331820983143046)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19333230339143046)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(19332893017143046)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19334256438143047)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(19333866379143047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19335245283143048)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(19334845181143047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19336257060143048)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(19335839422143048)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19337219711143049)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(19336872875143048)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19338237329143049)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(19337824714143049)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19343302953162190)
,p_view_id=>wwv_flow_imp.id(19323661915143038)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(19008782180309738)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19340589799143054)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32945791020813960)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(32830040333813888)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(33008182163813998)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19339201379143052)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19322547763143035)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:29::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19339559884143052)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19322547763143035)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19340085335143053)
,p_event_id=>wwv_flow_imp.id(19339559884143052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19322547763143035)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19008901142309740)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19322547763143035)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Custom Interactive Grid Row Actions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19008901142309740
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19008682409309737)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAXCB_GOTO_MODAL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_url VARCHAR2(2000);',
'BEGIN',
'    l_url := APEX_PAGE.GET_URL(',
'        p_page   => 29,',
'        p_items  => ''P29_CUSTOMER_ID,P29_CUST_FIRST_NAME'',',
'        p_values => apex_application.g_x01 || '','' || apex_application.g_x02',
'    );',
'',
'    apex_json.open_object;',
'    apex_json.write(''url'', l_url);',
'    apex_json.close_all;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19008682409309737
);
wwv_flow_imp.component_end;
end;
/
