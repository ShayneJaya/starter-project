prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Saving Graph State'
,p_alias=>'SAVING-GRAPH-STATE'
,p_step_title=>'Saving Graph State'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46795173533351450)
,p_plug_name=>'Saving Graph State'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46829281873709901)
,p_plug_name=>'Saving Graph State'
,p_parent_plug_id=>wwv_flow_imp.id(46795173533351450)
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
 p_id=>wwv_flow_imp.id(46829417587709903)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46829650888709905)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46829707172709906)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46828463477709219)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46829842410709907)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Persist'
,p_process_sql_clob=>'INSERT INTO EBA_GRAPHVIZ_GRAPH_ACTION(ACTION, USER_ID) VALUES(apex_application.g_x01, v(''APP_USER''));'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>46829842410709907
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46829953624709908)
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
,p_internal_uid=>46829953624709908
);
wwv_flow_imp.component_end;
end;
/
