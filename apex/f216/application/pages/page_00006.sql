prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Calendar'
,p_alias=>'CALENDAR'
,p_step_title=>'Calendar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96276354843123348)
,p_plug_name=>'Calendar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(95950230614118573)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'COSTCO_SL'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'display_column', 'ORDER_ID',
  'drag_and_drop', 'N',
  'end_date_column', '',
  'event_sorting', 'AUTOMATIC',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'ORDER_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96276711998123349)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(96029204467118767)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(95913586647118454)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(96092037249118941)
);
wwv_flow_imp.component_end;
end;
/
