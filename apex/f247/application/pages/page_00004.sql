prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Multi-User Select AI'
,p_alias=>'MULTI-USER-SELECT-AI'
,p_step_title=>'Multi-User Select AI'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33030949551887511)
,p_name=>'Report View for &APP_USER.'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_EMP_DEPT'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031097809887512)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_NUMBER'
,p_column_display_sequence=>10
,p_column_heading=>'Employee Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031146253887513)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031242986887514)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYEE_JOB_ROLE'
,p_column_display_sequence=>30
,p_column_heading=>'Employee Job Role'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031359623887515)
,p_query_column_id=>4
,p_column_alias=>'EMPLOYEES_MANAGER_NUMBER'
,p_column_display_sequence=>40
,p_column_heading=>'Employees Manager Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031467466887516)
,p_query_column_id=>5
,p_column_alias=>'EMPLOYEE_HIRE_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Employee Hire Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031530496887517)
,p_query_column_id=>6
,p_column_alias=>'EMPLOYEE_SALARY'
,p_column_display_sequence=>60
,p_column_heading=>'Employee Salary'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031605204887518)
,p_query_column_id=>7
,p_column_alias=>'EMPLOYEE_COMMISION'
,p_column_display_sequence=>70
,p_column_heading=>'Employee Commision'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031799139887519)
,p_query_column_id=>8
,p_column_alias=>'DEPARTMENT_NUMBER'
,p_column_display_sequence=>80
,p_column_heading=>'Department Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031843147887520)
,p_query_column_id=>9
,p_column_alias=>'DEPARTMENT_NAME'
,p_column_display_sequence=>90
,p_column_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33031929521887521)
,p_query_column_id=>10
,p_column_alias=>'DEPARTMENT_LOCATION'
,p_column_display_sequence=>100
,p_column_heading=>'Department Location'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032042921887522)
,p_query_column_id=>11
,p_column_alias=>'NUMBER_OF_EMPLOYEE_IN_DEPARTMENT'
,p_column_display_sequence=>110
,p_column_heading=>'Number Of Employee In Department'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032145996887523)
,p_query_column_id=>12
,p_column_alias=>'TOTAL_SALARY_OF_DEPARTMENT'
,p_column_display_sequence=>120
,p_column_heading=>'Total Salary Of Department'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032249907887524)
,p_query_column_id=>13
,p_column_alias=>'MAX_SALARY_IN_DEPARTMENT'
,p_column_display_sequence=>130
,p_column_heading=>'Max Salary In Department'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032312276887525)
,p_query_column_id=>14
,p_column_alias=>'MINIMUM_HIRE_DATE_IN_DEPARTMENT'
,p_column_display_sequence=>140
,p_column_heading=>'Minimum Hire Date In Department'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032415825887526)
,p_query_column_id=>15
,p_column_alias=>'MAX_HIRE_DATE_IN_DEPARTMENT'
,p_column_display_sequence=>150
,p_column_heading=>'Max Hire Date In Department'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032520191887527)
,p_query_column_id=>16
,p_column_alias=>'NAME_OF_DEPARTMENT_MANAGERS'
,p_column_display_sequence=>160
,p_column_heading=>'Name Of Department Managers'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032672330887528)
,p_query_column_id=>17
,p_column_alias=>'NUMBER_OF_DEPARTMENT_MANAGERS'
,p_column_display_sequence=>170
,p_column_heading=>'Number Of Department Managers'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032780893887529)
,p_query_column_id=>18
,p_column_alias=>'TOTAL_COMMISION_OF_DEPARTMENT'
,p_column_display_sequence=>180
,p_column_heading=>'Total Commision Of Department'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032825284887530)
,p_query_column_id=>19
,p_column_alias=>'AVERAGE_TENURE_OF_DEPARTMENT_EMPLOYEES'
,p_column_display_sequence=>190
,p_column_heading=>'Average Tenure Of Department Employees'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33032934107887531)
,p_query_column_id=>20
,p_column_alias=>'TOP_JOB_TITLES_FOR_DEPARTMENT'
,p_column_display_sequence=>200
,p_column_heading=>'Top Job Titles For Department'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33033038637887532)
,p_query_column_id=>21
,p_column_alias=>'DEPARTMENT_HAVE_OPEN_POSITIONS'
,p_column_display_sequence=>210
,p_column_heading=>'Department Have Open Positions'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98099645562340284)
,p_name=>'P4_PROMPT'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98099798896340286)
,p_name=>'P4_RESPONSE'
,p_item_sequence=>30
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100162187802010445)
,p_name=>'P4_SQL'
,p_item_sequence=>40
,p_prompt=>'Sql'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38096838356031357)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DBMS Cloud AI Generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Declare',
'CURSOR c_json_records IS',
'        SELECT jt.column_value AS json_record',
'        FROM JSON_TABLE(:P72_SQL, ''$[*]'' ',
'            COLUMNS (column_value CLOB PATH ''$'')) jt;',
'',
'    v_json_record CLOB; */',
'Begin',
'',
'SELECT DBMS_CLOUD_AI.GENERATE(prompt       => :P4_PROMPT,',
'                              profile_name => ''OCI_LLAMA_INSTRUCT_MULTI_USER'',',
'                              action       => ''narrate'') into :P4_RESPONSE from dual;',
'                              ',
'SELECT DBMS_CLOUD_AI.GENERATE(prompt       => :P4_PROMPT,',
'                              profile_name => ''OCI_LLAMA_INSTRUCT_MULTI_USER'',',
'                              action       => ''showsql'') into :P4_SQL from dual;                              ',
'/*',
'Execute Immediate ''TRUNCATE TABLE JSON_DATA_TEST'';',
'FOR r IN c_json_records LOOP',
'        v_json_record := ''['' || r.json_record || '']'';  -- Wrap each record in an array',
'',
'        -- Insert the individual JSON object into the table',
'        INSERT INTO JSON_DATA_TEST (JSON_DOCUMENT) VALUES (v_json_record);',
'    END LOOP; */',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>38096838356031357
);
wwv_flow_imp.component_end;
end;
/
