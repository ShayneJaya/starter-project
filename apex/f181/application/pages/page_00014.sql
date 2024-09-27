prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'#10: Use APEX Theme Roller to match your company''s brand image'
,p_alias=>'10-USE-APEX-THEME-ROLLER-TO-MATCH-YOUR-COMPANY-S-BRAND-IMAGE'
,p_step_title=>'#10: Use APEX Theme Roller to match your company''s brand image'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37844344952745626)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Simple List Template</title>',
'    <style>',
'        .container {',
'            ',
'            border: 1px solid #3a3939;',
'            border-radius: 5px;',
'        }',
'        h1 {',
'            font-size: 1.5em;',
'            margin-bottom: 15px;',
'        }',
'        ul {',
'            list-style-type: disc;',
'            padding-left: 20px;',
'        }',
'        li {',
'            margin-bottom: 10px;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        <h1>Theme Roller Tips</h1>',
'        <ul>',
'            <li>Drag and Drop logo into a folder,Use Theme roller for logo and drag image back</li>',
'            <li>Use Chrome tools to get the color, and set it to the main color in theme roller</li>',
'            <li>Application font, import font and then use body tag to set the font-family</li>',
'            <li></li>',
'            <li></li>',
'        </ul>',
'    </div>',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37844416571745627)
,p_plug_name=>'Information_Template'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Simple List Template</title>',
'    <style>',
'        .container {',
'            ',
'            border: 1px solid #3a3939;',
'            border-radius: 5px;',
'        }',
'        h1 {',
'            font-size: 1.5em;',
'            margin-bottom: 15px;',
'        }',
'        ul {',
'            list-style-type: disc;',
'            padding-left: 20px;',
'        }',
'        li {',
'            margin-bottom: 10px;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        <h1>Simple List</h1>',
'        <ul>',
'            <li></li>',
'            <li></li>',
'            <li></li>',
'            <li></li>',
'            <li></li>',
'        </ul>',
'    </div>',
'</body>',
'</html>',
''))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
