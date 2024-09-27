prompt --application/shared_components/data_profiles/list_objects
begin
--   Manifest
--     DATA PROFILE: List Objects
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
 p_id=>wwv_flow_imp.id(15631100111784491)
,p_name=>'List Objects'
,p_format=>'JSON'
,p_row_selector=>'objects'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(15631271792784494)
,p_data_profile_id=>wwv_flow_imp.id(15631100111784491)
,p_name=>'MD5'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'md5'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(15631564922784495)
,p_data_profile_id=>wwv_flow_imp.id(15631100111784491)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(15631830588784495)
,p_data_profile_id=>wwv_flow_imp.id(15631100111784491)
,p_name=>'SIZE_'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'size'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(15632138821784495)
,p_data_profile_id=>wwv_flow_imp.id(15631100111784491)
,p_name=>'TIMECREATED'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'timeCreated'
);
wwv_flow_imp.component_end;
end;
/
