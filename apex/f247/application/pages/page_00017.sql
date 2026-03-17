prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'OEHR Employees Custom Interactive Grid'
,p_alias=>'OEHR-EMPLOYEES-CUSTOM-INTERACTIVE-GRID'
,p_step_title=>'OEHR Employees Custom Interactive Grid'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MY_IG .fa-pencil {',
'  color: rgb(133, 133, 208);',
'   font-size: 2em;',
'   margin-right: 1em;',
'}',
'#MY_IG .fa-trash-o {',
'  color: rgb(192, 104, 104);',
'   font-size: 2em;',
'}',
'',
'#MY_IG .fa-plus-square-o{',
'    color: rgb(95, 172, 95);',
'}',
'',
'.mgr-img {',
'width: 25%;            /* scale image to 25% of its container width */',
'  display: block;        /* make it block so margin works */',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42255613585551661)
,p_plug_name=>'OEHR Employees Custom Interactive Grid'
,p_region_name=>'MY_IG'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.EMPLOYEE_ID,',
'       E.FIRST_NAME,',
'       E.LAST_NAME,',
'       E.EMAIL,',
'       E.PHONE_NUMBER,',
'       E.HIRE_DATE,',
'       E.JOB_ID,',
'       E.SALARY,',
'       E.COMMISSION_PCT,',
'',
'       CASE ',
'           WHEN E.MANAGER_ID IS NULL THEN',
'               ''<span aria-hidden="true" class="fa fa-plus-square-o fa-2x" ''',
'               || ''style="color: green; vertical-align: middle;"></span>''',
'               || ''<span style="color: green; font-size: inherit; margin-left: 0.25em;">Add</span>''',
'           WHEN E.MANAGER_ID = 100 THEN',
'               ''<img class="mgr-img" src="#APP_FILES#persona-female04-oracle.png" /> ''',
'               || M.FIRST_NAME || '' '' || M.LAST_NAME',
'           WHEN E.MANAGER_ID = 123 THEN',
'               ''<img class="mgr-img" src="#APP_FILES#persona-female01-apex.png" /> ''',
'               || M.FIRST_NAME || '' '' || M.LAST_NAME',
'           WHEN E.MANAGER_ID = 122 THEN',
'               ''<img class="mgr-img" src="#APP_FILES#persona-female03.png" /> ''',
'               || M.FIRST_NAME || '' '' || M.LAST_NAME',
'           WHEN E.MANAGER_ID = 121 THEN',
'               ''<img class="mgr-img" src="#APP_FILES#persona-male01-apex.png" /> ''',
'               || M.FIRST_NAME || '' '' || M.LAST_NAME',
'           WHEN E.MANAGER_ID = 120 THEN',
'               ''<img class="mgr-img" src="#APP_FILES#persona-male03.png" /> ''',
'               || M.FIRST_NAME || '' '' || M.LAST_NAME',
'           WHEN E.MANAGER_ID = 124 THEN',
'               ''<img class="mgr-img" src="#APP_FILES#persona-male04-apex.png" /> ''',
'               || M.FIRST_NAME || '' '' || M.LAST_NAME',
'           ELSE',
'               TO_CHAR(E.MANAGER_ID) || '' (No Manager Icon)''',
'       END AS MANAGER_ID,',
'',
'       D.DEPARTMENT_NAME,',
'       E.DEPARTMENT_ID,',
'       '''' AS Action',
'',
'FROM OEHR_EMPLOYEES E',
'JOIN OEHR_DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID',
'LEFT JOIN OEHR_EMPLOYEES M ON M.EMPLOYEE_ID = E.MANAGER_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'OEHR Employees Custom Interactive Grid'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41772316505015906)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41772420072015907)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41772626451015909)
,p_name=>'DEPARTMENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(41773462117015917)
,p_name=>'ACTION'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Action'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span class="fa fa-pencil" aria-hidden="true"></span>',
    '<span class="fa fa-trash-o fam-is-danger"',
    '      aria-hidden="true"></span>',
    '')))).to_clob
,p_static_id=>'ACTION'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41773974140015922)
,p_name=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Department Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42256982821551651)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:RP,18:P18_EMPLOYEE_ID:\&EMPLOYEE_ID.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
,p_required_patch=>wwv_flow_imp.id(37852063688108306)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42257907368551646)
,p_name=>'EMPLOYEE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(42258892887551640)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(42259819571551637)
,p_name=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(42260889712551634)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(42261807356551631)
,p_name=>'PHONE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(42262884179551627)
,p_name=>'HIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIRE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Hire Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(42263898895551624)
,p_name=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Job Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(42245009256551729)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
 p_id=>wwv_flow_imp.id(42264811589551621)
,p_name=>'SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALARY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Salary'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(42265883800551618)
,p_name=>'COMMISSION_PCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMISSION_PCT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commission Pct'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(42266806591551614)
,p_name=>'MANAGER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANAGER_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Manager Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '&MANAGER_ID.')).to_clob
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(42256162374551656)
,p_internal_uid=>42256162374551656
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(42256564722551654)
,p_interactive_grid_id=>wwv_flow_imp.id(42256162374551656)
,p_static_id=>'422566'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(42256738092551653)
,p_report_id=>wwv_flow_imp.id(42256564722551654)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42257386245551649)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(42256982821551651)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42258226932551645)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(42257907368551646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42259236779551639)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(42258892887551640)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42260259149551636)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(42259819571551637)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42261226418551633)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(42260889712551634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42262252875551629)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(42261807356551631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42263234101551626)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(42262884179551627)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42264236245551623)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(42263898895551624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42265214106551620)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(42264811589551621)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42266291852551616)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(42265883800551618)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42267221408551613)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(42266806591551614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42274705936534172)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(41772316505015906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42282403973474253)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(41772626451015909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42308181877352662)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(41773462117015917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42334071232772009)
,p_view_id=>wwv_flow_imp.id(42256738092551653)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(41773974140015922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42271608944551591)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42270037428551601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(42255613585551661)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:18::'
,p_required_patch=>wwv_flow_imp.id(37852063688108306)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42270337422551600)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(42255613585551661)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42270847950551596)
,p_event_id=>wwv_flow_imp.id(42270337422551600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(42255613585551661)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41772960153015912)
,p_name=>'Click trashcan'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fa-trash-o'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41773064460015913)
,p_event_id=>wwv_flow_imp.id(41772960153015912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $row = $(this.triggeringElement).closest(''tr'');',
'var employeeId = $row.data(''id'');',
'var ig$ = apex.region("MY_IG").widget();    ',
'var model = ig$.interactiveGrid("getViews", "grid").model;',
'',
'var record;',
'',
'model.forEach(function(rec) {',
'  if(model.getValue(rec, "EMPLOYEE_ID") == employeeId) {',
'    record = rec;',
'    return true;',
'  }',
'});',
'',
'if (record) {',
'  model.deleteRecords([record], {onlyMarkForDelete: true});',
'} else {',
'  console.warn("Record with PK " + employeeId + " not found");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41773123338015914)
,p_name=>'Click Pencil'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fa-pencil'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41773877636015921)
,p_event_id=>wwv_flow_imp.id(41773123338015914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(''Pencil Clicked'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41773205785015915)
,p_event_id=>wwv_flow_imp.id(41773123338015914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $row = $(this.triggeringElement).closest(''tr'');',
'var employeeId = $row.data(''id'');',
'console.log(''employeeId'' + employeeId);',
'',
'// Check if employeeId is not null or undefined to avoid sending null values to the server process',
'if (employeeId) {',
'  apex.server.process("GET_URL", {',
'    x01: $(this.triggeringElement).closest("tr").data("id")',
'  }, {',
'    dataType: "text"',
'  }).done(function(pData){',
'    if (!pData) {',
'      console.error("No URL returned!");',
'      return;',
'    }',
'',
'    // open, then refresh when it''s closed',
'    apex.navigation',
'      .dialog(pData, {',
'        title:  "Edit Employee",',
'        height: 600,',
'        width:  800,',
'        modal:  true,',
'        close: function() {',
'    // this function fires as soon as the user clicks any Close/Save/Delete that closes the dialog',
'            if ( sessionStorage.getItem(''refreshEmpGrid'') === ''true'' ) {',
'                apex.region("MY_IG").refresh();',
'                sessionStorage.removeItem(''refreshEmpGrid'');',
'            }',
'        } ',
'     })',
'     ',
'  });',
'',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41772562841015908)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(42255613585551661)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'OEHR Employees Custom Interactive Grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(37852063688108306)
,p_internal_uid=>41772562841015908
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41773788988015920)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(42255613585551661)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'OEHR Employees Custom Interactive Grid - Save Interactive Grid Data_1'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  case :APEX$ROW_STATUS',
'    when ''C'' then',
'      insert into oehr_employees (',
'        first_name,',
'        last_name,',
'        email,',
'        phone_number,',
'        hire_date,',
'        job_id,',
'        salary,',
'        commission_pct',
'       ',
'      )',
'      values (',
'        :FIRST_NAME,',
'        :LAST_NAME,',
'        :EMAIL,',
'        :PHONE_NUMBER,',
'        :HIRE_DATE,',
'        :JOB_ID,',
'        :SALARY,',
'        :COMMISSION_PCT',
'      );',
'',
'    when ''U'' then',
'      update oehr_employees',
'         set first_name      = :FIRST_NAME,',
'             last_name       = :LAST_NAME,',
'             email           = :EMAIL,',
'             phone_number    = :PHONE_NUMBER,',
'             hire_date       = :HIRE_DATE,',
'             job_id          = :JOB_ID,',
'             salary          = :SALARY,',
'             commission_pct  = :COMMISSION_PCT ',
'       where EMPLOYEE_ID = :EMPLOYEE_ID;',
'',
'    when ''D'' then',
'      delete from oehr_employees',
'       where EMPLOYEE_ID = :EMPLOYEE_ID;',
'  end case;',
'end;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41773788988015920
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41773365270015916)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_url VARCHAR2(4000);',
'BEGIN',
'  l_url := APEX_PAGE.GET_URL (',
'            p_page   => 18,',
'            p_items  => ''P18_EMPLOYEE_ID'',',
'            p_values => APEX_APPLICATION.G_X01,',
'            p_plain_url => true );',
'',
'  HTP.P(l_url);',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>41773365270015916
);
wwv_flow_imp.component_end;
end;
/
