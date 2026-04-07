prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'OEHR_INSTEAD_OF_VIEW FOrm'
,p_alias=>'OEHR-INSTEAD-OF-VIEW-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'OEHR_INSTEAD_OF_VIEW FOrm'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(95914373432118468)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99620707491117779)
,p_plug_name=>'OEHR_INSTEAD_OF_VIEW FOrm'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(95950230614118573)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_CUSTOMERS_VIEW'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99632116348117816)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(95973173649118631)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99632534306117817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99632116348117816)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(96090461078118937)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99633908671117822)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(99632116348117816)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(96090461078118937)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99634377748117823)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(99632116348117816)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(96090461078118937)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99634699563117824)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(99632116348117816)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(96090461078118937)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97111073570518867)
,p_name=>'P10_MD5_CUSTOMER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_prompt=>'Md5 Customer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97111153919518868)
,p_name=>'P10_MD5_COUNTRIES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_prompt=>'Md5 Countries'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99621087397117781)
,p_name=>'P10_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99621423067117784)
,p_name=>'P10_CUST_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cust First Name'
,p_source=>'CUST_FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96089206904118931)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99621837319117785)
,p_name=>'P10_CUST_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cust Last Name'
,p_source=>'CUST_LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96089206904118931)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99622227186117786)
,p_name=>'P10_STREET_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street Address'
,p_source=>'STREET_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99622615165117788)
,p_name=>'P10_POSTAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal Code'
,p_source=>'POSTAL_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99623001798117789)
,p_name=>'P10_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99623446002117790)
,p_name=>'P10_STATE_PROVINCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Province'
,p_source=>'STATE_PROVINCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99623814341117791)
,p_name=>'P10_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country Id'
,p_source=>'COUNTRY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99624279039117793)
,p_name=>'P10_COUNTRY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country Name'
,p_source=>'COUNTRY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99624588591117794)
,p_name=>'P10_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Id'
,p_source=>'REGION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99625025575117795)
,p_name=>'P10_NLS_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nls Language'
,p_source=>'NLS_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99625310828117796)
,p_name=>'P10_NLS_TERRITORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nls Territory'
,p_source=>'NLS_TERRITORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99625737018117797)
,p_name=>'P10_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99626169774117799)
,p_name=>'P10_CUST_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cust Email'
,p_source=>'CUST_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99626521866117800)
,p_name=>'P10_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99626905588117801)
,p_name=>'P10_ACCOUNT_MGR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_item_source_plug_id=>wwv_flow_imp.id(99620707491117779)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Mgr Id'
,p_source=>'ACCOUNT_MGR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99632631341117817)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99632534306117817)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99633487067117821)
,p_event_id=>wwv_flow_imp.id(99632631341117817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99635573748117826)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(99620707491117779)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form OEHR_INSTEAD_OF_VIEW FOrm'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>38556885641942081
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99635956765117827)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>38557268658942082
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99635176274117825)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(99620707491117779)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form OEHR_INSTEAD_OF_VIEW FOrm'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>38556488167942080
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97111201618518869)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET MD5'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
':P10_MD5_CUSTOMER := COSTCO_CI_OEHR_VIEW.BUILD_OEHR_CUSTOMERS_MD5(',
'      P_CUSTOMER_ID     =>:P10_CUSTOMER_ID,',
'      P_CUST_FIRST_NAME =>:P10_CUST_FIRST_NAME,',
'      P_CUST_LAST_NAME  =>:P10_CUST_LAST_NAME,',
'      P_STREET_ADDRESS  =>:P10_STATE_PROVINCE,',
'      P_POSTAL_CODE     =>:P10_POSTAL_CODE,',
'      P_CITY            =>:P10_CITY,',
'      P_STATE_PROVINCE  =>:P10_STATE_PROVINCE,',
'      P_COUNTRY_ID      =>:P10_COUNTRY_ID,',
'      P_PHONE_NUMBER    =>:P10_PHONE_NUMBER,',
'      P_NLS_LANGUAGE    =>:P10_NLS_LANGUAGE,',
'      P_NLS_TERRITORY   =>:P10_NLS_TERRITORY,',
'      P_CREDIT_LIMIT    =>:P10_CREDIT_LIMIT,',
'      P_CUST_EMAIL      =>:P10_CREDIT_LIMIT,',
'      P_ACCOUNT_MGR_ID  =>:P10_ACCOUNT_MGR_ID);',
'',
':P10_MD5_COUNTRIES := COSTCO_CI_OEHR_VIEW.BUILD_OEHR_COUNTRIES_MD5 (',
'      P_COUNTRY_ID   => :P10_COUNTRY_ID,',
'      P_COUNTRY_NAME => :P10_COUNTRY_NAME,',
'      P_REGION_ID    => :P10_REGION_ID',
'   );',
'     end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>36032513512343124
);
wwv_flow_imp.component_end;
end;
/
