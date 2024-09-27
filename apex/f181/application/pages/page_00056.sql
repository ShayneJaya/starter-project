prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_name=>'RESTful Web Services (REST APIs)'
,p_alias=>'RESTFUL-WEB-SERVICES-REST-APIS'
,p_step_title=>'RESTful Web Services (REST APIs)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24040996700295346)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32945791020813960)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(32830040333813888)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(33008182163813998)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(24049716890371203)
,p_name=>'Rest Data Source EMP Table'
,p_template=>wwv_flow_imp.id(32933336533813955)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(24064724735446000)
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'EMPNO DESC '
,p_source_post_processing=>'WHERE_ORDER_BY_CLAUSE'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(32971576445813973)
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
 p_id=>wwv_flow_imp.id(24049827455371204)
,p_query_column_id=>1
,p_column_alias=>'RN'
,p_column_display_sequence=>10
,p_column_heading=>'Rn'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24049978785371205)
,p_query_column_id=>2
,p_column_alias=>'JOB'
,p_column_display_sequence=>20
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24050091806371206)
,p_query_column_id=>3
,p_column_alias=>'MGR'
,p_column_display_sequence=>30
,p_column_heading=>'Mgr'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24050116629371207)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>40
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24050259260371208)
,p_query_column_id=>5
,p_column_alias=>'COMM'
,p_column_display_sequence=>50
,p_column_heading=>'Comm'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24050391285371209)
,p_query_column_id=>6
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>60
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24050464088371210)
,p_query_column_id=>7
,p_column_alias=>'ENAME'
,p_column_display_sequence=>70
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24050601752371212)
,p_query_column_id=>9
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>90
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24050717608371213)
,p_query_column_id=>10
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>100
,p_column_heading=>'Hiredate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24049584362371201)
,p_button_sequence=>90
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23763674111915337)
,p_name=>'P56_TITLE'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'# REST API Demo',
'This page demonstrates how to expose a database table as a **RESTful Web Service (API)**. You can use the API to retrieve data (GET) or insert new records (POST) via an external system or from another application.',
'',
'**Key Benefits:**',
'- Easily expose data from APEX to other systems (Located under SQL Workshop -> RESTful Services',
'- REST APIs allow external integration and real-time data access',
'- Supports both GET, PUT, POST, and DELETE requests for dynamic interaction',
''))
,p_prompt=>'Title'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23764303326915344)
,p_name=>'P56_ENAME'
,p_item_sequence=>20
,p_prompt=>'Ename'
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
 p_id=>wwv_flow_imp.id(23764456301915345)
,p_name=>'P56_EJOB'
,p_item_sequence=>40
,p_prompt=>'Ejob'
,p_placeholder=>'SALESMAN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23764596637915346)
,p_name=>'P56_MGR'
,p_item_sequence=>50
,p_prompt=>'Mgr'
,p_placeholder=>'7698'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23764610955915347)
,p_name=>'P56_SAL'
,p_item_sequence=>60
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23764784215915348)
,p_name=>'P56_COMM'
,p_item_sequence=>70
,p_prompt=>'Comm'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23764826394915349)
,p_name=>'P56_DEPTNO'
,p_item_sequence=>80
,p_prompt=>'Deptno'
,p_placeholder=>'10 or 20'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24049602285371202)
,p_name=>'P56_RESPONSE'
,p_item_sequence=>100
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23764914419915350)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Sent POST Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_clob           CLOB;',
'    l_status_code    VARCHAR2(1000);',
'    l_response       CLOB;',
'    l_url            VARCHAR2(4000) := ''https://ijegqeyui1cwvrq-b4qqa8czfoctzxjh.adb.us-ashburn-1.oraclecloudapps.com/ords/ci_dev/hr/emp_post_example/''; ',
'BEGIN',
'    l_clob := ''{"ename": "'' || :P56_ENAME || ''", '' ||',
'              ''"ejob": "'' || :P56_EJOB || ''", '' ||',
'              ''"mgr": '' || NVL(:P56_MGR, ''null'') || '', '' ||',
'              ''"sal": '' || NVL(:P56_SAL, ''null'') || '', '' ||',
'              ''"comm": '' || NVL(:P56_COMM, ''null'') || '', '' ||',
'              ''"deptno": '' || NVL(:P56_DEPTNO, ''null'') || ''}'';',
'     apex_web_service.set_request_headers(',
'        p_name_01 => ''Content-Type'',',
'        p_value_01 => ''application/json'',',
'        p_name_02 => ''User-Agent'',',
'        p_value_02 => ''APEX'',',
'        p_reset => false,',
'        p_skip_if_exists => true',
'      );',
'    l_status_code := apex_web_service.make_rest_request(',
'        p_url          => l_url,                 ',
'        p_http_method  => ''POST'',                ',
'        p_body         => l_clob,                ',
'        p_transfer_timeout => 60                 ',
'    );',
'    IF l_status_code = ''201'' THEN',
'        APEX_DEBUG.MESSAGE(''Record successfully created. Status code: '' || l_status_code);',
'    ELSE',
'        APEX_DEBUG.MESSAGE(''Failed to create record. Status code: '' || l_status_code);',
'    END IF;',
'    APEX_UTIL.SET_SESSION_STATE(''P56_RESPONSE'',l_status_code);',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23764914419915350
);
wwv_flow_imp.component_end;
end;
/
