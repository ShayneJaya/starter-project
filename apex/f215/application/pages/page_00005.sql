prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Styling - 23c'
,p_alias=>'STYLING-23C'
,p_step_title=>'Styling - 23c'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46793502419351434)
,p_plug_name=>'Styling - 23c'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46793640297351435)
,p_plug_name=>'Vertex Styles'
,p_parent_plug_id=>wwv_flow_imp.id(46793502419351434)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
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
  'attribute_14', 'N',
  'attribute_16', '400',
  'custom_theme', 'N',
  'darktheme', 'N',
  'enable_evolution', 'N',
  'escapehtml', 'N',
  'legendwidth', '700',
  'livesearch', 'N',
  'show_legend', 'Y',
  'showtitle', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46793852342351437)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46793979733351438)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46794059825351439)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46794111314351440)
,p_plug_name=>'Dynamic Expressions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46794215964351441)
,p_plug_name=>'Dynamic Expressions Graph'
,p_parent_plug_id=>wwv_flow_imp.id(46794111314351440)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
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
    '     "vertex[properties.PERSON_ID ===1 || properties.NAME === ''Mary'']": {',
    '        "color": "blue",',
    '        "label":"${properties.NAME}",',
    '        "icon": "fa-user",',
    '        "border": {',
    '            "width": 3',
    '        }',
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
 p_id=>wwv_flow_imp.id(46794399323351442)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46794459812351443)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46794507743351444)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46794698205351445)
,p_plug_name=>'Styling Toggle Settings'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46794721929351446)
,p_plug_name=>'Styling Toggle Settings'
,p_parent_plug_id=>wwv_flow_imp.id(46794698205351445)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from GRAPH_TABLE (students_graph',
'MATCH (a IS person) - [e IS student_of] -> (b is university)',
'COLUMNS(vertex_id(a) AS Person, edge_id(e) AS e, vertex_id(b) AS University));'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_02', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "filters": [',
    '      {',
    '          "id": 16835425432534,',
    '          "component": "vertex",',
    '          "stylingEnabled": true,',
    '          "target": "vertex",',
    '          "visibilityEnabled": true,',
    '          "conditions": {',
    '            "operator": "and",',
    '            "conditions": [',
    '                {',
    '                "property": "PERSON_ID",',
    '                "operator": ">",',
    '                "value": "2"',
    '                }',
    '             ]},',
    '        "properties": {',
    '          "legendTitle": ["Person 2"],',
    '          "colors": ["pink"]',
    '        }',
    '      }',
    '    ]',
    '}')),
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 20,',
    '        "label": "${properties.NAME}",',
    '        "color": "${interpolate.discrete(''properties.PERSON_ID'', ''#d5445a'', ''#6d2f5f'', ''#25314c'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}"',
    '    },',
    '     "vertex[properties.PERSON_ID ===1 || properties.NAME === ''Mary'']": {',
    '        "color": "blue",',
    '        "label":"${properties.NAME}",',
    '        "icon": "fa-user",',
    '        "border": {',
    '            "width": 3',
    '        }',
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
 p_id=>wwv_flow_imp.id(46794858149351447)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46794942807351448)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46795008755351449)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46814713786757343)
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
wwv_flow_imp.component_end;
end;
/
