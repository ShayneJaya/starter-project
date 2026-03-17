prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'GenAI Charts Demo'
,p_alias=>'GENAI-CHARTS-DEMO'
,p_step_title=>'GenAI Charts Demo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55696642065806843)
,p_plug_name=>'Bar Chart'
,p_title=>'&P25_CHART_TITLE.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P25_CHART_TYPE'
,p_plug_display_when_cond2=>'bar'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(55696959146806846)
,p_region_id=>wwv_flow_imp.id(55696642065806843)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'  var myColors = [',
'    "#F0E2D2", "#D1AD94", "#D1D6BF", "#ACB393", "#697564"',
'  ];',
'',
'  // fallback if someone empties the palette',
'  if (!myColors || myColors.length === 0) {',
'    myColors = ["#007bff"];',
'  }',
'',
'  options.dataFilter = function(data) {',
'    if (!data || !data.series) return data;',
'',
'    // OPTION A: assign colors per-series (colors restart for each series)',
'    data.series.forEach(function(series) {',
'      series.items.forEach(function(bar, idx) {',
'        bar.color = myColors[idx % myColors.length];',
'      });',
'    });',
'',
'    /* ',
'    // OPTION B: assign colors across all series (no repeat until palette exhausted)',
'    var counter = 0;',
'    data.series.forEach(function(series) {',
'      series.items.forEach(function(bar) {',
'        bar.color = myColors[counter % myColors.length];',
'        counter++;',
'      });',
'    });',
'    */',
'',
'    return data;',
'  };',
'',
'  return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(55697025259806847)
,p_chart_id=>wwv_flow_imp.id(55696959146806846)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select c001 as label,',
'       to_number(c002) as value,10 as Z',
'from apex_collections',
'where collection_name = ''AI_CHART''',
'order by label'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(55697177886806848)
,p_chart_id=>wwv_flow_imp.id(55696959146806846)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'&P25_LABEL_1.'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(55697274145806849)
,p_chart_id=>wwv_flow_imp.id(55696959146806846)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'&P25_LABEL_2.'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56291109172991324)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(37852675486108300)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56520522042358401)
,p_plug_name=>'Pie Chart'
,p_title=>'&P25_CHART_TITLE.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P25_CHART_TYPE'
,p_plug_display_when_cond2=>'pie'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(56520619507358402)
,p_region_id=>wwv_flow_imp.id(56520522042358401)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'',
'    options.styleDefaults = {',
'        colors: ["#F0E2D2", "#D1AD94",',
'        "#D1D6BF", "#ACB393",',
'        "#697564"]',
'    }',
'    options.legend = {',
'    	backgroundColor:"#d3d3d3"',
'    }',
'',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(56520747677358403)
,p_chart_id=>wwv_flow_imp.id(56520619507358402)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select c001 as label,',
'       to_number(c002) as value,10 as Z',
'from apex_collections',
'where collection_name = ''AI_CHART''',
'order by label'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56521072799358406)
,p_plug_name=>'Extra Items'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56521189449358407)
,p_plug_name=>'Scatter Chart'
,p_title=>'&P25_CHART_TITLE.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P25_CHART_TYPE'
,p_plug_display_when_cond2=>'scatter'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(56521267835358408)
,p_region_id=>wwv_flow_imp.id(56521189449358407)
,p_chart_type=>'scatter'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'  var myColors = [',
'    "#F0E2D2", "#D1AD94", "#D1D6BF", "#ACB393", "#697564"',
'  ];',
'',
'  // fallback if someone empties the palette',
'  if (!myColors || myColors.length === 0) {',
'    myColors = ["#007bff"];',
'  }',
'',
'  options.dataFilter = function(data) {',
'    if (!data || !data.series) return data;',
'',
'    // OPTION A: assign colors per-series (colors restart for each series)',
'    data.series.forEach(function(series) {',
'      series.items.forEach(function(bar, idx) {',
'        bar.color = myColors[idx % myColors.length];',
'      });',
'    });',
'',
'    /* ',
'    // OPTION B: assign colors across all series (no repeat until palette exhausted)',
'    var counter = 0;',
'    data.series.forEach(function(series) {',
'      series.items.forEach(function(bar) {',
'        bar.color = myColors[counter % myColors.length];',
'        counter++;',
'      });',
'    });',
'    */',
'',
'    return data;',
'  };',
'',
'  return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(56521321953358409)
,p_chart_id=>wwv_flow_imp.id(56521267835358408)
,p_seq=>10
,p_name=>'Area'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 as label,',
'       to_number(c002) as value,',
'       to_NUMBER(c003) as Value2',
'from apex_collections',
'where collection_name = ''AI_CHART''',
'order by label'))
,p_items_x_column_name=>'VALUE'
,p_items_y_column_name=>'VALUE2'
,p_items_label_column_name=>'LABEL'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(56521572781358411)
,p_chart_id=>wwv_flow_imp.id(56521267835358408)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'&P25_LABEL_2.'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(56521431196358410)
,p_chart_id=>wwv_flow_imp.id(56521267835358408)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'&P25_LABEL_1.'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56521824056358414)
,p_plug_name=>'Pyramid'
,p_title=>'&P25_CHART_TITLE.'
,p_region_name=>'pyramid1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P25_CHART_TYPE'
,p_plug_display_when_cond2=>'pyramid'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(56521944589358415)
,p_region_id=>wwv_flow_imp.id(56521824056358414)
,p_chart_type=>'pyramid'
,p_title=>'&P25_CHART_TITLE.'
,p_width=>'500'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hover_behavior=>'dim'
,p_value_format_scaling=>'auto'
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(56522094667358416)
,p_chart_id=>wwv_flow_imp.id(56521944589358415)
,p_seq=>10
,p_name=>'TEST'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 as label,',
'       to_number(c002) as value,',
'       to_NUMBER(c003) as Value2',
'from apex_collections',
'where collection_name = ''AI_CHART''',
'order by label'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56522766056358423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56521824056358414)
,p_button_name=>'2D'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'2D'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56523003575358426)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56521824056358414)
,p_button_name=>'3D'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'3D'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55694561629806822)
,p_name=>'P25_PROMPT'
,p_item_sequence=>10
,p_prompt=>'Prompt'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55694723757806824)
,p_name=>'P25_AI_SQL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56521072799358406)
,p_prompt=>'P25_AI_SQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55696714954806844)
,p_name=>'P25_CHART_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56521072799358406)
,p_prompt=>'P25_CHART_TYPE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55696822269806845)
,p_name=>'P25_CHART_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56521072799358406)
,p_prompt=>'P25_CHART_TITLE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55697345949806850)
,p_name=>'P25_RAW_JSON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56521072799358406)
,p_prompt=>'P25_RAW_JSON'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56521646574358412)
,p_name=>'P25_LABEL_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56521072799358406)
,p_prompt=>'Label 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56521724487358413)
,p_name=>'P25_LABEL_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56521072799358406)
,p_prompt=>'Label 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56522886094358424)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(56522766056358423)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56522975828358425)
,p_event_id=>wwv_flow_imp.id(56522886094358424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56521824056358414)
,p_attribute_01=>'apex.region("pyramid1").widget().ojChart({styleDefaults: { ''threeDEffect'': ''off'' }});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56523172894358427)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(56523003575358426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56523214675358428)
,p_event_id=>wwv_flow_imp.id(56523172894358427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("pyramid1").widget().ojChart({styleDefaults: { ''threeDEffect'': ''on'' }});'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55694979608806826)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Call GenAI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response clob;',
'    l_sql clob;',
'    l_has_summary number;',
'    l_prompt varchar2(4000);',
'    l_uses_vector_index number;',
'    l_cursor NUMBER := dbms_sql.open_cursor;',
'    l_profile_name user_cloud_ai_profiles.profile_name%type := lower(APEX_UTIL.GET_PREFERENCE(       ',
'         p_preference => ''CLOUD_AI_PROFILE'',',
'            p_user       => :APP_USER));',
'    l_model_name varchar2(2000) := ''meta.llama-3.3-70b-instruct'';',
'    l_messages clob;',
'    l_payload clob;',
'    l_json_object clob;',
'    l_narrate_prompt varchar2(4000);',
'     l_has_error BOOLEAN := FALSE;',
'begin',
'',
'-- ENABLE DEBUG',
'apex_debug.enable(apex_debug.c_log_level_info);',
'',
'',
'    l_messages := ai_chart_util_pgk.build_selectai_msg(''OCI_META_LLAMA_INSTRUCT_NL2SQL'',:p25_PROMPT);',
'    APEX_DEBUG.MESSAGE(p_message => ''l_messages''||l_messages);',
'    l_payload := ai_chart_util_pgk.build_genai_payload(l_model_name,l_messages); ',
'',
'      apex_web_service.set_request_headers(',
'        p_name_01 => ''Content-Type'',',
'        p_value_01 => ''application/json'',',
'        p_name_02 => ''User-Agent'',',
'        p_value_02 => ''APEX'',',
'        p_reset => false,',
'        p_skip_if_exists => true',
'      );',
'  ',
'      l_response := apex_web_service.make_rest_request(',
'        p_url => ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'',',
'        p_http_method => ''POST'',',
'        p_body => l_payload,',
'        p_credential_static_id => ''oci_credentials_gen_ai''',
'      );',
'',
'    l_response := JSON_VALUE(l_response,''$.chatResponse.choices[0].message.content[0].text'');',
'    ',
'    l_response := RTRIM(l_response);',
'    ',
'    apex_debug.message(''l_response after trim before semi colon removal: ''||l_response);',
'',
'     /* l_response := RTRIM(',
'                l_response,',
'                '' ''   ||   -- space',
'                CHR(9) ||   -- tab',
'                CHR(10)||   -- LF',
'                CHR(13)||   -- CR',
'                '';'' ',
'              );*/',
'',
'   -- l_response := REPLACE(l_response, ''`'', ''"''); ',
'    APEX_UTIL.SET_SESSION_STATE(''P25_RAW_JSON'',l_response);',
'    APEX_UTIL.SET_SESSION_STATE(''P25_AI_SQL'',json_VALUE(l_response,''$.sql''));',
'    APEX_UTIL.SET_SESSION_STATE(''P25_CHART_TYPE'',json_VALUE(l_response,''$.chart_type''));',
'    APEX_UTIL.SET_SESSION_STATE(''P25_CHART_TITLE'',json_VALUE(l_response,''$.title''));',
'    APEX_UTIL.SET_SESSION_STATE(''P25_LABEL_1'',json_VALUE(l_response,''$.label1''));',
'    APEX_UTIL.SET_SESSION_STATE(''P25_LABEL_2'',json_VALUE(l_response,''$.label2''));',
'   ',
'',
'',
'   ',
'   ',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55694979608806826
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(55695086058806827)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'    l_query         clob := :P25_AI_SQL;',
'      l_check       boolean := false;',
'    l_cursor NUMBER := dbms_sql.open_cursor;',
'Begin',
'',
'  if apex_collection.collection_exists(''AI_CHART'') then',
'        apex_collection.delete_collection(''AI_CHART'');',
'    end if;',
'  DBMS_SQL.PARSE (l_cursor, l_query, DBMS_SQL.native);',
'     APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'        p_collection_name => ''AI_CHART'', ',
'        p_query => l_query,',
'        p_generate_md5 => ''YES'');',
'   EXCEPTION',
'                WHEN OTHERS THEN',
'                    DBMS_OUTPUT.PUT_LINE(''Error: ''||l_query);',
'               apex_error.add_error(',
'            p_message           => ''SQL parse failed: '' || SUBSTR(SQLERRM, 1, 2000),',
'            p_display_location  => apex_error.c_inline_in_notification',
'          );',
'End;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P25_AI_SQL'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>55695086058806827
);
wwv_flow_imp.component_end;
end;
/
