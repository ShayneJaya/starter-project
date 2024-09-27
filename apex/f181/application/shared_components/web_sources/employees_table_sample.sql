prompt --application/shared_components/web_sources/employees_table_sample
begin
--   Manifest
--     WEB SOURCE: Employees Table Sample
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
 p_id=>wwv_flow_imp.id(24064724735446000)
,p_name=>'Employees Table Sample'
,p_static_id=>'employees_table_sample'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(24060541018445970)
,p_remote_server_id=>wwv_flow_imp.id(24060350621445966)
,p_url_path_prefix=>'/hr/employees/'
,p_version_scn=>41877222344448
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(24064981169446004)
,p_web_src_module_id=>wwv_flow_imp.id(24064724735446000)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
