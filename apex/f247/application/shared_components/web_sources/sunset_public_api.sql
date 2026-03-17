prompt --application/shared_components/web_sources/sunset_public_api
begin
--   Manifest
--     WEB SOURCE: Sunset Public API
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(87489731435575972)
,p_name=>'Sunset Public API'
,p_static_id=>'sunset_public_api'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(87485937603575936)
,p_remote_server_id=>wwv_flow_imp.id(87485798589575931)
,p_url_path_prefix=>'/json'
,p_version_scn=>46433395112595
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(87490333448575989)
,p_web_src_module_id=>wwv_flow_imp.id(87489731435575972)
,p_name=>'lat'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'36.7201600'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(87490707314575991)
,p_web_src_module_id=>wwv_flow_imp.id(87489731435575972)
,p_name=>'lng'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'-4.4203400'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(87489958935575978)
,p_web_src_module_id=>wwv_flow_imp.id(87489731435575972)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(87491206386608772)
,p_web_src_module_id=>wwv_flow_imp.id(87489731435575972)
,p_web_src_operation_id=>wwv_flow_imp.id(87489958935575978)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp.component_end;
end;
/
