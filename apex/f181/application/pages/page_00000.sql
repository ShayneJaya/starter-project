prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38060704999293426)
,p_name=>'createSuccessAnimation'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'unload'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38060850609293427)
,p_event_id=>wwv_flow_imp.id(38060704999293426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'createSuccessAnimation'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createSuccessAnimation(); ',
'$(''#SuccessAnimation1'').delay(4000).hide(1000);'))
,p_server_condition_type=>'EXPRESSION'
,p_server_condition_expr1=>'apex_application.g_print_success_message is not null'
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38060995973293428)
,p_name=>'After Refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.t-IRR-region'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38061055111293429)
,p_event_id=>wwv_flow_imp.id(38060995973293428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'JS'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createNoDataFoundAnimation(this.triggeringElement)',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21564918032427544)
,p_name=>'PageLoad jQuery'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21565051350427545)
,p_event_id=>wwv_flow_imp.id(21564918032427544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'jQuery.each($(''.mymarkdown''), function (i,mymd) {',
'    mymd.innerHTML = marked(mymd.innerHTML)',
'})'))
);
wwv_flow_imp.component_end;
end;
/
