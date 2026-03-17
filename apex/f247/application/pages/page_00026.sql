prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Custom Tree IG example'
,p_alias=>'CUSTOM-TREE-IG-EXAMPLE'
,p_step_title=>'Custom Tree IG example'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64521215066374069)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(37852675486108300)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64521959930374090)
,p_plug_name=>'Custom Tree IG example'
,p_region_name=>'TREEGRID_IG'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NODE_ID,',
'    PARENT_ID,',
'    NODE_TYPE,',
'    LABEL,',
'    LEVEL,',
'    CASE ',
'        WHEN NODE_TYPE = ''CUSTOMER'' THEN ''fa-user''',
'        WHEN NODE_TYPE = ''ORDER''    THEN ''fa-hero''',
'        WHEN NODE_TYPE = ''ITEM''     THEN ''fa-package''',
'    END AS ICON',
'FROM (',
'    -- Customers',
'    SELECT ',
'        CUSTOMER_ID AS NODE_ID,',
'        NULL AS PARENT_ID,',
'        ''CUSTOMER'' AS NODE_TYPE,',
'        CUST_FIRST_NAME ||'' ''|| CUST_LAST_NAME AS LABEL',
'    FROM OEHR_CUSTOMERS c',
'    WHERE c.CUSTOMER_ID < 200',
'      AND EXISTS (SELECT 1 ',
'                  FROM OEHR_ORDERS o',
'                  WHERE o.CUSTOMER_ID = c.CUSTOMER_ID)',
'',
'    UNION ALL',
'',
'    -- Orders',
'    SELECT ',
'        ORDER_ID AS NODE_ID,',
'        CUSTOMER_ID AS PARENT_ID,',
'        ''ORDER'' AS NODE_TYPE,',
'        ''Order Num:''||ORDER_ID||'' & Total: $'' || TO_CHAR(ORDER_TOTAL) AS LABEL',
'    FROM OEHR_ORDERS o',
'    WHERE EXISTS (SELECT 1 ',
'                  FROM OEHR_CUSTOMERS c',
'                  WHERE c.CUSTOMER_ID < 200',
'                    AND c.CUSTOMER_ID = o.CUSTOMER_ID)',
'',
'    UNION ALL',
'',
'    -- Order Items',
'    SELECT ',
'        ORDER_ITEM_ID AS NODE_ID,',
'        ORDER_ID AS PARENT_ID,',
'        ''ITEM'' AS NODE_TYPE,',
'        ''Product #: '' || TO_CHAR(PRODUCT_ID)||'' Qty: '' || TO_CHAR(QUANTITY) AS LABEL',
'    FROM OEHR_ORDER_ITEMS i',
'    WHERE EXISTS (SELECT 1 ',
'                  FROM OEHR_ORDERS o',
'                  WHERE o.ORDER_ID = i.ORDER_ID',
'                    AND EXISTS (SELECT 1',
'                                FROM OEHR_CUSTOMERS c',
'                                WHERE c.CUSTOMER_ID < 200',
'                                  AND c.CUSTOMER_ID = o.CUSTOMER_ID))',
')',
'CONNECT BY PRIOR NODE_ID = PARENT_ID',
'START WITH PARENT_ID IS NULL;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Custom Tree IG example'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61720950938585438)
,p_name=>'NODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NODE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unique Identifier'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61721056815585439)
,p_name=>'NODE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NODE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Node Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(61721119996585440)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Label'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<span class="fa &ICON."> &LABEL.</span>')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61721296280585441)
,p_name=>'LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEVEL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Level'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(61721379310585442)
,p_name=>'ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61722113557585450)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64526276881374120)
,p_name=>'PARENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'PARENT_ID'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(65151228263029901)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(64522421694374093)
,p_internal_uid=>64522421694374093
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
,p_show_total_row_count=>false
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
 p_id=>wwv_flow_imp.id(64522846890374096)
,p_interactive_grid_id=>wwv_flow_imp.id(64522421694374093)
,p_static_id=>'645229'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(64523096378374098)
,p_report_id=>wwv_flow_imp.id(64522846890374096)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64526653367374122)
,p_view_id=>wwv_flow_imp.id(64523096378374098)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(64526276881374120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64671001289880932)
,p_view_id=>wwv_flow_imp.id(64523096378374098)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(61720950938585438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64671953161880941)
,p_view_id=>wwv_flow_imp.id(64523096378374098)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(61721056815585439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64672818942880945)
,p_view_id=>wwv_flow_imp.id(64523096378374098)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(61721119996585440)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>766.352
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64673723910880950)
,p_view_id=>wwv_flow_imp.id(64523096378374098)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(61721296280585441)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>554.0083377380371
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64674683583880955)
,p_view_id=>wwv_flow_imp.id(64523096378374098)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(61721379310585442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(65157216442030520)
,p_view_id=>wwv_flow_imp.id(64523096378374098)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(61722113557585450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61721460835585443)
,p_name=>'Pagination Changes'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64521959930374090)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61721583817585444)
,p_event_id=>wwv_flow_imp.id(61721460835585443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ENHANCEIGWITHTREEGRID.PLUGIN'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64521959930374090)
,p_attribute_01=>'.a-GV-table'
,p_attribute_02=>'.a-GV-row'
,p_attribute_03=>'NODE_ID'
,p_attribute_04=>'PARENT_ID'
,p_attribute_05=>'expanded'
,p_attribute_06=>'LABEL'
,p_attribute_07=>'LEVEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61721627925585445)
,p_name=>'Initialize treegrid on IG'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61721744537585446)
,p_event_id=>wwv_flow_imp.id(61721627925585445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ENHANCEIGWITHTREEGRID.PLUGIN'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64521959930374090)
,p_attribute_01=>'.a-GV-table'
,p_attribute_02=>'.a-GV-row'
,p_attribute_03=>'NODE_ID'
,p_attribute_04=>'PARENT_ID'
,p_attribute_05=>'expanded'
,p_attribute_06=>'LABEL'
,p_attribute_07=>'LEVEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65151389799029902)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(64521959930374090)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Custom Tree IG example - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65151389799029902
);
wwv_flow_imp.component_end;
end;
/
