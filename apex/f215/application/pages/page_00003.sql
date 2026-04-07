prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Selection'
,p_alias=>'SELECTION'
,p_step_title=>'Selection'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46791503791351414)
,p_plug_name=>'Source'
,p_region_name=>'graph'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from GRAPH_TABLE (students_graph',
'MATCH (a IS person) - [e IS student_of] -> (b is university)',
'COLUMNS(vertex_id(a) AS Person, edge_id(e) AS e, vertex_id(b) AS University));'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 20,',
    '        "label": "${properties.NAME}",',
    '        "color": "${interpolate.discrete(''properties.PERSON_ID'', ''#d5445a'', ''#6d2f5f'', ''#25314c'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}"',
    '    },',
    '        "edge": {',
    '        "color": "green",',
    '        "legend": "edge",',
    '        "width": 2,',
    '        "label": {',
    '        "color": "gray",',
    '        "font": {',
    '            "size": 12',
    '        }',
    '        }',
    '    }',
    '',
    '',
    '}')),
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'Y',
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
 p_id=>wwv_flow_imp.id(46791631536351415)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46791737646351416)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46791843993351417)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46791955707351418)
,p_plug_name=>'Target'
,p_region_name=>'graph2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from GRAPH_TABLE (students_graph',
'MATCH (a IS person) - [e IS student_of] -> (b is university)',
'where a.name is NULL',
'COLUMNS(vertex_id(a) AS Person, edge_id(e) AS e, vertex_id(b) AS University));'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 20,',
    '        "label": "${properties.NAME}",',
    '        "color": "${interpolate.discrete(''properties.PERSON_ID'', ''#d5445a'', ''#6d2f5f'', ''#25314c'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}"',
    '    },',
    '        "edge": {',
    '        "color": "green",',
    '        "legend": "edge",',
    '        "width": 2,',
    '        "label": {',
    '        "color": "gray",',
    '        "font": {',
    '            "size": 12',
    '        }',
    '        }',
    '    }',
    '',
    '',
    '}')),
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_12', 'return [];',
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
 p_id=>wwv_flow_imp.id(46792081746351419)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46792161725351420)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46792251002351421)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46801016329553436)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(46119621287375584)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(46003956848375290)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(46182499016375769)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46792392977351422)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(46791503791351414)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_GRAPHVIZ|REGION TYPE|selection'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46792456817351423)
,p_event_id=>wwv_flow_imp.id(46792392977351422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''graph2'').self.data = this.data;'
);
wwv_flow_imp.component_end;
end;
/
