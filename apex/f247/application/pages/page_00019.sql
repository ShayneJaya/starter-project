prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Time (No Date) Picker'
,p_alias=>'TIME-NO-DATE-PICKER'
,p_step_title=>'Time (No Date) Picker'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#jquery.mask.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* document.getElementById(''P19_PHONE'').addEventListener(''input'', function (y) {',
'',
'          var a = y.target.value.replace(/\D/g, '''').match(/(\d{0,3})(\d{0,3})(\d{0,4})/);',
'',
'          y.target.value = !a[2] ? a[1] : ''('' + a[1] + '') '' + a[2] + (a[3] ? ''-'' + a[3] : '''');',
'',
'      }); */'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function(){',
'  // Replace P1_PHONE with your item name',
'  $(''#P19_PHONE'').mask(''+1 (000) 000-0000'');',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' #P19_NEW_dialog .a-DatePicker-header,',
'#P19_NEW_calendar .a-DatePicker-calendar {',
'  display: none !important;',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46044610700202187)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43314248833730213)
,p_name=>'P19_NEW'
,p_item_sequence=>10
,p_prompt=>'New'
,p_format_mask=>'HH12:MI'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43314337191730214)
,p_name=>'P19_PHONE'
,p_item_sequence=>20
,p_prompt=>'New'
,p_placeholder=>'(999) 999-9999'
,p_format_mask=>'(999) 999-9999'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43314906265730220)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>'null;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'&P19_PHONE.'
,p_internal_uid=>43314906265730220
);
wwv_flow_imp.component_end;
end;
/
