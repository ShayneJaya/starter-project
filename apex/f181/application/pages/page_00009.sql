prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'#5 Helpful Feature'
,p_alias=>'5-HELPFUL-FEATURE'
,p_step_title=>'#5 Helpful Feature'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148365109728345108)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'',
'<body>',
'    <h1>Application Features</h1>',
'    <ul>',
'        <li>Configuration Options</li>',
'        <li>Feedback - Add several pieces of functionality to your application. Works out of the box to Oracle Team Development</li>',
'        <li>Theme Style Selections - accesibility contraints, or how they want to view the application. Give users the option to select their theme."Customize" at the bottom of the page. Persists across sessions for each user</li>',
'    </ul>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
