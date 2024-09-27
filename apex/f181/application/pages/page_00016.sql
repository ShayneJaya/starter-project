prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>'#12: How to remote debug a user''s session'
,p_alias=>'12-HOW-TO-REMOTE-DEBUG-A-USER-S-SESSION'
,p_step_title=>'#12: How to remote debug a user''s session'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114086209669075047)
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
'        <h1>Remote Debug of a users session</h1>',
'        <ul>',
'            <li>Monitor Activity -> Active Sessions</li>',
'            <li>Developers can view debug on remote session</li>',
'            <li>Query Plan: View long running queries in APEX Level 9</li>',
'            <li>select * from APEX_workspace_sessions</li>',
'            <li>select page_veiw_id, max(application_id), max(page_id), max(apex_user),max(message_timestamp_ from apex_debug_messages grou by page_view_id</li>',
'            <li>Drill down into select * from apex_debig_messages where page_view_id =:P7_debig_id</li>',
'            <li></li>',
'',
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
