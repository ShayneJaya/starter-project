prompt --workspace/remote_servers/fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources
begin
--   Manifest
--     REMOTE SERVER: fa-evwb-saasfademo1-ds-fa-oraclepdemos-com-fscmrestapi-resources
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(27118655395655102)
,p_name=>'fa-evwb-saasfademo1-ds-fa-oraclepdemos-com-fscmrestapi-resources'
,p_static_id=>'fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'),'https://fa-evwb-saasfademo1.ds-fa.oraclepdemos.com/fscmRestApi/resources/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('fa_evwb_saasfademo1_ds_fa_oraclepdemos_com_fscmrestapi_resources'),'')
);
wwv_flow_imp.component_end;
end;
/
