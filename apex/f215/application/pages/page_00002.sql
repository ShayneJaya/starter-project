prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Interaction - 23c'
,p_alias=>'INTERACTION-23C'
,p_step_title=>'Interaction - 23c'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45983293441923824)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(46042010258375402)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45983348751923825)
,p_plug_name=>'Basic Interaction'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45983450453923826)
,p_plug_name=>'Basic Interaction'
,p_region_name=>'graph'
,p_parent_plug_id=>wwv_flow_imp.id(45983348751923825)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from GRAPH_TABLE (students_graph',
'MATCH (a IS person) - [e IS student_of] -> (b is university)',
'COLUMNS(vertex_id(a) AS Person, edge_id(e) AS e, vertex_id(b) AS University));',
''))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
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
 p_id=>wwv_flow_imp.id(45983512271923827)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45984149403923833)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45984250458923834)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46558026469001051)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46790220035351401)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46790370861351402)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(46790220035351401)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from GRAPH_TABLE (students_graph',
'MATCH (a IS person) - [e IS student_of] -> (b is university)',
'COLUMNS(vertex_id(a) AS Person, edge_id(e) AS e, vertex_id(b) AS University));',
''))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
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
  'livesearch', 'Y',
  'show_legend', 'Y',
  'showtitle', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46790459213351403)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46790553680351404)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46790657580351405)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46790708991351406)
,p_plug_name=>'Smart Group'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46790863259351407)
,p_plug_name=>'Manual Smart Group'
,p_parent_plug_id=>wwv_flow_imp.id(46790708991351406)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(46107274961375554)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from GRAPH_TABLE (students_graph',
'MATCH (a IS person) - [e IS student_of] -> (b is university)',
'COLUMNS(vertex_id(a) AS Person, edge_id(e) AS e, vertex_id(b) AS University));',
''))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_02', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '"smartGroups":[',
    '        {',
    '        "_id": 582378657398,',
    '        "name": "Manual Group by NAME",',
    '        "type": "group",',
    '        "automatic": false,',
    '        "enabled": true,',
    '        "groupBy": "NAME",',
    '        "conditions": {',
    '          "conditions": [],',
    '          "operator": "and"',
    '        }',
    '      },',
    '      {',
    '       "_id": 45245237398,',
    '        "name": "Manual Group by University ID",',
    '        "type": "group",',
    '        "automatic": false,',
    '        "enabled": true,',
    '        "groupBy": "ID",',
    '        "conditions": {',
    '          "conditions": [],',
    '          "operator": "and"',
    '        }',
    '      }',
    ']',
    '}')),
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
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
 p_id=>wwv_flow_imp.id(46790986336351408)
,p_name=>'PERSON'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46791098441351409)
,p_name=>'E'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46791159666351410)
,p_name=>'UNIVERSITY'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45984366694923835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45983450453923826)
,p_button_name=>'Force'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(46180810865375764)
,p_button_image_alt=>'Force'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'title="Force - Force correlation arrows to point at their inner-related vertices with all vertices ultimately pointing at the root vertex"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45984633203923838)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45983450453923826)
,p_button_name=>'Radial'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(46180810865375764)
,p_button_image_alt=>'Radial'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'title="Radial - Display graph with outer vertices in a circle encompassing inner vertices and ultimately the root vertex centered in the middle"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45984909130923841)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(45983450453923826)
,p_button_name=>'First'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(46180810865375764)
,p_button_image_alt=>'First'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45985077351923842)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(45983450453923826)
,p_button_name=>'HEIGHT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(46180810865375764)
,p_button_image_alt=>'Height'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45985141493923843)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(45983450453923826)
,p_button_name=>'Full'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(46180810865375764)
,p_button_image_alt=>'Full'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45984450622923836)
,p_name=>'Force'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45984366694923835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45984519822923837)
,p_event_id=>wwv_flow_imp.id(45984450622923836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''force'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45984755290923839)
,p_name=>'Radial'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45984633203923838)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45984816686923840)
,p_event_id=>wwv_flow_imp.id(45984755290923839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''radial'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45985282198923844)
,p_name=>'First'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45984909130923841)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45985366475923845)
,p_event_id=>wwv_flow_imp.id(45985282198923844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text = ''${properties.NAME}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45985494871923846)
,p_name=>'Last'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45985077351923842)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45985539675923847)
,p_event_id=>wwv_flow_imp.id(45985494871923846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text = ''Height:''+ ''${properties.HEIGHT}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45985657381923848)
,p_name=>'Full'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45985141493923843)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45985774373923849)
,p_event_id=>wwv_flow_imp.id(45985657381923848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text =''${properties.NAME}  ${properties.DOB}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp.component_end;
end;
/
