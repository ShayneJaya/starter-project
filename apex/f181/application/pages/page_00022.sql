prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'#16: Create an APEX plugin from scratch!'
,p_alias=>'16-CREATE-AN-APEX-PLUGIN-FROM-SCRATCH'
,p_step_title=>'#16: Create an APEX plugin from scratch!'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(270634967564970101)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div>',
'        <h1>Custom Plug Ins (Slider)</h1>',
'        <ul class="container">',
'            <li>Create custom plug-in using a boilerplate</li>',
'            <li>Boiler Plate for each plug-in type</li>',
'        </ul>',
'    </div>',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38062693157293445)
,p_name=>'P22_SLIDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(270634967564970101)
,p_prompt=>'Custom Plug in Slider'
,p_display_as=>'PLUGIN_INSTANT_SLIDER'
,p_field_template=>wwv_flow_imp.id(33003806604813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_02=>'100'
,p_attribute_03=>'5'
);
wwv_flow_imp.component_end;
end;
/
