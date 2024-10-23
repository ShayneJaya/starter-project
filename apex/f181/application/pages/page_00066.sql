prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_name=>'Testac - Invoke Function Customer Test'
,p_alias=>'TESTAC-INVOKE-FUNCTION-CUSTOMER-TEST'
,p_step_title=>'Testac - Invoke Function Customer Test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26177279939184804)
,p_button_sequence=>20
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26177405008184806)
,p_branch_name=>'Branch to 66'
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26177580222184807)
,p_name=>'P66_RESPONSE'
,p_item_sequence=>10
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26177337906184805)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Invoke API'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(26252684446658485)
,p_web_src_operation_id=>wwv_flow_imp.id(26253212633658494)
,p_attribute_01=>'WEB_SOURCE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26177337906184805
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(26177780617184809)
,p_page_id=>66
,p_web_src_param_id=>wwv_flow_imp.id(26255626517658502)
,p_page_process_id=>wwv_flow_imp.id(26177337906184805)
,p_value_type=>'ITEM'
,p_value=>'P66_RESPONSE'
,p_ignore_output=>false
);
wwv_flow_imp.component_end;
end;
/
