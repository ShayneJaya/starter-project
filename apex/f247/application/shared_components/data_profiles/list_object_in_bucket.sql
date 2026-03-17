prompt --application/shared_components/data_profiles/list_object_in_bucket
begin
--   Manifest
--     DATA PROFILE: List Object in Bucket
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(71981499071730573)
,p_name=>'List Object in Bucket'
,p_format=>'JSON'
,p_row_selector=>'objects'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(71981656028730576)
,p_data_profile_id=>wwv_flow_imp.id(71981499071730573)
,p_name=>'NAME'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'name'
,p_remote_data_type=>'string'
);
wwv_flow_imp.component_end;
end;
/
