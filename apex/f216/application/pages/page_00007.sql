prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>216
,p_default_id_offset=>61078688106175745
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'MD HEADER'
,p_alias=>'MD-HEADER1'
,p_step_title=>'MD HEADER'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_imp.id(95917232683118491)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112610372598425418)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(96029204467118767)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(95913586647118454)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(96092037249118941)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112611884561425427)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(95950230614118573)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(112612612184425432)
,p_name=>'Master Records'
,p_template=>wwv_flow_imp.id(95951630833118577)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ORDER_ID",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P7_ORDER_ID'', p_values => "ORDER_ID") LINK,',
'    null ICON_CLASS,',
'    null LINK_ATTR,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P7_ORDER_ID,''0'') = "ORDER_ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr("ORDER_ID", 1, 50)||( case when length("ORDER_ID") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    (substr("ORDER_DATE", 1, 50)||( case when length("ORDER_DATE") > 50 then ''...'' else '''' end )) LIST_TEXT,',
'    null LIST_BADGE',
'from "OEHR_ORDERS" x',
'where (:P7_SEARCH is null',
'        or upper(x."ORDER_ID") like ''%''||upper(:P7_SEARCH)||''%''',
'        or upper(x."ORDER_DATE") like ''%''||upper(:P7_SEARCH)||''%''',
'    )',
'order by "ORDER_ID"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(96059210402118845)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112613349701425443)
,p_query_column_id=>1
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'ORDER_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112613714797425446)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112614150030425447)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112614508477425448)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112614918366425449)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112615309438425450)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112615662565425450)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112616055930425451)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112616450981425452)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112616818716425453)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(112617263148425582)
,p_name=>'MD HEADER'
,p_template=>wwv_flow_imp.id(96016828465118736)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDERS'
,p_query_where=>'"ORDER_ID" = :P7_ORDER_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P7_ORDER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(96046623808118811)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(95912908424118448)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112617854191425585)
,p_query_column_id=>1
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Order Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_ID" is not null',
'and "ORDER_ID" = :P7_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112618259346425586)
,p_query_column_id=>2
,p_column_alias=>'ORDER_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Order Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_DATE" is not null',
'and "ORDER_ID" = :P7_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112618647211425587)
,p_query_column_id=>3
,p_column_alias=>'ORDER_MODE'
,p_column_display_sequence=>3
,p_column_heading=>'Order Mode'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_MODE" is not null',
'and "ORDER_ID" = :P7_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112619014366425588)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "CUSTOMER_ID" is not null',
'and "ORDER_ID" = :P7_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112619442279425589)
,p_query_column_id=>5
,p_column_alias=>'ORDER_STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Order Status'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_STATUS" is not null',
'and "ORDER_ID" = :P7_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112619796336425590)
,p_query_column_id=>6
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>6
,p_column_heading=>'Order Total'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_TOTAL" is not null',
'and "ORDER_ID" = :P7_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112620201275425591)
,p_query_column_id=>7
,p_column_alias=>'SALES_REP_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Sales Rep Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "SALES_REP_ID" is not null',
'and "ORDER_ID" = :P7_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(112620620385425592)
,p_query_column_id=>8
,p_column_alias=>'PROMOTION_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Promotion Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "PROMOTION_ID" is not null',
'and "ORDER_ID" = :P7_ORDER_ID'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112626507901425614)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(95950230614118573)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_ORDER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112626942326425615)
,p_plug_name=>'MATER MD'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(96007049176118711)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDER_ITEMS'
,p_query_where=>'"ORDER_ID" = :P7_ORDER_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_ORDER_ID'
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
 p_id=>wwv_flow_imp.id(111032721524545689)
,p_name=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
,p_required_patch=>wwv_flow_imp.id(95912908424118448)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111032797864545690)
,p_name=>'LINE_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Line Item Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
,p_required_patch=>wwv_flow_imp.id(95912908424118448)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111032973290545691)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Product Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
,p_required_patch=>wwv_flow_imp.id(95912908424118448)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111033045414545692)
,p_name=>'UNIT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
,p_required_patch=>wwv_flow_imp.id(95912908424118448)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111033184013545693)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
,p_required_patch=>wwv_flow_imp.id(95912908424118448)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111033244019545694)
,p_name=>'ORDER_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_required_patch=>wwv_flow_imp.id(95912908424118448)
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(111032668979545688)
,p_internal_uid=>49953980873369943
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(112651076217430298)
,p_interactive_grid_id=>wwv_flow_imp.id(111032668979545688)
,p_static_id=>'515724'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(112651273623430299)
,p_report_id=>wwv_flow_imp.id(112651076217430298)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112651701163430310)
,p_view_id=>wwv_flow_imp.id(112651273623430299)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(111032721524545689)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112652623406430320)
,p_view_id=>wwv_flow_imp.id(112651273623430299)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(111032797864545690)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112653552480430327)
,p_view_id=>wwv_flow_imp.id(112651273623430299)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(111032973290545691)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112654466077430332)
,p_view_id=>wwv_flow_imp.id(112651273623430299)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(111033045414545692)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112655314639430337)
,p_view_id=>wwv_flow_imp.id(112651273623430299)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(111033184013545693)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(112656220744430342)
,p_view_id=>wwv_flow_imp.id(112651273623430299)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(111033244019545694)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112644363318425733)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(95950230614118573)
,p_plug_display_sequence=>70
,p_plug_source=>'No Record Selected'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P7_ORDER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112644856930425734)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(112617263148425582)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(96090577397118937)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP,15:P15_ORDER_ID:&P7_ORDER_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112611152745425425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(112610372598425418)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(96090577397118937)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.:RESET:&DEBUG.:RP,7::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112632677992425633)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(112626942326425615)
,p_button_name=>'POP_OEHR_ORDER_ITEMS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(96089729220118934)
,p_button_image_alt=>'Add MATER MD (EDIT)'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP,17:P17_ORDER_ID:&P7_ORDER_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112611568116425426)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(112610372598425418)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(96090577397118937)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP,15::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112612297426425431)
,p_name=>'P7_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112611884561425427)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087683119118924)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112626226611425612)
,p_name=>'P7_ORDER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112617263148425582)
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112645176583425735)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(112617263148425582)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_required_patch=>wwv_flow_imp.id(95912908424118448)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112645709866425736)
,p_event_id=>wwv_flow_imp.id(112645176583425735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112617263148425582)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112646240524425737)
,p_event_id=>wwv_flow_imp.id(112645176583425735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''MD HEADER row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112626990654425616)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(112626942326425615)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112633296530425637)
,p_event_id=>wwv_flow_imp.id(112626990654425616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112626942326425615)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112633819265425638)
,p_event_id=>wwv_flow_imp.id(112626990654425616)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''MATER MD row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112645211293425735)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112646992720425740)
,p_event_id=>wwv_flow_imp.id(112645211293425735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112612612184425432)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112647538814425741)
,p_event_id=>wwv_flow_imp.id(112645211293425735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
