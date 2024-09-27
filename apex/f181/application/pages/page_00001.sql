prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Demo Application'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-TreeView-label{',
'    color: #FFF8EA;',
'    font-family: Comic Sans MS;',
'}',
'               ',
'.samplebody {',
'            margin: 0;',
'            font-family: Arial, sans-serif;',
'            display: flex;',
'            justify-content: center;',
'            align-items:center;',
'}',
'.card-container {',
'            display: flex;',
'            width: 100%;',
'            max-width: 800px; /* Adjust maximum width as needed */',
'            justify-content: space-between;',
'        }',
'        ',
'        ',
'        .card {',
'            flex:1;',
'            padding:20px;',
'            justify-content: center; /* Center-align the cards horizontally */',
'            align-items: flex-start; /* Align cards to the top of the container */',
'            background-color: #815B5B;',
'            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'            overflow: hidden;',
'            transition: transform 0.3s ease;',
'            margin-right: 20px;',
'            ',
'        }',
'        .card a {',
'            text-decoration: none;',
'            color: inherit; /* Inherit text color from parent */',
'            display: block;',
'            width: 100%;',
'            height: 100%;',
'        }',
'',
'        .card:hover {',
'            transform: translateY(-5px);',
'        }',
'        ',
'        .card-title {',
'            font-size: 18px;',
'            font-weight: bold;',
'            margin-bottom: 10px;',
'            color: #FFF8EA;',
'            text-align:center;',
'        }',
'        .card-description {',
'            font-size: 25px;',
'            color: #FFF8EA;',
'            margin-bottom: 20px;',
'            text-align:center;',
'        }',
'        ',
'        .card:last-child {',
'            margin-right: 0;',
'        }',
''))
,p_step_template=>wwv_flow_imp.id(32833769739813906)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30911974644410440)
,p_plug_name=>'Employee Distribution by Department'
,p_region_name=>'empdist'
,p_region_template_options=>'t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(30912030144410441)
,p_region_id=>wwv_flow_imp.id(30911974644410440)
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
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(30912107018410442)
,p_chart_id=>wwv_flow_imp.id(30912030144410441)
,p_static_id=>unistr('empdist\00CF\00CF')
,p_seq=>10
,p_name=>'Pie Chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.department_name, COUNT(e.employee_id) AS employee_count, r.region_name',
'FROM oehr_employees e',
'JOIN oehr_departments d ON e.department_id = d.department_id',
'JOIN OEHR_LOCATIONS l on d.location_id = l.location_id',
'JOIN OEHR_COUNTRIES c on l.country_id = c.country_id',
'JOIN OEHR_REGIONS r on c.region_id = r.region_id',
'where r.region_id = nvl(:P1_REGION,r.region_id)',
'GROUP BY d.department_name, r.region_name'))
,p_ajax_items_to_submit=>'P1_REGION'
,p_series_name_column_name=>'DEPARTMENT_NAME'
,p_items_value_column_name=>'EMPLOYEE_COUNT'
,p_items_label_column_name=>'DEPARTMENT_NAME'
,p_color=>'#594545'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_style=>'oblique'
,p_items_label_font_size=>'16'
,p_items_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30912486589410445)
,p_plug_name=>'Job Title Distribution'
,p_region_name=>'jobdist'
,p_region_template_options=>'t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(30912562316410446)
,p_region_id=>wwv_flow_imp.id(30912486589410445)
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
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(30912678312410447)
,p_chart_id=>wwv_flow_imp.id(30912562316410446)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT j.job_title, COUNT(e.employee_id) AS employee_count, r.region_id',
'FROM oehr_employees e',
'JOIN oehr_jobs j ON e.job_id = j.job_id',
'JOIN oehr_departments d ON e.department_id = d.department_id',
'JOIN OEHR_LOCATIONS l on d.location_id = l.location_id',
'JOIN OEHR_COUNTRIES c on l.country_id = c.country_id',
'JOIN OEHR_REGIONS r on c.region_id = r.region_id',
'where r.region_id = nvl(:P1_REGION, r.region_id)',
'GROUP BY j.job_title, r.region_id;'))
,p_ajax_items_to_submit=>'P1_REGION'
,p_items_value_column_name=>'EMPLOYEE_COUNT'
,p_items_label_column_name=>'JOB_TITLE'
,p_color=>'#594545'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_style=>'oblique'
,p_items_label_font_size=>'18'
,p_items_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(30912720869410448)
,p_chart_id=>wwv_flow_imp.id(30912562316410446)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(30912815078410449)
,p_chart_id=>wwv_flow_imp.id(30912562316410446)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30912932825410450)
,p_plug_name=>'Salary Overview '
,p_region_name=>'salaryoverview'
,p_region_template_options=>'t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(33138485397075401)
,p_region_id=>wwv_flow_imp.id(30912932825410450)
,p_chart_type=>'boxPlot'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(33138533314075402)
,p_chart_id=>wwv_flow_imp.id(33138485397075401)
,p_seq=>10
,p_name=>'Box Plot'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.salary, ''Employee Salary''',
'FROM oehr_employees e',
'JOIN oehr_departments d ON e.department_id = d.department_id',
'JOIN OEHR_LOCATIONS l on d.location_id = l.location_id',
'JOIN OEHR_COUNTRIES c on l.country_id = c.country_id',
'JOIN OEHR_REGIONS r on c.region_id = r.region_id',
'where r.region_id = nvl(:P1_REGION, r.region_id);',
'',
'',
'',
''))
,p_ajax_items_to_submit=>'P1_REGION'
,p_series_type=>'boxPlot'
,p_items_value_column_name=>'SALARY'
,p_items_label_column_name=>'''EMPLOYEESALARY'''
,p_color=>'#594545'
,p_q2_color=>'#815b5b'
,p_q3_color=>'#9e7676'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_style=>'oblique'
,p_items_label_font_size=>'18'
,p_items_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(33138708918075404)
,p_chart_id=>wwv_flow_imp.id(33138485397075401)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(33138688936075403)
,p_chart_id=>wwv_flow_imp.id(33138485397075401)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33130813111814234)
,p_plug_name=>'Demo Application'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32900026305813941)
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
 p_id=>wwv_flow_imp.id(33139927434075416)
,p_plug_name=>'Employee Tenure Analysis'
,p_region_name=>'emptenure'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(33140064688075417)
,p_region_id=>wwv_flow_imp.id(33139927434075416)
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
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(33140102917075418)
,p_chart_id=>wwv_flow_imp.id(33140064688075417)
,p_seq=>10
,p_name=>'Employee Tenure Analysis'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT employee_id, first_name, last_name, hire_date, ',
'       TRUNC(MONTHS_BETWEEN(SYSDATE, hire_date) / 12) AS years_of_service',
'FROM oehr_employees e',
'JOIN oehr_departments d ON e.department_id = d.department_id',
'JOIN OEHR_LOCATIONS l on d.location_id = l.location_id',
'JOIN OEHR_COUNTRIES c on l.country_id = c.country_id',
'JOIN OEHR_REGIONS r on c.region_id = r.region_id',
'where r.region_id = nvl(:P1_REGION, r.region_id)',
'',
''))
,p_ajax_items_to_submit=>'P1_REGION'
,p_items_value_column_name=>'YEARS_OF_SERVICE'
,p_items_label_column_name=>'FIRST_NAME'
,p_color=>'#594545'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(33140376518075420)
,p_chart_id=>wwv_flow_imp.id(33140064688075417)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(33140258164075419)
,p_chart_id=>wwv_flow_imp.id(33140064688075417)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33140423950075421)
,p_plug_name=>'Commission Distribution'
,p_region_name=>'commisiondist'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>90
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(33140507370075422)
,p_region_id=>wwv_flow_imp.id(33140423950075421)
,p_chart_type=>'bubble'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(33140639348075423)
,p_chart_id=>wwv_flow_imp.id(33140507370075422)
,p_seq=>10
,p_name=>'Commission Percentage Distribution'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT commission_pct ,commission_pct * 100 || ''%'' , COUNT(employee_id) || '' Employee(s) @ ''|| commission_pct * 100 || ''%'' , COUNT(employee_id) AS employee_count',
'FROM oehr_employees e',
'JOIN oehr_departments d ON e.department_id = d.department_id',
'JOIN OEHR_LOCATIONS l on d.location_id = l.location_id',
'JOIN OEHR_COUNTRIES c on l.country_id = c.country_id',
'JOIN OEHR_REGIONS r on c.region_id = r.region_id',
'where r.region_id = nvl(:P1_REGION, r.region_id)',
'and commission_pct IS NOT NULL',
'GROUP BY commission_pct;'))
,p_ajax_items_to_submit=>'P1_REGION'
,p_items_x_column_name=>'EMPLOYEE_COUNT'
,p_items_y_column_name=>'COMMISSION_PCT'
,p_items_label_column_name=>'COMMISSION_PCT*100||''%'''
,p_items_short_desc_column_name=>'COUNT(EMPLOYEE_ID)||''EMPLOYEE(S)@''||COMMISSION_PCT*100||''%'''
,p_color=>'#594545'
,p_line_style=>'solid'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(33143006600075447)
,p_chart_id=>wwv_flow_imp.id(33140507370075422)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_min=>0
,p_max=>.5
,p_format_type=>'percent'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(33142915318075446)
,p_chart_id=>wwv_flow_imp.id(33140507370075422)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33141160576075428)
,p_plug_name=>'Employee Salary by Region'
,p_region_name=>'employeesal'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(33141287234075429)
,p_region_id=>wwv_flow_imp.id(33141160576075428)
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
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(33141323427075430)
,p_chart_id=>wwv_flow_imp.id(33141287234075429)
,p_seq=>10
,p_name=>'Employee Salary by Region'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    r.region_name,',
'    COUNT(e.employee_id) AS employee_count,',
'    AVG(e.salary) AS avg_salary,',
'    ''$'' || AVG(e.salary)  AS dollar_avg_salary',
'FROM OEHR_EMPLOYEES e',
'JOIN OEHR_DEPARTMENTS d ON e.department_id = d.department_id',
'JOIN oehr_locations l ON d.location_id = l.location_id',
'JOIN OEHR_COUNTRIES c ON l.country_id = c.country_id',
'JOIN oehr_regions r ON c.region_id = r.region_id',
'where r.region_id = nvl(:P1_REGION, r.region_id)',
'GROUP BY r.region_name;',
''))
,p_ajax_items_to_submit=>'P1_REGION'
,p_items_value_column_name=>'AVG_SALARY'
,p_items_label_column_name=>'REGION_NAME'
,p_items_short_desc_column_name=>'DOLLAR_AVG_SALARY'
,p_color=>'#594545'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(33141714662075434)
,p_chart_id=>wwv_flow_imp.id(33141287234075429)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(33141619614075433)
,p_chart_id=>wwv_flow_imp.id(33141287234075429)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_currency=>'USD'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Arial'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'10'
,p_tick_label_font_color=>'#fff8ea'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33141824471075435)
,p_plug_name=>'Hidden Content'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33592159246078520)
,p_plug_name=>'Cards Region'
,p_region_name=>'crdrgn'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>30
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_employee_count NUMBER;',
'  l_html_card CLOB;',
'  l_avg_salary varchar2(50);',
'  l_region_name varchar2(50);',
'  l_total_orders number;',
'BEGIN',
'  -- Execute query to get the count of employees',
'  SELECT COUNT(*) INTO l_employee_count FROM OEHR_EMPLOYEES;',
'select COUNT(*) into l_total_orders from OEHR_ORDERS;',
'  SELECT  ''$'' || TRUNC(AVG(e.salary)) into l_avg_salary',
'FROM OEHR_EMPLOYEES e',
'JOIN oehr_departments d ON e.department_id = d.department_id',
'JOIN OEHR_LOCATIONS l ON d.location_id = l.location_id',
'JOIN OEHR_COUNTRIES c ON l.country_id = c.country_id',
'JOIN OEHR_REGIONS r ON c.region_id = r.region_id',
'where r.region_id = nvl(:P1_REGION,r.region_id);',
'',
'IF :P1_REGION IS NULL THEN',
'        l_region_name := ''All Regions'';',
'    ELSE',
'        SELECT region_name',
'        INTO l_region_name',
'        FROM OEHR_REGIONS',
'        WHERE region_id = :P1_REGION;',
'    END IF;',
'',
'',
'  -- Initialize the HTML card content with specified colors',
'  l_html_card := ''<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Clickable Card</title>',
'    ',
'</head>',
'<body class= "samplebody">',
'<div class="card-container">',
'    <a href="https://www.google.com" target="_blank" class="card">',
'        <div class="card-title">Total Number of Current Employees</div>',
'        <div class="card-description">',
'            '' ||l_employee_count|| ''',
'        </div>',
'    </a>',
'',
'    <a href="https://www.google.com" target="_blank" class="card">',
'        <div class="card-title">Average Salary of Employee in ''||l_region_name || ''</div>',
'            <div class="card-description">',
'               '' ||l_avg_salary|| ''',
'            </div>',
'    </a>',
'',
'    <a href="https://www.google.com" target="_blank" class="card">',
'        <div class="card-title">Total Orders</div>',
'            <div class="card-description">',
'               '' ||l_total_orders|| ''',
'            </div>',
'    </a>',
'</div>',
'',
'',
'',
'</body>',
'</html>',
'',
''';',
'',
'  -- Return the HTML card content',
'  RETURN l_html_card;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33592291317078521)
,p_plug_name=>'Average Salary'
,p_region_name=>'avgsalcard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_avg_salary Varchar2(10);',
'  l_html_card CLOB;',
'  l_region_name Varchar2(15);',
'BEGIN',
'  -- Execute query to get the count of employees',
'SELECT  ''$'' || TRUNC(AVG(e.salary)) into l_avg_salary',
'FROM OEHR_EMPLOYEES e',
'JOIN oehr_departments d ON e.department_id = d.department_id',
'JOIN OEHR_LOCATIONS l ON d.location_id = l.location_id',
'JOIN OEHR_COUNTRIES c ON l.country_id = c.country_id',
'JOIN OEHR_REGIONS r ON c.region_id = r.region_id',
'where r.region_id = nvl(:P1_REGION,r.region_id);',
'',
'IF :P1_REGION IS NULL THEN',
'        l_region_name := ''All Regions'';',
'    ELSE',
'        SELECT region_name',
'        INTO l_region_name',
'        FROM OEHR_REGIONS',
'        WHERE region_id = :P1_REGION;',
'    END IF;',
'',
'  -- Initialize the HTML card content with specified colors',
'  l_html_card := ''<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Clickable Card</title>',
'    ',
'</head>',
'<body>',
'   <a href="https://ijegqeyui1cwvrq-ixk5bamn38lcwmke.adb.us-ashburn-1.oraclecloudapps.com/ords/r/ci_dev/demo-application/home?session=109827751848711">',
'    <div class="card">',
'        <div class="card-content">',
'            <div class="card-title">Average Salary of Employee in ''||l_region_name || ''</div>',
'            <div class="card-description">',
'               '' ||l_avg_salary|| ''',
'            </div>',
'        </div>',
'    </div>',
'   </a> ',
'</body>',
'</html>',
'',
''';',
'',
'  -- Return the HTML card content',
'  RETURN l_html_card;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33592312755078522)
,p_plug_name=>'Total Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_employee_count NUMBER;',
'  l_html_card CLOB;',
'BEGIN',
'  -- Execute query to get the count of employees',
'  SELECT COUNT(*) INTO l_employee_count FROM OEHR_EMPLOYEES;',
'',
'  -- Initialize the HTML card content with specified colors',
'  l_html_card := ''<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Clickable Card</title>',
'    ',
'</head>',
'<body>',
'   <a href="https://ijegqeyui1cwvrq-ixk5bamn38lcwmke.adb.us-ashburn-1.oraclecloudapps.com/ords/r/ci_dev/demo-application/home?session=109827751848711">',
'    <div class="card">',
'        <div class="card-content">',
'            <div class="card-title">Total Number of Current Employees</div>',
'            <div class="card-description">',
'                This is a sample card that can be used to display employee information. '' ||l_employee_count|| ''',
'            </div>',
'        </div>',
'    </div>',
'   </a> ',
'</body>',
'</html>',
'',
''';',
'',
'  -- Return the HTML card content',
'  RETURN l_html_card;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33594618484078545)
,p_plug_name=>'Goal: Increase Employee Headcount'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33593745948078536)
,p_plug_name=>'Goal: 250 Head Count'
,p_parent_plug_id=>wwv_flow_imp.id(33594618484078545)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(33593855393078537)
,p_region_id=>wwv_flow_imp.id(33593745948078536)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'percent'
,p_value_format_type=>'percent'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>.5
,p_gauge_inner_radius=>.9
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(33593959046078538)
,p_chart_id=>wwv_flow_imp.id(33593855393078537)
,p_seq=>10
,p_name=>'Current Count'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    count(*)  as Value,',
'    250 as MaxValue',
'from OEHR_EMPLOYEES',
'',
''))
,p_items_value_column_name=>'MAXVALUE'
,p_items_max_value=>'MAXVALUE'
,p_color=>'#fff8ea'
,p_items_label_rendered=>false
,p_gauge_plot_area_color=>'#594545'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33594393379078542)
,p_plug_name=>'Goal: 250 Head Count'
,p_parent_plug_id=>wwv_flow_imp.id(33594618484078545)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(33594404340078543)
,p_region_id=>wwv_flow_imp.id(33594393379078542)
,p_chart_type=>'dial'
,p_width=>'250'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(33594537047078544)
,p_chart_id=>wwv_flow_imp.id(33594404340078543)
,p_seq=>10
,p_name=>'Current Count'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    count(*)  as Value,',
'    150 as MaxValue',
'from OEHR_EMPLOYEES',
'',
''))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAXVALUE'
,p_color=>'#fff8ea'
,p_items_label_rendered=>false
,p_gauge_plot_area_color=>'#594545'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66303484249479022)
,p_plug_name=>'Employee Hierarchy '
,p_icon_css_classes=>'fa-plus-square-o'
,p_region_template_options=>'t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       "FIRST_NAME" as title, ',
'       ''icon-tree-folder'' as icon, ',
'       "EMPLOYEE_ID" as value, ',
'       null as tooltip, ',
'       null as link ',
'from "#OWNER#"."OEHR_EMPLOYEES"',
'start with "MANAGER_ID" is null',
'connect by prior "EMPLOYEE_ID" = "MANAGER_ID"',
'order siblings by "EMPLOYEE_ID"'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'default_icon_css_class', 'icon-tree-folder',
  'hierarchy_level_column', 'LEVEL',
  'icon_css_class_column', 'ICON',
  'icon_type_css_class', 'a-Icon',
  'link_column', 'LINK',
  'node_label_column', 'TITLE',
  'node_status_column', 'STATUS',
  'node_value_column', 'VALUE',
  'tree_hierarchy', 'LEVEL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33153690061240565)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66303484249479022)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(33195437571025582)
,p_button_image_alt=>'Collapse All'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33154050498240566)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66303484249479022)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(33195437571025582)
,p_button_image_alt=>'Expand All'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33142357770075440)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33141824471075435)
,p_button_name=>'Reset'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(33195437571025582)
,p_button_image_alt=>'Reset Filters'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33142674020075443)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33141824471075435)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(33195437571025582)
,p_button_image_alt=>'Search'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33141940735075436)
,p_name=>'P1_EMPLOYEE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33141824471075435)
,p_prompt=>'Employee Id'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'Select LAST_NAME || '', '' || FIRST_NAME || '' - '' || EMPLOYEE_ID, EMPLOYEE_ID from OEHR_EMPLOYEES'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33142065102075437)
,p_name=>'P1_FIRST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33141824471075435)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33142188064075438)
,p_name=>'P1_LAST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33141824471075435)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33142234392075439)
,p_name=>'P1_REGION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33141824471075435)
,p_prompt=>'Region'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select REGION_NAME, REGION_ID from OEHR_REGIONS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Regions -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33190636092956427)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33153690061240565)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33191076796956429)
,p_event_id=>wwv_flow_imp.id(33190636092956427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66303484249479022)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33191417993957309)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33154050498240566)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33191845690957322)
,p_event_id=>wwv_flow_imp.id(33191417993957309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66303484249479022)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33142495817075441)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33142357770075440)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33142567988075442)
,p_event_id=>wwv_flow_imp.id(33142495817075441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P1_EMPLOYEE_ID").setValue(null);',
'apex.item("P1_FIRST_NAME").setValue(null);',
'apex.item("P1_LAST_NAME").setValue(null);',
'apex.item("P1_REGION").setValue(null);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33142713068075444)
,p_name=>'New_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_REGION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33142817602075445)
,p_event_id=>wwv_flow_imp.id(33142713068075444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("empdist").refresh();',
'apex.region("jobdist").refresh();',
'apex.region("emptenure").refresh();',
'apex.region("commisiondist").refresh();',
'apex.region("salaryoverview").refresh();',
'apex.region("employeesal").refresh();',
'apex.region("crdrgn").refresh();'))
);
wwv_flow_imp.component_end;
end;
/
