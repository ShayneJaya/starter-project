prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Parent Authorization'
,p_alias=>'CLASSIC-REPORT-CARDS'
,p_step_title=>'Classic Report Cards'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(43305734975740576)
,p_name=>'Classic Report Cards'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Employee ID: ''|| EMPLOYEE_ID AS CARD_TITLE,',
'       FIRST_NAME as CARD_TEXT,',
'       LAST_NAME,',
'       EMAIL as CARD_SUBTEXT,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       APEX_PAGE.GET_URL (',
'            p_page   => 16,',
'            p_items  => ''P16_EMPLOYEE_ID'',',
'            p_values => EMPLOYEE_ID ) CARD_LINK,',
'       DEPARTMENT_ID,',
'       ''u-color-''|| row_number() over(order by EMPLOYEE_ID) as CARD_COLOR,',
'       ''fa-star''    AS CARD_ICON',
'  from OEHR_EMPLOYEES',
'  ORDER BY EMPLOYEE_ID asc',
'',
'  '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(43409002457973576)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_imp.id(37852063688108306)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41776615382015949)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>21
,p_column_heading=>'Card Title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41776747594015950)
,p_query_column_id=>2
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>31
,p_column_heading=>'Card Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43306959112740569)
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43313058456730201)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>41
,p_column_heading=>'Card Subtext'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43307799060740567)
,p_query_column_id=>5
,p_column_alias=>'PHONE_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43308101448740566)
,p_query_column_id=>6
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Hire Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43308528944740565)
,p_query_column_id=>7
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(42245009256551729)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43308958250740564)
,p_query_column_id=>8
,p_column_alias=>'SALARY'
,p_column_display_sequence=>8
,p_column_heading=>'Salary'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43309351564740562)
,p_query_column_id=>9
,p_column_alias=>'COMMISSION_PCT'
,p_column_display_sequence=>9
,p_column_heading=>'Commission Percent'
,p_column_format=>'999990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43309703813740561)
,p_query_column_id=>10
,p_column_alias=>'MANAGER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Manager'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(38985306115169053)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43313123988730202)
,p_query_column_id=>11
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>51
,p_column_heading=>'Card Link'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43310182614740560)
,p_query_column_id=>12
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>11
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(42246926833551708)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43313238288730203)
,p_query_column_id=>13
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>61
,p_column_heading=>'Card Color'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43313326340730204)
,p_query_column_id=>14
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>71
,p_column_heading=>'Card Icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43312243557740553)
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
 p_id=>wwv_flow_imp.id(43313428971730205)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Employee ID: ''|| EMPLOYEE_ID AS CARD_TITLE,',
'        EMPLOYEE_ID,',
'       FIRST_NAME as CARD_TEXT,',
'       LAST_NAME,',
'       EMAIL as CARD_SUBTEXT,',
'       PHONE_NUMBER,',
'       HIRE_DATE,',
'       JOB_ID,',
'       SALARY,',
'       COMMISSION_PCT,',
'       MANAGER_ID,',
'       APEX_PAGE.GET_URL (',
'            p_page   => 16,',
'            p_items  => ''P16_EMPLOYEE_ID'',',
'            p_values => EMPLOYEE_ID ) CARD_LINK,',
'       DEPARTMENT_ID,',
'       ''u-color-''|| row_number() over(order by EMPLOYEE_ID) as CARD_COLOR,',
'       ''fa-star''    AS CARD_ICON',
'  from OEHR_EMPLOYEES',
'  ORDER BY EMPLOYEE_ID asc',
'',
'  '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(43313555578730206)
,p_region_id=>wwv_flow_imp.id(43313428971730205)
,p_layout_type=>'GRID'
,p_card_css_classes=>'&CARD_COLOR.'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_TEXT'
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_SUBTEXT'
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'  <title>Checkbox Example</title>',
'</head>',
'<body>',
'  <h3>Select Permissions:</h3>',
'',
'  <label><input type="checkbox" name="permission" value="READ"> Read</label><br>',
'  <label><input type="checkbox" name="permission" value="WRITE"> Write</label><br>',
'  <label><input type="checkbox" name="permission" value="DELETE"> Delete</label><br>',
'  <label><input type="checkbox" name="permission" value="EXECUTE"> Execute</label><br>',
'  <label><input type="checkbox" name="permission" value="ADMIN"> Admin</label><br><br>',
'',
'  <button onclick="getCheckedPermissions()">Submit</button>',
'',
'  <p id="result"></p>',
'',
'  <script>',
'    function getCheckedPermissions() {',
'      const checkboxes = document.querySelectorAll(''input[name="permission"]:checked'');',
'      const selected = Array.from(checkboxes).map(cb => cb.value);',
'      document.getElementById("result").innerText = "Selected: " + selected.join(", ");',
'    }',
'  </script>',
'</body>',
'</html>',
''))
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(43313716014730208)
,p_card_id=>wwv_flow_imp.id(43313555578730206)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_EMPLOYEE_ID:&EMPLOYEE_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43310698817740558)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43305734975740576)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:16::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43310902929740558)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(43305734975740576)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43311469027740556)
,p_event_id=>wwv_flow_imp.id(43310902929740558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43305734975740576)
);
wwv_flow_imp.component_end;
end;
/
