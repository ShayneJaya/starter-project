prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'#1 Managing User Preferences'
,p_alias=>'INSTANT-TIP-1'
,p_step_title=>'#1 Managing User Preferences'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34701907938991631)
,p_plug_name=>'Set/Edit Preferences'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'Hello &G_USERNAME.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34702805507991640)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'',
'<body>',
'    <h1>Notes</h1>',
'    <ul>',
'        <li>User Preferences are Global (Workspace, across sessions & applications), do not create a local table to maintain them</li>',
'        <li><a href="https://docs.oracle.com/en/database/oracle/apex/22.1/aeapi/SET_PREFERENCE-Procedure.html#GUID-7B4C2BED-93BA-477D-82AA-23493B7B0549" target= "_blank">View User Preference Documentation here</a></li>',
'        <li>Preferences are saved outside of session state on a user basis</li>',
'        <li>Create a Application Item (Global) to store and retrive user based on the user preference. Created a Applicaiton Process to set that Global item</li>',
'    </ul>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37824568775358423)
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
 p_id=>wwv_flow_imp.id(34702604551991638)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(34701907938991631)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'Save Preferences'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26177917608184811)
,p_name=>'P2_NEW_ITEM'
,p_item_sequence=>60
,p_item_default=>'My new item'
,p_prompt=>'New Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34702028190991632)
,p_name=>'P2_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34701907938991631)
,p_prompt=>'Name'
,p_source=>'NICKNAME'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34702125685991633)
,p_name=>'P2_PREFERRED_LANGUAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34701907938991631)
,p_prompt=>'Language'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34702710561991639)
,p_name=>'P2_LANGUAGE_PREFERENCE_VALUE'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_prompt=>'Retrieve Language Preference Value'
,p_source=>'NVL(APEX_UTIL.GET_PREFERENCE(''LANGUAGE''),15)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34702350356991635)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_USER_PREFERENCES'
,p_process_name=>'Save Name'
,p_attribute_01=>'SET_PREFERENCE_TO_ITEM_VALUE'
,p_attribute_02=>'NICKNAME'
,p_attribute_03=>'P2_NAME'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34702350356991635
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34702420090991636)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_USER_PREFERENCES'
,p_process_name=>'Save Language'
,p_attribute_01=>'SET_PREFERENCE_TO_ITEM_VALUE'
,p_attribute_02=>'LANGUAGE'
,p_attribute_03=>'P2_PREFERRED_LANGUAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34702420090991636
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34702527606991637)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_USER_PREFERENCES'
,p_process_name=>'Save Report'
,p_attribute_01=>'SET_PREFERENCE_TO_ITEM_VALUE'
,p_attribute_02=>'REPORT'
,p_attribute_03=>'P2_REPORT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34702527606991637
);
wwv_flow_imp.component_end;
end;
/
