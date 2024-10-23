prompt --application/shared_components/web_sources/function_invoke_test_testac
begin
--   Manifest
--     WEB SOURCE: Function Invoke Test Testac
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
 p_id=>wwv_flow_imp.id(26252684446658485)
,p_name=>'Function Invoke Test Testac'
,p_static_id=>'function_invoke_test_testac'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(26251529234658480)
,p_remote_server_id=>wwv_flow_imp.id(26244474308591791)
,p_url_path_prefix=>'/ocid1.fnfunc.oc1.iad.aaaaaaaasnaf6gh2dsqw5npoxd5d6uruiorh4pagou7qucajjrxb2htmowyq/actions/invoke'
,p_credential_id=>wwv_flow_imp.id(19658076427408676)
,p_version_scn=>41980126363132
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(26255626517658502)
,p_web_src_module_id=>wwv_flow_imp.id(26252684446658485)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(26252894322658492)
,p_web_src_module_id=>wwv_flow_imp.id(26252684446658485)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(26253212633658494)
,p_web_src_module_id=>wwv_flow_imp.id(26252684446658485)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_request_body_template=>'{"sql":"select sysdate from dual"}'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(26253681281658495)
,p_web_src_module_id=>wwv_flow_imp.id(26252684446658485)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(26254044714658497)
,p_web_src_module_id=>wwv_flow_imp.id(26252684446658485)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
