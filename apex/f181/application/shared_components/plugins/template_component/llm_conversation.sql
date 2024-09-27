prompt --application/shared_components/plugins/template_component/llm_conversation
begin
--   Manifest
--     PLUGIN: LLM_CONVERSATION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(163143256528683526795)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'LLM_CONVERSATION'
,p_display_name=>'LLM Conversation'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','LLM_CONVERSATION'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#llm-conversations#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#llm-conversations#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="chat-container">',
'        <div class="message-container">',
'            <div class="message recipient">',
'                <Span>#PROMPT#</Span>',
'            </div>',
'            <div class="message user">',
'                <pre id = "response-#ID#" class = "response response-box">#RESPONSE#</pre>',
'                <div>#ADDITIONAL_ACTIONS#',
'',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
' ',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<div>#APEX$ROWS#</div>'
,p_report_row_template=>'<div class="prompt-container" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</div>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>41782848388755
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>165
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(163143257513449526808)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'PROMPT'
,p_prompt=>'Prompt'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(112456919468646387885)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>40
,p_static_id=>'RESPONSE'
,p_prompt=>'Response'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(163168825574995797874)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'ID'
,p_prompt=>'ID'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(112496413462134944236)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_name=>'Additional Action template'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="llm-actions rw-Button{if IS_HOT/} is-hot{endif/} {if ICON_CLASSES/}rw-Button--iconText{else/}rw-Button--text{endif/} #CSS_CLASSES#" href="#LINK_URL#" title="#LABEL!ATTR#" #LINK_ATTR# {if IS_DISABLED/}disabled{endif/}>',
'  <span class="rw-Button-label">',
'    <span class="rw-Button-icon #ICON_CLASSES#" aria-hidden="true"></span>',
'    <span class="rw-Button-text">#LABEL#</span>',
'  </span>',
'</a>'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(112496412648414935719)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_name=>'Additional Actions'
,p_static_id=>'ADDITIONAL_ACTIONS'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(112496413462134944236)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E636861742D636F6E7461696E65727B666F6E742D66616D696C793A417269616C2C73616E732D736572696621696D706F7274616E747D2E6D6573736167657B6D617267696E2D626F74746F6D3A313070783B70616464696E673A313070783B626F7264';
wwv_flow_imp.g_varchar2_table(2) := '65722D7261646975733A313570783B6C696E652D6865696768743A312E347D2E6D6573736167652E726563697069656E747B6261636B67726F756E642D636F6C6F723A233030376166663B636F6C6F723A236666663B616C69676E2D73656C663A666C65';
wwv_flow_imp.g_varchar2_table(3) := '782D656E643B6D617267696E2D6C6566743A6175746F3B666F6E742D73697A653A63616C63282E357677202B202E37656D293B6D696E2D77696474683A3735257D2E6D6573736167652E757365727B6261636B67726F756E642D636F6C6F723A23663066';
wwv_flow_imp.g_varchar2_table(4) := '3066303B636F6C6F723A233030303B616C69676E2D73656C663A666C65782D73746172743B666F6E742D66616D696C793A417269616C2C73616E732D73657269663B776F72642D777261703A627265616B2D776F72647D2E6D6573736167652D636F6E74';
wwv_flow_imp.g_varchar2_table(5) := '61696E65727B646973706C61793A666C65783B666C65782D646972656374696F6E3A636F6C756D6E7D2E726573706F6E73652D626F787B666F6E742D66616D696C793A417269616C2C73616E732D73657269663B746578742D777261703A777261707D2E';
wwv_flow_imp.g_varchar2_table(6) := '726573706F6E73657B6D61782D77696474683A313030253B666F6E742D73697A653A63616C63282E357677202B202E37656D293B6D617267696E3A313070787D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(20713398459465640)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_file_name=>'llm-conversations.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(112456921009546393051)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_file_name=>'llm-conversations.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E636861742D636F6E7461696E65727B0A20202020666F6E742D66616D696C793A20417269616C2C2073616E732D73657269662021696D706F7274616E743B0A7D0A2E6D657373616765207B0A202020206D617267696E2D626F74746F6D3A2031307078';
wwv_flow_imp.g_varchar2_table(2) := '3B0A2020202070616464696E673A20313070783B0A20202020626F726465722D7261646975733A20313570783B0A202020206C696E652D6865696768743A20312E343B0A7D0A2E6D6573736167652E726563697069656E74207B0A202020206261636B67';
wwv_flow_imp.g_varchar2_table(3) := '726F756E642D636F6C6F723A20233030376166663B0A20202020636F6C6F723A2077686974653B0A20202020616C69676E2D73656C663A20666C65782D656E643B0A202020206D617267696E2D6C6566743A206175746F3B0A20202020666F6E742D7369';
wwv_flow_imp.g_varchar2_table(4) := '7A653A2063616C63282E357677202B202E37656D293B0A202020206D696E2D77696474683A203735253B202020200A7D0A2E6D6573736167652E75736572207B0A202020206261636B67726F756E642D636F6C6F723A20236630663066303B0A20202020';
wwv_flow_imp.g_varchar2_table(5) := '636F6C6F723A20233030303B0A20202020616C69676E2D73656C663A20666C65782D73746172743B20200A20202020666F6E742D66616D696C793A20417269616C2C2073616E732D73657269663B0A202020200A20202020776F72642D777261703A2062';
wwv_flow_imp.g_varchar2_table(6) := '7265616B2D776F72643B0A7D0A2E6D6573736167652D636F6E7461696E6572207B0A20202020646973706C61793A20666C65783B0A20202020666C65782D646972656374696F6E3A20636F6C756D6E3B0A7D0A2E726573706F6E73652D626F787B0A2020';
wwv_flow_imp.g_varchar2_table(7) := '2020666F6E742D66616D696C793A20417269616C2C2073616E732D73657269663B200A20202020746578742D777261703A20777261703B0A7D0A2E726573706F6E73657B0A202020206D61782D77696474683A20313030253B0A20202020666F6E742D73';
wwv_flow_imp.g_varchar2_table(8) := '697A653A2063616C63282E357677202B202E37656D293B0A202020206D617267696E3A20313070783B0A202020200A7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(163143590180910530610)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_file_name=>'llm-conversations.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2F2024282066756E6374696F6E202829207B0A0A202020200A2F2F2020202428222E726573706F6E736522292E656163682866756E6374696F6E2865297B0A2F2F2020202020207661722075726C203D20242874686973292E64617461282275726C22';
wwv_flow_imp.g_varchar2_table(2) := '293B0A2F2F202020202020766172206964203D20242874686973292E646174612822696422293B0A2F2F202020202020636F6E7374206F7074696F6E73203D207B0A2F2F2020202020202020206D6574686F643A2027474554272C0A2F2F202020202020';
wwv_flow_imp.g_varchar2_table(3) := '202020686561646572733A206E65772048656164657273287B27636F6E74656E742D74797065273A20276170706C69636174696F6E2F6A736F6E277D290A2F2F20202020207D3B0A2F2F202020202066657463682875726C290A2F2F2020202E7468656E';
wwv_flow_imp.g_varchar2_table(4) := '28726573706F6E7365203D3E20726573706F6E73652E6A736F6E2829290A2F2F2020202E7468656E2864617461203D3E207B0A2F2F2020202020636F6E736F6C652E6C6F6728646174612E726573706F6E7365293B0A2F2F20202020646F63756D656E74';
wwv_flow_imp.g_varchar2_table(5) := '2E676574456C656D656E74427949642827726573706F6E73652D272B646174612E6964292E696E6E657248544D4C203D20646174612E726573706F6E73653B0A2F2F2020207D290A20202020200A2F2F2020207D290A0A2F2F2020207661722063617264';
wwv_flow_imp.g_varchar2_table(6) := '416374696F6E73203D207B0A2F2F202020202020202020202020206E616D653A20226C6C6D2D616374696F6E73222C0A2F2F20202020202020202020202020616374696F6E3A2066756E6374696F6E286576656E742C20656C656D656E742C2061726773';
wwv_flow_imp.g_varchar2_table(7) := '29207B0A2F2F2020202020202020202020202020202020617065782E6974656D732E50315F43555252454E545F49442E76616C7565203D20617267732E69643B0A2F2F2020202020202020202020202020202020617065782E6576656E742E7472696767';
wwv_flow_imp.g_varchar2_table(8) := '657228646F63756D656E742C20617267732E6576656E74293B0A2F2F202020202020202020202020207D0A2F2F2020202020202020207D0A0A2F2F2020202020617065782E616374696F6E732E616464285B63617264416374696F6E735D293B0A0A2F2F';
wwv_flow_imp.g_varchar2_table(9) := '207D293B0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(163168850004538804075)
,p_plugin_id=>wwv_flow_imp.id(163143256528683526795)
,p_file_name=>'llm-conversations.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
