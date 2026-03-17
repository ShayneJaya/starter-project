prompt --application/shared_components/web_sources/list_tenancy_compartments
begin
--   Manifest
--     WEB SOURCE: List Tenancy Compartments
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
 p_id=>wwv_flow_imp.id(71974653795656719)
,p_name=>'List Tenancy Compartments'
,p_static_id=>'list_tenancy_compartments'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(71972076545656689)
,p_remote_server_id=>wwv_flow_imp.id(71971812547656684)
,p_url_path_prefix=>'/20160918/compartments'
,p_credential_id=>wwv_flow_imp.id(69650266571921411)
,p_version_scn=>45788213480121
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(71975201680656735)
,p_web_src_module_id=>wwv_flow_imp.id(71974653795656719)
,p_name=>'compartmentId'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'ocid1.tenancy.oc1..aaaaaaaapox4qeg75qpeqjruuqxe7ybflk5utmt5cwwtdukuphkmise4h3hq'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(71974812624656728)
,p_web_src_module_id=>wwv_flow_imp.id(71974653795656719)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
