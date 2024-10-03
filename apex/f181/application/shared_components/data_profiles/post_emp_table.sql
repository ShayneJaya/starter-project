prompt --application/shared_components/data_profiles/post_emp_table
begin
--   Manifest
--     DATA PROFILE: POST EMP Table
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(25054531346818445)
,p_name=>'POST EMP Table'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25054736305818446)
,p_data_profile_id=>wwv_flow_imp.id(25054531346818445)
,p_name=>'EmpName'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'ename'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25055064678818447)
,p_data_profile_id=>wwv_flow_imp.id(25054531346818445)
,p_name=>'EmpJob'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'ejob'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25055371436818448)
,p_data_profile_id=>wwv_flow_imp.id(25054531346818445)
,p_name=>'empno'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
);
wwv_flow_imp.component_end;
end;
/
