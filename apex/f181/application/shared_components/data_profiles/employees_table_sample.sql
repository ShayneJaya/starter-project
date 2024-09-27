prompt --application/shared_components/data_profiles/employees_table_sample
begin
--   Manifest
--     DATA PROFILE: Employees Table Sample
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
 p_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'Employees Table Sample'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24060792800445982)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'RN'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'rn'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24061012531445984)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'JOB'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'job'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24061348369445985)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'MGR'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24061602415445986)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'SAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24061955517445986)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'COMM'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24062203485445987)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'EMPNO'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24062577887445988)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'ENAME'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ename'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24062865864445989)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'LINKS'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'links'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24063190547445989)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'REL'
,p_sequence=>9
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(24062865864445989)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'rel'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24063437529445990)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'HREF'
,p_sequence=>10
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(24062865864445989)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'href'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24063718853445991)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'DEPTNO'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(24064020871445992)
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_name=>'HIREDATE'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'hiredate'
);
wwv_flow_imp.component_end;
end;
/