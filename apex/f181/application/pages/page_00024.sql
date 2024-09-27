prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>'LLM Conversation'
,p_alias=>'LLM-CONVERSATION'
,p_step_title=>'LLM Conversation'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* document.addEventListener("DOMContentLoaded", function() {',
'',
'if (apex.item("P24_RECENT_PROMPT_ID").getValue() ) {',
'     setTimeout(function(){',
'',
'  const textElement = document.getElementById("response-"+"&P24_RECENT_PROMPT_ID.");',
'  const multilineText = textElement.textContent.trim();',
'  textElement.textContent = ""; ',
'  $("#response-"+"&P24_RECENT_PROMPT_ID.").show();',
'  // Clear the content',
'  let currentIndex = 0;',
'',
'  function typeText() {',
'    if (currentIndex < multilineText.length) {',
'      const currentChar = multilineText.charAt(currentIndex);',
'      if (currentChar === ''\n'') {',
'        textElement.textContent += ''\n'';',
'      } else {',
'        textElement.textContent += currentChar;',
'      }',
'      currentIndex++;',
'      setTimeout(typeText, 15); // Adjust typing speed (in milliseconds)',
'      textElement.scrollTop = textElement.scrollHeight; // Scroll to bottom',
'    }',
'  }',
'        typeText();',
'',
'    },30)',
'}',
'',
'',
'}); */',
'',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'function showCustomSpinner() {',
'  document.getElementById(''custom-spinner1'').style.display = ''block'';',
'}',
'',
'',
'function hideCustomSpinner() {',
'  document.getElementById(''custom-spinner1'').style.display = ''none'';',
'}',
'',
'',
'hideCustomSpinner();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P24_PROMPT{',
'    flex: 1;',
'    padding: 10px;',
'    border-radius: 15px;',
'    font-size: 1em;',
'    height: 3em;',
'}',
'.t-Footer{',
'    position: fixed;',
'    bottom: 0;',
'    left: 0;',
'    width: 100%;',
'    border-top: 1px solid #ccc;',
'    z-index:1000;',
'}',
'#send-btn',
'{',
'    background-color:#007aff',
'}',
'.t-Body-mainContent{',
'    padding-bottom: 60px;',
'}',
'.t-Body-actions{',
'     width: var(--ut-body-actions-width, 20rem);',
'}',
':root {',
'    --ut-body-actions-width: 23rem;',
'} ',
'',
'',
'',
'',
'',
'',
'.u-Processing {',
'    display: none !important;',
'}',
'',
'',
'.spinner-container {',
'  position: fixed;',
'  top: 50%;',
'  left: 50%;',
'  transform: translate(-50%, -50%);',
'  width: 150px; ',
'  height: 50px; ',
'  text-align: center;',
'  z-index: 9999; ',
'  display: none; ',
'}',
'',
'',
'.dot {',
'  display: inline-block;',
'  width: 20px; ',
'  height: 20px;',
'  margin: 0 8px; ',
'  background-color: grey; ',
'  border-radius: 50%;',
'  animation: dotPulse 1s infinite ease-in-out;',
'}',
'',
'',
'@keyframes dotPulse {',
'  0%, 100% {',
'    transform: scale(1);',
'    opacity: 1;',
'  }',
'  50% {',
'    transform: scale(1.5);',
'    opacity: 0.5;',
'  }',
'}',
'',
'.dot:nth-child(1) {',
'  animation-delay: 0s;',
'}',
'',
'.dot:nth-child(2) {',
'  animation-delay: 0.2s;',
'}',
'',
'.dot:nth-child(3) {',
'  animation-delay: 0.4s;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(32852911657813916)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_rejoin_existing_sessions=>'P'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15709932632031241)
,p_plug_name=>'PROMPT&RESPONSE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32868174261813926)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'PROMPTS'
,p_query_where=>'session_id = :APP_SESSION and CONVERSATION_ID = :P24_CONVERSATION_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'asked_on asc'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_LLM_CONVERSATION'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'Please enter your question below.'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'ID', 'ID',
  'PROMPT', 'PROMPT',
  'RESPONSE', 'RESPONSE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15710093221031242)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15710148480031243)
,p_name=>'SESSION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SESSION_ID'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15710239424031244)
,p_name=>'CONVERSATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONVERSATION_ID'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15710391913031245)
,p_name=>'PROMPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMPT'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15710498061031246)
,p_name=>'RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15710555145031247)
,p_name=>'ASKED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASKED_ON'
,p_data_type=>'TIMESTAMP'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15710661220031248)
,p_plug_name=>'Question'
,p_region_name=>'questions-footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32925622440813952)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15790875936320481)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32945791020813960)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(32830040333813888)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(33008182163813998)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15799609030412007)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15801636061412027)
,p_plug_name=>'JSON Response'
,p_parent_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32885691070813935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15802786620412038)
,p_name=>'PROMPTS'
,p_template=>wwv_flow_imp.id(32923568116813951)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       SESSION_ID,',
'       CONVERSATION_ID,',
'       PROMPT,',
'       response,',
'       ASKED_ON',
'  from PROMPTS',
'order by ASKED_ON DESC'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(32971576445813973)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16031668203052409)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16031743065052410)
,p_query_column_id=>2
,p_column_alias=>'SESSION_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Session Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16031832438052411)
,p_query_column_id=>3
,p_column_alias=>'CONVERSATION_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Conversation Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16031977218052412)
,p_query_column_id=>4
,p_column_alias=>'PROMPT'
,p_column_display_sequence=>40
,p_column_heading=>'Prompt'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16032660377052419)
,p_query_column_id=>5
,p_column_alias=>'RESPONSE'
,p_column_display_sequence=>70
,p_column_heading=>'Response'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#RESPONSE#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16032185448052414)
,p_query_column_id=>6
,p_column_alias=>'ASKED_ON'
,p_column_display_sequence=>60
,p_column_heading=>'Asked On'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16032387985052416)
,p_plug_name=>'Customer Spinner1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="custom-spinner1" class="spinner-container">',
'  <div class="dot"></div>',
'  <div class="dot"></div>',
'  <div class="dot"></div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15800154630412012)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_button_name=>'NewConvo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Chat History'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15710893584031250)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15710661220031248)
,p_button_name=>'RUN'
,p_button_static_id=>'send-btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(33005855194813995)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Run'
,p_button_position=>'BUTTON_END'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15710740370031249)
,p_name=>'P24_PROMPT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15710661220031248)
,p_prompt=>'Prompt'
,p_placeholder=>'Type a message...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33003787272813992)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15799060102412001)
,p_name=>'P24_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15799116583412002)
,p_name=>'P24_RECENT_PROMPT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15799315631412004)
,p_name=>'P24_RESPONSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15801636061412027)
,p_prompt=>'JSON Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15799867563412009)
,p_name=>'P24_RESPONSE_CLOB'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15799996772412010)
,p_name=>'P24_RESPONSE_CLOB_2'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15800027218412011)
,p_name=>'P24_CONVERSATION_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'PATIENT_SEQ.nextval'))
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15801039266412021)
,p_name=>'P24_MAX_OUTPUT_TOKENS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_prompt=>'Maximum Output Tokens'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The maximum number of tokens to generate for the output. Estimate 2-3 tokens per word. '
,p_inline_help_text=>'Input + output tokens should be less than 8000'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15801136406412022)
,p_name=>'P24_TEMPERATURE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_prompt=>'Maximum Output Tokens'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'A number that sets the randomness of the generated output. A lower temperature means a less random generation. Use lower numbers for tasks with a correct answer such as question answering or summarizing. High temperatures can generate hallucinations '
||'or factually incorrect information. Start with temperatures lower than 1.0 and increase the temperature for more creative outputs, as you regenerate the prompts to refine the outputs.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15801289387412023)
,p_name=>'P24_TOP_P'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_prompt=>'Top p'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If set to a probability of 0.0 < p <= 1.0, it ensures that only the most likely tokens with cumulative probability of p are considered for generation at each step. To eliminate tokens with low likelihood, assign p a minimum percentage for the next to'
||'ken''s likelihood. For example, when p is set to 0.75, the model eliminates the bottom 25 percent for the next token. Set to 1.0 to consider all tokens. If both k and p are enabled, p acts after k'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15801399187412024)
,p_name=>'P24_TOP_K'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_prompt=>'Top k'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'An integer that sets up the model to generate outputs that include only the top k most likely tokens. A higher k introduces more randomness into the output making the output text sound more natural. To disable this method and use all tokens, set to -'
||'1. To set a number for the likely tokens, choose an integer between 1 and 500. If also using top p, then the model considers only the top tokens whose probabilities add up to p percent and ignores the rest of the k tokens. For example, if k is 20 and'
||' p is .75, and the probabilities of the top 10 add up to .75, then only the top 10 tokens are chosen.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15801476666412025)
,p_name=>'P24_FREQUENCY_PENALTY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_prompt=>'Frequency Penalty'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To reduce repetitiveness of generated tokens, this number penalizes new tokens based on their frequency in the generated text so far. Positive numbers encourage the model to use new tokens and negative numbers encourage the model to repeat the tokens'
||'. Set to 0 to disable.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15801506256412026)
,p_name=>'P24_PRESENCE_PENALTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(15799609030412007)
,p_prompt=>'Presence Penalty'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To reduce repetitiveness of generated tokens, this number penalizes new tokens based on whether they''ve appeared in the generated text so far. Greater numbers encourage the model to use new tokens, while lower numbers encourage the model to repeat th'
||'e tokens. Similar to frequency penalty, a penalty is applied to previously present tokens, except that this penalty is applied equally to all tokens that have already appeared, regardless of how many times they''ve appeared. Set to 0 to disable.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15800268813412013)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15800154630412012)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15800662384412017)
,p_event_id=>wwv_flow_imp.id(15800268813412013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_CONVERSATION_ID,P24_RESPONSE_CLOB_2,P24_RESPONSE,P24_RESPONSE_CLOB,P24_PROMPT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15800321126412014)
,p_event_id=>wwv_flow_imp.id(15800268813412013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15800792169412018)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_PROMPT'
,p_condition_element=>'P24_PROMPT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15800873755412019)
,p_event_id=>wwv_flow_imp.id(15800792169412018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15710893584031250)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15800984898412020)
,p_event_id=>wwv_flow_imp.id(15800792169412018)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15710893584031250)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15802118903412032)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15710893584031250)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15802222632412033)
,p_event_id=>wwv_flow_imp.id(15802118903412032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''custom-spinner1'').style.display = ''block'';',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15802350723412034)
,p_event_id=>wwv_flow_imp.id(15802118903412032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'RUN'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15799587879412006)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Invoke API'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_response 	CLOB;',
'    l_body clob;',
'    l_prompt varchar2(4000) := :P24_PROMPT;',
'    l_chat_history clob := :P24_RESPONSE_CLOB_2; ',
'',
'    l_current_prompt clob:= q''[{',
'            "role": "USER",',
'            "content": [',
'              {',
'                "type": "TEXT",',
'                "text": "#PROMPT#"',
'              }',
'            ]',
'          }]'';',
'    ',
'BEGIN',
'    APEX_DEBUG.ENABLE(',
'        apex_debug.c_log_level_info);',
'  ',
'   l_current_prompt := REPLACE(l_current_prompt,''#PROMPT#'',l_prompt);',
'',
'  apex_web_service.set_request_headers(',
'    p_name_01 => ''Content-Type'',',
'    p_value_01 => ''application/json'',',
'    p_name_02 => ''User-Agent'',',
'    p_value_02 => ''APEX'',',
'    p_reset => false,',
'    p_skip_if_exists => true',
'  );',
'      ',
'      l_body := q''[{',
'      "compartmentId": "ocid1.compartment.oc1..aaaaaaaa2lqxwzcdrjv53inyxhsdnxhlh2x55slnoolx4il5lungswoqf57a",',
'          "servingMode": {',
'        "modelId": "meta.llama-3-70b-instruct",',
'        "servingType": "ON_DEMAND"',
'      },',
'      "chatRequest": {',
'        "messages": [ #MESSAGES#  ',
'        ],',
'        "apiFormat": "GENERIC",',
'        "maxTokens": 600,',
'        "isStream": false,',
'        "numGenerations": 1,',
'        "frequencyPenalty": 0,',
'        "presencePenalty": 0,',
'        "temperature": 1,',
'        "topP": 1.0,',
'        "topK": 1',
'      }',
'    }]'';',
'     If l_chat_history is not null then',
'    l_body := REPLACE(l_body,''#MESSAGES#'',l_chat_history || '','' ||l_current_prompt );',
'   else ',
'    l_body := REPLACE(l_body,''#MESSAGES#'',l_current_prompt);',
'   end if;',
'    ',
'   ',
'    apex_debug.message(''l_body: ''||l_body);',
'',
'',
'  l_response := apex_web_service.make_rest_request(',
'    p_url => ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'',',
'    p_http_method => ''POST'',',
'    p_body => l_body,',
'    p_credential_static_id => ''oci_credentials_gen_ai''',
'  );',
'    ',
'   select  l_response into :P24_RESPONSE from dual;',
'   select l_current_prompt|| '',''|| json_query(l_response, ''$.chatResponse.choices[0].message'' RETURNING CLOB) into :P24_RESPONSE_CLOB from dual;',
'',
'   apex_debug.message(''l_current_prompt: ''||l_current_prompt);',
'',
'   If l_chat_history is not null then',
'    l_chat_history := json_query(l_response, ''$.chatResponse.choices[0].message'' RETURNING CLOB)|| '',''|| l_current_prompt ||'','' || l_chat_history;',
'   else ',
'    l_chat_history := json_query(l_response, ''$.chatResponse.choices[0].message'' RETURNING CLOB)|| '',''|| l_current_prompt;',
'   end if;',
'   select l_chat_history into :P24_RESPONSE_CLOB_2 from dual;',
'',
'   apex_debug.message(''l_chat_history: ''||l_chat_history);',
'   ',
'   ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15710893584031250)
,p_internal_uid=>15799587879412006
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15799447713412005)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Parse & Update Response'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO PROMPTS (SESSION_ID,CONVERSATION_ID, PROMPT, RESPONSE, ASKED_ON) ',
'VALUES (:APP_SESSION,:P24_CONVERSATION_ID, :P24_PROMPT, (SELECT LLM_OUTPUT',
'        FROM',
'            JSON_TABLE ( :P24_RESPONSE, ''$.chatResponse.choices.message.content[0]''',
'                COLUMNS',
'                    LLM_OUTPUT clob PATH ''$.text''',
'            ) ',
'), systimestamp) returnING id into :P24_RECENT_PROMPT_ID;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15710893584031250)
,p_internal_uid=>15799447713412005
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15801957852412030)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P24_PROMPT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15710893584031250)
,p_internal_uid=>15801957852412030
);
wwv_flow_imp.component_end;
end;
/
