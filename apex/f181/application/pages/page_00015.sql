prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Tips #11: Use !RAW with care'
,p_alias=>'TIPS-11-USE-RAW-WITH-CARE'
,p_step_title=>'Tips #11: Use !RAW with care'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75964289335811998)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>30
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
'        <h1>!RAW Caution</h1>',
'        <ul>',
'            <li>Use !RAW to un-escape HTML, however it opens application up to security risks</li>',
'            <li>White list allow list to stop script tags in your HTML</li>',
'            <li>If you set HTML to document.cookie it will get the cookies of every user who visits that HTML</li>',
'            <li>User can use this information to do a number of things</li>',
'            <li>Fix this on the way IN by using APEX_ESCAPE.html_allowlist</li>',
'            <li>On the way out when retriving the item as well. APEX_ESCAPE.c_html_allowlist_tags</li>',
'        </ul>',
'    </div>',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
