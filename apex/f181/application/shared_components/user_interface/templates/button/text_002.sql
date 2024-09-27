prompt --application/shared_components/user_interface/templates/button/text_002
begin
--   Manifest
--     BUTTON TEMPLATE: TEXT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(33195437571025582)
,p_template_name=>'Copy of Text'
,p_internal_name=>'TEXT'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button onclick="#JAVASCRIPT#" class="t-Button button-4 #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>',
'<style>',
'.button-4 {',
'  appearance: none;',
'  background-color: #815B5B;',
'  border: 1px solid rgba(27, 31, 35, 0.15);',
'  border-radius: 6px;',
'  box-shadow: rgba(27, 31, 35, 0.04) 0 1px 0, rgba(255, 255, 255, 0.25) 0 1px 0 inset;',
'  box-sizing: border-box;',
'  color: #24292E;',
'  cursor: pointer;',
'  display: inline-block;',
'  font-family: -apple-system, system-ui, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";',
'  font-size: 14px;',
'  font-weight: 500;',
'  line-height: 20px;',
'  list-style: none;',
'  padding: 6px 16px;',
'  position: relative;',
'  transition: background-color 0.2s cubic-bezier(0.3, 0, 0.5, 1);',
'  user-select: none;',
'  -webkit-user-select: none;',
'  touch-action: manipulation;',
'  vertical-align: middle;',
'  white-space: nowrap;',
'  word-wrap: break-word;',
'}',
'',
'.button-4:hover {',
'  background-color: #9E7676;',
'  text-decoration: none;',
'  transition-duration: 0.1s;',
'}',
'',
'.button-4:disabled {',
'  background-color: #815B5B;',
'  border-color: rgba(27, 31, 35, 0.15);',
'  color: #959DA5;',
'  cursor: default;',
'}',
'',
'.button-4:active {',
'  background-color: #9E7676;',
'  box-shadow: rgba(225, 228, 232, 0.2) 0 1px 0 inset;',
'  transition: none 0s;',
'}',
'',
'.button-4:focus {',
'  outline: 1px transparent;',
'}',
'',
'.button-4:before {',
'  display: none;',
'}',
'',
'.button-4:-webkit-details-marker {',
'  display: none;',
'</style>'))
,p_hot_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>',
'',
'',
'',
'.button-4 {',
'  appearance: none;',
'  background-color: #FAFBFC;',
'  border: 1px solid rgba(27, 31, 35, 0.15);',
'  border-radius: 6px;',
'  box-shadow: rgba(27, 31, 35, 0.04) 0 1px 0, rgba(255, 255, 255, 0.25) 0 1px 0 inset;',
'  box-sizing: border-box;',
'  color: #24292E;',
'  cursor: pointer;',
'  display: inline-block;',
'  font-family: -apple-system, system-ui, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";',
'  font-size: 14px;',
'  font-weight: 500;',
'  line-height: 20px;',
'  list-style: none;',
'  padding: 6px 16px;',
'  position: relative;',
'  transition: background-color 0.2s cubic-bezier(0.3, 0, 0.5, 1);',
'  user-select: none;',
'  -webkit-user-select: none;',
'  touch-action: manipulation;',
'  vertical-align: middle;',
'  white-space: nowrap;',
'  word-wrap: break-word;',
'}',
'',
'.button-4:hover {',
'  background-color: #F3F4F6;',
'  text-decoration: none;',
'  transition-duration: 0.1s;',
'}',
'',
'.button-4:disabled {',
'  background-color: #FAFBFC;',
'  border-color: rgba(27, 31, 35, 0.15);',
'  color: #959DA5;',
'  cursor: default;',
'}',
'',
'.button-4:active {',
'  background-color: #EDEFF2;',
'  box-shadow: rgba(225, 228, 232, 0.2) 0 1px 0 inset;',
'  transition: none 0s;',
'}',
'',
'.button-4:focus {',
'  outline: 1px transparent;',
'}',
'',
'.button-4:before {',
'  display: none;',
'}',
'',
'.button-4:-webkit-details-marker {',
'  display: none;',
'}'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_preset_template_options=>'t-Button--gapRight'
,p_theme_id=>42
);
wwv_flow_imp.component_end;
end;
/
