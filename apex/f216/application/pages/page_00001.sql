prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Costco Sl'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.center{',
' text-align: center;',
' font-size: 100px;',
'}',
'.center:hover{',
'    background-color: black;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96216946333119523)
,p_plug_name=>'Costco Sl'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(95993506244118678)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96318829494123813)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(95950230614118573)
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(96316890164123808)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(96066239188118866)
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97112302099518880)
,p_plug_name=>'Cards Top Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(95950230614118573)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97112527652518882)
,p_plug_name=>'Card 1'
,p_parent_plug_id=>wwv_flow_imp.id(97112302099518880)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(95977242224118640)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>'Select count(*) from OEHR_CUSTOMERS'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(97112597676518883)
,p_region_id=>wwv_flow_imp.id(97112527652518882)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'COUNT(*)'
,p_title_css_classes=>'center'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center;">',
'  <span style="background-color: yellow; color: red; font-size: 20px;" title="This is the current number of active employees.">',
'    Number of Active Employees',
'  </span>',
'</div>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp.component_end;
end;
/
