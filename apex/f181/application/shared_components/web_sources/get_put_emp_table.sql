prompt --application/shared_components/web_sources/get_put_emp_table
begin
--   Manifest
--     WEB SOURCE: GET/PUT EMP Table
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(25289675773620155)
,p_name=>'GET/PUT EMP Table'
,p_static_id=>'get_put_emp_table'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_remote_server_id=>wwv_flow_imp.id(24060350621445966)
,p_url_path_prefix=>'hr/employees/:id'
,p_version_scn=>41924163425773
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25290272246620166)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_name=>'id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_value=>'8058'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25302304830664467)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25390444281066294)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_name=>'ErrorMessage'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(25289838536620160)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(25298238686655432)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'"ename":"#ENAME#",',
'"job":"#JOB#",',
'"hiredate" : "#HIREDATE#",',
'"mgr": #MGR#,',
'"sal": #SAL#,',
'"comm": #COMM#,',
'"deptno": #DEPTNO#',
'}'))
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25298712323658560)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_web_src_operation_id=>wwv_flow_imp.id(25298238686655432)
,p_name=>'ENAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25299227681658561)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_web_src_operation_id=>wwv_flow_imp.id(25298238686655432)
,p_name=>'JOB'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25299731892658562)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_web_src_operation_id=>wwv_flow_imp.id(25298238686655432)
,p_name=>'MGR'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25300242492658563)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_web_src_operation_id=>wwv_flow_imp.id(25298238686655432)
,p_name=>'SAL'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25300743622658564)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_web_src_operation_id=>wwv_flow_imp.id(25298238686655432)
,p_name=>'COMM'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25301290104658565)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_web_src_operation_id=>wwv_flow_imp.id(25298238686655432)
,p_name=>'DEPTNO'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(25372696538831724)
,p_web_src_module_id=>wwv_flow_imp.id(25289675773620155)
,p_web_src_operation_id=>wwv_flow_imp.id(25298238686655432)
,p_name=>'HIREDATE'
,p_param_type=>'BODY'
,p_data_type=>'DATE'
,p_output_format_mask=>'MM/DD/YYYY'
,p_is_required=>false
);
wwv_flow_imp.component_end;
end;
/
