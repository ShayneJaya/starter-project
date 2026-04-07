prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Network Evolution - 23c'
,p_alias=>'NETWORK-EVOLUTION-23C'
,p_step_title=>'Network Evolution - 23c'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46792568840351424)
,p_plug_name=>'Network Evolution'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46792622774351425)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(46792568840351424)
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
    '',
    '{',
    '    "evolution": {',
    '        "chart": "line",',
    '        "unit": "year",',
    '        "vertex": "properties.DOB"',
    '    }',
    '}')),
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
  'livesearch', 'N',
  'show_legend', 'Y',
  'showtitle', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46792790769351426)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46792808358351427)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46792929110351428)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46793033993351429)
,p_plug_name=>'Network Evolution 2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46793188721351430)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(46793033993351429)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT employee,e, manager',
'FROM GRAPH_TABLE ( EBA_SAMPLE_GRAPH',
'  MATCH (m IS EMPLOYEE ) -[e IS WORKS_FOR ]-> (n)',
'  COLUMNS (vertex_id(m) AS employee, edge_id(e) AS e, vertex_id(n) AS manager )',
')'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
    '        "label": "${properties.FIRST_NAME} ${properties.LAST_NAME}",',
    '        "color": "${interpolate.discrete(''properties.JOB_ID'', ''#d5445a'', ''#6d2f5f'', ''#25314c'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",',
    '        "icon": "fa-user",',
    '        "legend": "${properties.JOB_TITLE}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.SALARY'', ''white'', ''#FB8500'')}",',
    '                "icon": {',
    '                    "class": "fa-money",',
    '                    "color": "black"',
    '                },',
    '                "border": {',
    '                    "width": 1,',
    '                    "color": "#FB8500"',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[!!properties.COUNTRY_ID]": {',
    '        "children": {',
    '            "flag": {',
    '                "size": 10,',
    '                "image": {',
    '                    "url": "https://flagcdn.com/40x30/${(properties.COUNTRY_ID === ''UK'' ? ''GB'' : properties.COUNTRY_ID).toLowerCase()}.png",',
    '                    "scale": 0.8',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[[''AD_PRES'', ''AD_VP'', ''FI_MGR'', ''AC_MGR'', ''SA_MAN'', ''PU_MAN'', ''ST_MAN''].indexOf(properties.JOB_ID) >= 0]": {',
    '        "icon": "fa-user-secret"',
    '    },',
    '    "edge": {',
    '    "color": "gray",',
    '    "legend": "edge",',
    '    "width": 2,',
    '    "label": {',
    '      "color": "gray",',
    '      "font": {',
    '        "size": 12',
    '      }',
    '    }',
    '  }',
    '}')),
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'N',
  'attribute_16', '400',
  'custom_theme', 'N',
  'darktheme', 'N',
  'enable_evolution', 'Y',
  'escapehtml', 'N',
  'evolution_exclude_show', 'N',
  'evolution_granularity', '500',
  'evolution_preservepositions', 'N',
  'evolution_vertex_start', 'SALARY',
  'livesearch', 'N',
  'show_legend', 'Y',
  'showtitle', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46793202246351431)
,p_name=>'EMPLOYEE'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46793358857351432)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46793482222351433)
,p_name=>'MANAGER'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46808258146637545)
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
