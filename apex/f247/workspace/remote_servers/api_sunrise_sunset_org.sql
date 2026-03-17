prompt --workspace/remote_servers/api_sunrise_sunset_org
begin
--   Manifest
--     REMOTE SERVER: api-sunrise-sunset-org
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(87485798589575931)
,p_name=>'api-sunrise-sunset-org'
,p_static_id=>'api_sunrise_sunset_org'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_sunrise_sunset_org'),'https://api.sunrise-sunset.org/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_sunrise_sunset_org'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_sunrise_sunset_org'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_sunrise_sunset_org'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_sunrise_sunset_org'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_sunrise_sunset_org'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_sunrise_sunset_org'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_sunrise_sunset_org'),'')
);
wwv_flow_imp.component_end;
end;
/
