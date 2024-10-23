prompt --application/shared_components/web_sources/oracle_fusion_cloud_procurement
begin
--   Manifest
--     WEB SOURCE: Oracle Fusion Cloud Procurement
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
 p_id=>wwv_flow_imp.id(27139882715655187)
,p_name=>'Oracle Fusion Cloud Procurement'
,p_static_id=>'oracle_fusion_cloud_procurement'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(27118827302655106)
,p_remote_server_id=>wwv_flow_imp.id(27118655395655102)
,p_url_path_prefix=>'/11.13.18.05/purchaseRequisitions'
,p_credential_id=>wwv_flow_imp.id(27118345428655096)
,p_sync_is_active=>true
,p_sync_table_owner=>'WKSP_CIDEV'
,p_sync_table_name=>'FUSION_CREATE_REQUSITION'
,p_sync_type=>'REPLACE'
,p_sync_interval=>'FREQ=WEEKLY;INTERVAL=1;BYHOUR=0;BYMINUTE=0;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_version_scn=>42005686617192
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(27140028941655195)
,p_web_src_module_id=>wwv_flow_imp.id(27139882715655187)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_legacy_ords_fixed_page_size=>50
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>true
,p_fetch_all_rows_timeout=>120
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(27146146179857769)
,p_web_src_module_id=>wwv_flow_imp.id(27139882715655187)
,p_web_src_operation_id=>wwv_flow_imp.id(27140028941655195)
,p_name=>'limit'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'1000'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(27146615776867684)
,p_web_src_module_id=>wwv_flow_imp.id(27139882715655187)
,p_web_src_operation_id=>wwv_flow_imp.id(27140028941655195)
,p_name=>'offset'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'25'
);
wwv_flow_imp.component_end;
end;
/
