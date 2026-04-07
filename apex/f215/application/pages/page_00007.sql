prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Geographical Layout'
,p_alias=>'SAVING-GRAPH-STATE1'
,p_step_title=>'Saving Graph State'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93634721888145160)
,p_plug_name=>'Geographical Layout'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46830037446709909)
,p_plug_name=>'Geographical Layout by Setting'
,p_parent_plug_id=>wwv_flow_imp.id(93634721888145160)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'GRAPH'
,p_query_table=>'EBA_GRAPH_FLIGHTS'
,p_query_match=>'(m)-[e]-(n)'
,p_query_columns=>'vertex_id(m) as airport_depart, edge_id(e) as routes, vertex_id(n) as airport_arrival'
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', '{}',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93668830228503611)
,p_plug_name=>'Geographical Layout by Appearance'
,p_parent_plug_id=>wwv_flow_imp.id(93634721888145160)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'GRAPH'
,p_query_table=>'EBA_GRAPH_FLIGHTS'
,p_query_match=>'(m)-[e]->(n)'
,p_query_columns=>'vertex_id(m) as airport_depart, edge_id(e) as routes, vertex_id(n) as airport_arrival'
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 8,',
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
  'attribute_04', 'geographical',
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_12', wwv_flow_string.join(wwv_flow_t_varchar2(
    '    const actions = await apex.server.process(''Fetch'',null, {dataType: ''text''});',
    '    try {',
    '        return JSON.parse(actions);',
    '    } catch (error) {',
    '        return [];',
    '    }',
    '')),
  'attribute_13', wwv_flow_string.join(wwv_flow_t_varchar2(
    '    await apex.server.process(''Persist'', {',
    '        x01: JSON.stringify(action)',
    '    }, {dataType: ''text''});',
    '')),
  'attribute_14', 'Y',
  'attribute_16', '700',
  'custom_theme', 'N',
  'darktheme', 'N',
  'enable_evolution', 'N',
  'escapehtml', 'N',
  'geo_maptype', 'osm_positron',
  'geo_showinfo', 'Y',
  'geo_shownavigation', 'Y',
  'livesearch', 'N',
  'show_legend', 'Y',
  'showtitle', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46830134554709910)
,p_name=>'AIRPORT_DEPART'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46830215058709911)
,p_name=>'ROUTES'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46830319605709912)
,p_name=>'AIRPORT_ARRIVAL'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46843022083793768)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Persist'
,p_process_sql_clob=>'INSERT INTO EBA_GRAPHVIZ_GRAPH_ACTION(ACTION, USER_ID) VALUES(apex_application.g_x01, v(''APP_USER''));'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>46843022083793768
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46843457160793770)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    data clob;',
'BEGIN',
'    SELECT JSON_ARRAYAGG(action FORMAT JSON ORDER BY ID ASC returning clob) INTO data FROM EBA_GRAPHVIZ_GRAPH_ACTION WHERE USER_ID = v(''APP_USER'');',
'    htp.p(data);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>46843457160793770
);
wwv_flow_imp.component_end;
end;
/
