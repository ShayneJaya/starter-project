prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>215
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Basic Graph 23c'
,p_alias=>'HOME'
,p_step_title=>'Graph Visulizations'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45982204752923814)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from GRAPH_TABLE (',
'           STUDENTS_GRAPH',
'         MATCH   (a IS person) -[e IS friends]-> (b IS person)',
'         COLUMNS(vertex_id(a) AS PERSON_A, edge_id(e) AS e, vertex_id(b) AS PERSON_B)',
'       )',
'',
''))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', '{}',
  'attribute_05', 'N',
  'attribute_08', 'Friend',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'N',
  'attribute_16', '400',
  'custom_theme', 'N',
  'darktheme', 'N',
  'enable_evolution', 'N',
  'escapehtml', 'N',
  'livesearch', 'N',
  'show_legend', 'Y',
  'showtitle', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45982965361923821)
,p_name=>'PERSON_A'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45983097552923822)
,p_name=>'PERSON_B'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45983188857923823)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46305011625376419)
,p_plug_name=>'Graph Visulizations'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(46083949426375501)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
