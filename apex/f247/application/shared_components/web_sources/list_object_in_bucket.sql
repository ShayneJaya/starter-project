prompt --application/shared_components/web_sources/list_object_in_bucket
begin
--   Manifest
--     WEB SOURCE: List Object in Bucket
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
 p_id=>wwv_flow_imp.id(71981955025730578)
,p_name=>'List Object in Bucket'
,p_static_id=>'list_object_in_bucket'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(71981499071730573)
,p_remote_server_id=>wwv_flow_imp.id(65552523232929132)
,p_url_path_prefix=>'b/:BUCKET_NAME/o'
,p_credential_id=>wwv_flow_imp.id(69650266571921411)
,p_version_scn=>45788237330282
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(71985057488743334)
,p_web_src_module_id=>wwv_flow_imp.id(71981955025730578)
,p_name=>'BUCKET_NAME'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'Sample_Bucket_2'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(71982153813730579)
,p_web_src_module_id=>wwv_flow_imp.id(71981955025730578)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
