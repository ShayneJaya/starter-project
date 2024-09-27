prompt --application/shared_components/web_sources/list_objects
begin
--   Manifest
--     WEB SOURCE: List Objects
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
 p_id=>wwv_flow_imp.id(15632504457784496)
,p_name=>'List Objects'
,p_static_id=>'list_objects'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(15631100111784491)
,p_remote_server_id=>wwv_flow_imp.id(65552523232929132)
,p_url_path_prefix=>'b/OCW23/o/'
,p_credential_id=>wwv_flow_imp.id(65551094675766919)
,p_pass_ecid=>true
,p_version_scn=>41694023049738
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(15633640355784506)
,p_web_src_module_id=>wwv_flow_imp.id(15632504457784496)
,p_name=>'fields'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'name,size,timeCreated,md5,storageTier'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(15632794777784502)
,p_web_src_module_id=>wwv_flow_imp.id(15632504457784496)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(15633183377784504)
,p_web_src_module_id=>wwv_flow_imp.id(15632504457784496)
,p_web_src_operation_id=>wwv_flow_imp.id(15632794777784502)
,p_name=>'bucket_name'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'bucket-20210915-1541'
);
wwv_flow_imp.component_end;
end;
/
