prompt --application/shared_components/data_profiles/get_put_emp_table
begin
--   Manifest
--     DATA PROFILE: GET/PUT EMP Table
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
 p_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'GET/PUT EMP Table'
,p_format=>'JSON'
,p_has_header_row=>false
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25291876151626718)
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'empno'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25292309626626719)
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'ename'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'ename'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25294083685637038)
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'job'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector=>'job'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25295848419648939)
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'mgr'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector=>'mgr'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25296278746648941)
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'hiredate'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_selector=>'hiredate'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25296760966652658)
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'sal'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector=>'sal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25297145461652659)
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'comm'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector=>'comm'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(25297609163652662)
,p_data_profile_id=>wwv_flow_imp.id(25288860526620141)
,p_name=>'deptno'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector=>'deptno'
);
wwv_flow_imp.component_end;
end;
/