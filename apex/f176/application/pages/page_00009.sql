prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>176
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Patient Appointment And Feedbacks'
,p_alias=>'PATIENT-APPOINTMENT-AND-FEEDBACKS'
,p_step_title=>'Patient Appointment And Feedbacks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14868270912335639)
,p_plug_name=>'Appointments'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14345427109763141)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENT'
,p_query_where=>'patient_username=:APP_USER'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-user',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'COMMENT_DATE', 'SCHEDULE',
  'COMMENT_TEXT', 'STATUS',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'DOCTOR_EMAIL')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14868336406335640)
,p_name=>'BOOKING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOKING_ID'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14868441430335641)
,p_name=>'PATIENT_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_USERNAME'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14868591489335642)
,p_name=>'DOCTOR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_NO'
,p_data_type=>'NUMBER'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14868678421335643)
,p_name=>'SCHEDULE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE'
,p_data_type=>'TIMESTAMP_TZ'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14868745670335644)
,p_name=>'PATIENT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_EMAIL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14868854889335645)
,p_name=>'DOCTOR_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_EMAIL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14868968239335646)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14869087066335647)
,p_name=>'FEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEE'
,p_data_type=>'NUMBER'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14869120561335648)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14869292580335649)
,p_plug_name=>'Feedbacks'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14313339219763122)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'PATIENT_NAME,',
'''DR.'' || DNAME as DNAME,',
'APPOINTMENT,',
'FEEDBACK,',
'RATING,',
'CREATED_AT,',
'UPDATED_AT',
'from PATIENT_FEEDBACK, DOCTOR',
'where PATIENT_NAME=:APP_USER',
'and DOCTOR_NO = DNO'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-user',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'COMMENT_DATE', 'APPOINTMENT',
  'COMMENT_TEXT', 'FEEDBACK',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'DNAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14869334232335650)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14981600314306001)
,p_name=>'PATIENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14981745445306002)
,p_name=>'DNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DNAME'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14981871172306003)
,p_name=>'APPOINTMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT'
,p_data_type=>'TIMESTAMP_TZ'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14981990472306004)
,p_name=>'FEEDBACK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14982059564306005)
,p_name=>'RATING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATING'
,p_data_type=>'NUMBER'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14982197819306006)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'TIMESTAMP_TZ'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14982299868306007)
,p_name=>'UPDATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_AT'
,p_data_type=>'TIMESTAMP_TZ'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14976888068283271)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14382896350763163)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14275340557763067)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14453390771763210)
);
wwv_flow_imp.component_end;
end;
/
