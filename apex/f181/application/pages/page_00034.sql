prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_name=>'OEHR_CUSTOMER_FORM'
,p_alias=>'OEHR-CUSTOMER-FORM'
,p_step_title=>'OEHR_CUSTOMER_FORM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function SetOrderID() {',
'    const Order_ID = apex.item(''P34_CURRENT_CUSTOMER_ID'').getValue();',
'',
'    try {',
'        // Call the APEX AJAX process',
'        apex.server.process(',
'            "SET_VALUE", // Name of your AJAX process in APEX',
'            {',
'                x01: Order_ID // Passing the Order_ID to the server as x01 parameter',
'            },',
'            {',
'                success: function(pData) {',
'                    console.log(''Success5'');',
'                },',
'                error: function(xhr, status, error) {',
'                    console.error(''Failed'');',
'                }',
'            }',
'        );',
'    } catch (error) {',
'        console.error(''Error processing:'', error);',
'    }',
'}',
'',
'',
'',
'function setColumnEditable(isEditable) {',
'    var ig$ = apex.region("myIG").widget().interactiveGrid("getViews", "grid").view$;',
'    var grid = ig$.grid("instance");',
'    var columns = grid.option("columns");',
'',
'    // Iterate over the columns to find the specific column',
'    columns.forEach(function(column) {',
'        if (column.id === "ORDER_STATUS") { // Use column.id or another property to identify your column',
'            // Set the readOnly property based on the isEditable parameter',
'            column.readOnly = !isEditable;',
'',
'            // Apply or remove the ''is-readonly'' class based on editability',
'            ig$.find("td[headers=''" + column.id + "'']").toggleClass("is-readonly", !isEditable);',
'        }',
'    });',
'',
'    // Refresh the grid to apply the changes',
'    ig$.grid("refresh");',
'}',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.equalheight > .col > .t-Region{',
'    height: 100%;',
'}',
'',
'.button {',
'    font-family: Arial, sans-serif;',
'    font-size: 18px;',
'    font-weight: bold;',
'    color: #333;',
'    background-color: #e0e0e0;',
'    border: 1px solid #999;',
'    padding: 8px 12px;',
'    border-radius: 4px;',
'    cursor: pointer;',
'    text-align: center;',
'    width: 50px;',
'    transition: background-color 0.3s ease, color 0.3s ease;',
'}',
'',
'.button:hover {',
'    background-color: #d0d0d0;',
'    color: #000;',
'}',
'',
'.is-readonly1 {',
'    pointer-events: none; /* Prevents interactions */',
'    background-color: #f0f0f0; /* Optional: Change background to indicate non-editability */',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18660405109533429)
,p_plug_name=>'OEHR_ORDERS'
,p_region_name=>'myIG'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32923568116813951)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDERS'
,p_query_where=>'CUSTOMER_ID = :P34_CUSTOMER_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18660645874533431)
,p_name=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ORDER ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18660763132533432)
,p_name=>'ORDER_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18660822048533433)
,p_name=>'ORDER_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_MODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>8
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18660967619533434)
,p_name=>'CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Customer Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18661077286533435)
,p_name=>'ORDER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_STATUS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Status'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18661125096533436)
,p_name=>'ORDER_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_TOTAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18661226575533437)
,p_name=>'SALES_REP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALES_REP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sales Rep Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18661325818533438)
,p_name=>'PROMOTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMOTION_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Promotion Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19006111774309712)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19006258761309713)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(18660509531533430)
,p_internal_uid=>18660509531533430
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(18988691053220080)
,p_interactive_grid_id=>wwv_flow_imp.id(18660509531533430)
,p_static_id=>'189887'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(18988829050220081)
,p_report_id=>wwv_flow_imp.id(18988691053220080)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18989354367220093)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18660645874533431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18990216752220100)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(18660763132533432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18991132397220103)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(18660822048533433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18992009114220106)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(18660967619533434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18992909136220109)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(18661077286533435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18993895573220112)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(18661125096533436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18994617309220115)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(18661226575533437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18995594052220118)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(18661325818533438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19024668481435900)
,p_view_id=>wwv_flow_imp.id(18988829050220081)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(19006111774309712)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18661411055533439)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(32869573136813927)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18950209600164329)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18950981858164571)
,p_plug_name=>'OEHR_CUSTOMER_FORM'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18659845381533423)
,p_plug_name=>'Customer Info'
,p_parent_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>150
,p_plug_grid_row_css_classes=>'equalheight'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18659912347533424)
,p_plug_name=>'Customer Address'
,p_parent_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18660058771533425)
,p_plug_name=>'Customer Country'
,p_parent_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>210
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18660190082533426)
,p_plug_name=>'Other Customer Info'
,p_parent_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>220
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18661549461533440)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18661411055533439)
,p_button_name=>'GetMIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'<<'
,p_button_css_classes=>'button'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18661623516533441)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18661411055533439)
,p_button_name=>'GetPREV'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'<'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_max_customer_id NUMBER;',
'    l_current_customer_id NUMBER;',
'BEGIN',
'    ',
'    l_max_customer_id := customer_pkg.get_min_customer_id;',
'    ',
'    ',
'    l_current_customer_id := :P34_CUSTOMER_ID;',
'    ',
'    ',
'    RETURN l_current_customer_id > l_max_customer_id;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'button'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18661740749533442)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18661411055533439)
,p_button_name=>'GetNEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'>'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_max_customer_id NUMBER;',
'    l_current_customer_id NUMBER;',
'BEGIN',
'    ',
'    l_max_customer_id := customer_pkg.get_max_customer_id;',
'    ',
'    ',
'    l_current_customer_id := :P34_CUSTOMER_ID;',
'    ',
'    ',
'    RETURN l_current_customer_id < l_max_customer_id;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'button'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18661821908533443)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18661411055533439)
,p_button_name=>'GetMAX'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'>>'
,p_button_css_classes=>'button'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18962022564164587)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P34_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18961076791164585)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18962406348164588)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P34_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18961654201164587)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P34_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18962761759164588)
,p_branch_name=>'Go To Page 34'
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>34
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18951203105164572)
,p_name=>'P34_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18659845381533423)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'CUSTOMER ID'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select CUSTOMER_ID from OEHR_CUSTOMERS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18951600325164576)
,p_name=>'P34_CUST_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18659845381533423)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Cust First Name'
,p_source=>'CUST_FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(33005388465813994)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18952003574164577)
,p_name=>'P34_CUST_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18659845381533423)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Cust Last Name'
,p_source=>'CUST_LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(33005388465813994)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18952430481164577)
,p_name=>'P34_STREET_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18659912347533424)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Street Address'
,p_source=>'STREET_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18952800616164578)
,p_name=>'P34_POSTAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18659912347533424)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Postal Code'
,p_source=>'POSTAL_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18953247768164578)
,p_name=>'P34_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18659912347533424)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18953659885164578)
,p_name=>'P34_STATE_PROVINCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18659912347533424)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'State Province'
,p_source=>'STATE_PROVINCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18954002653164578)
,p_name=>'P34_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18660058771533425)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Country Id'
,p_source=>'COUNTRY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18954476508164579)
,p_name=>'P34_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18660058771533425)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18954897191164579)
,p_name=>'P34_NLS_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18660058771533425)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Nls Language'
,p_source=>'NLS_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18955229868164579)
,p_name=>'P34_NLS_TERRITORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18660058771533425)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Nls Territory'
,p_source=>'NLS_TERRITORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18955674305164580)
,p_name=>'P34_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18660190082533426)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18956059953164580)
,p_name=>'P34_CUST_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18660190082533426)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Cust Email'
,p_source=>'CUST_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18956427442164580)
,p_name=>'P34_ACCOUNT_MGR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18660190082533426)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'Account Mgr Id'
,p_source=>'ACCOUNT_MGR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OEHR_EMPLOYEES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19006477874309715)
,p_name=>'P34_CURRENT_CUSTOMER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18660405109533429)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19007887418309729)
,p_name=>'P34_CHECK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18660190082533426)
,p_prompt=>'Check'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19008596366309736)
,p_name=>'P34_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18659845381533423)
,p_item_source_plug_id=>wwv_flow_imp.id(18950981858164571)
,p_prompt=>'First Name'
,p_source=>'CUST_FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18660256719533427)
,p_name=>'Submit Page after Selection Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_CUSTOMER_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18660398150533428)
,p_event_id=>wwv_flow_imp.id(18660256719533427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19005989861309710)
,p_name=>'SaveonChange'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18660405109533429)
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>300
,p_execution_immediate=>false
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19006073488309711)
,p_event_id=>wwv_flow_imp.id(19005989861309710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig$ = apex.region("myIG").widget();',
'',
'ig$.interactiveGrid("getActions").invoke("save");',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19006638916309717)
,p_event_id=>wwv_flow_imp.id(19005989861309710)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, i_customer_ids = ":", i_customer_id,',
'',
'model = this.data.model;',
'',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'    ',
'    i_customer_id = model.getValue( this.data.selectedRecords[i], "ORDER_ID");',
'    ',
'    //i_customer_ids += model.getValue( this.data.selectedRecords[i], "CUSTOMER_ID") + ":";',
'    ',
'}',
'',
'//apex.item( "P12_customer_idS" ).setValue (i_customer_ids);',
'apex.item( "P34_CURRENT_CUSTOMER_ID" ).setValue (i_customer_id);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19007756851309728)
,p_event_id=>wwv_flow_imp.id(19005989861309710)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'TEST'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'SetOrderID()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19007962180309730)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_CHECK'
,p_condition_element=>'P34_CHECK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19008009389309731)
,p_event_id=>wwv_flow_imp.id(19007962180309730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setColumnEditable(true)'
,p_build_option_id=>wwv_flow_imp.id(32829478949813884)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19008175710309732)
,p_event_id=>wwv_flow_imp.id(19007962180309730)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//setColumnEditable(false)',
'var view$ = apex.region("myIG").widget().interactiveGrid("getViews").grid.view$;',
'',
'view$.grid("option").columns[0].ORDER_STATUS.readonly = false;',
'',
'view$.grid("refreshColumns");',
'',
'view$.grid("refresh");'))
,p_build_option_id=>wwv_flow_imp.id(32829478949813884)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19008203456309733)
,p_event_id=>wwv_flow_imp.id(19007962180309730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view$ = apex.region("myIG").widget().interactiveGrid("getViews").grid.view$;',
'',
'view$.grid("option").columns[0].ORDER_STATUS.readonly = true;',
'',
'view$.grid("refreshColumns");',
'',
'view$.grid("refresh");'))
,p_build_option_id=>wwv_flow_imp.id(32829478949813884)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19008401350309735)
,p_event_id=>wwv_flow_imp.id(19007962180309730)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view$ = apex.region("myIG").widget().interactiveGrid("getViews", "grid").view$;',
'',
'// Get the column you want to make non-editable by its name or index',
'var columnName = "ORDER_STATUS"; // Replace with your column name',
'',
'// Add the CSS class to the column cells',
'view$.find("td[data-column=''" + columnName + "'']").removeClass("is-readonly1");',
'',
'view$.grid("refreshColumns");',
'',
'view$.grid("refresh");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19008366015309734)
,p_event_id=>wwv_flow_imp.id(19007962180309730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view$ = apex.region("myIG").widget().interactiveGrid("getViews", "grid").view$;',
'',
'// Get the column you want to make non-editable by its name or index',
'var columnName = "ORDER_STATUS"; // Replace with your column name',
'',
'// Add the CSS class to the column cells',
'view$.find("td[data-column=''" + columnName + "'']").addClass("is-readonly1");',
'',
'// Refresh the grid to reflect the changes',
'view$.grid("refreshColumns");',
'',
'view$.grid("refresh");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18662544530533450)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Chain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>18662544530533450
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18963677258164591)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18950981858164571)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form OEHR_CUSTOMER_FORM'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,CREATE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Update/Insert'
,p_internal_uid=>18963677258164591
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19006393615309714)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18660405109533429)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'OEHR_ORDERS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Order ID: &P34_CURRENT_CUSTOMER_ID. Updated'
,p_internal_uid=>19006393615309714
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18963202702164590)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18950981858164571)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form OEHR_CUSTOMER_FORM'
,p_internal_uid=>18963202702164590
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19007657566309727)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_VALUE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_Order_ID NUMBER := apex_application.g_x01;',
' ',
'BEGIN',
'',
'',
'  APEX_UTIL.SET_SESSION_STATE(''P34_CURRENT_CUSTOMER_ID'',v_Order_ID);',
'    ',
'    -- Return a JSON response',
'    htp.p(''{"status":"success"}'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19007657566309727
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18662194108533446)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(18662544530533450)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Min'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'CUSTOMER_PKG'
,p_attribute_04=>'GET_MIN_CUSTOMER_ID'
,p_process_when_button_id=>wwv_flow_imp.id(18661549461533440)
,p_internal_uid=>18662194108533446
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18662296918533447)
,p_page_process_id=>wwv_flow_imp.id(18662194108533446)
,p_page_id=>34
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19005304973309704)
,p_process_sequence=>20
,p_parent_process_id=>wwv_flow_imp.id(18662544530533450)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Get Prev'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'CUSTOMER_PKG'
,p_attribute_04=>'GET_PREV_CUSTOMER_ID'
,p_process_when_button_id=>wwv_flow_imp.id(18661623516533441)
,p_internal_uid=>19005304973309704
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19005492135309705)
,p_page_process_id=>wwv_flow_imp.id(19005304973309704)
,p_page_id=>34
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19005566420309706)
,p_page_process_id=>wwv_flow_imp.id(19005304973309704)
,p_page_id=>34
,p_name=>'p_current_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19005140500309702)
,p_process_sequence=>30
,p_parent_process_id=>wwv_flow_imp.id(18662544530533450)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Get Next'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'CUSTOMER_PKG'
,p_attribute_04=>'GET_NEXT_CUSTOMER_ID'
,p_process_when_button_id=>wwv_flow_imp.id(18661740749533442)
,p_internal_uid=>19005140500309702
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19005297244309703)
,p_page_process_id=>wwv_flow_imp.id(19005140500309702)
,p_page_id=>34
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19005691019309707)
,p_page_process_id=>wwv_flow_imp.id(19005140500309702)
,p_page_id=>34
,p_name=>'p_current_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18662331810533448)
,p_process_sequence=>50
,p_parent_process_id=>wwv_flow_imp.id(18662544530533450)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set MAX'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'CUSTOMER_PKG'
,p_attribute_04=>'GET_MAX_CUSTOMER_ID'
,p_process_when_button_id=>wwv_flow_imp.id(18661821908533443)
,p_internal_uid=>18662331810533448
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(18662402460533449)
,p_page_process_id=>wwv_flow_imp.id(18662331810533448)
,p_page_id=>34
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_ID'
);
wwv_flow_imp.component_end;
end;
/
