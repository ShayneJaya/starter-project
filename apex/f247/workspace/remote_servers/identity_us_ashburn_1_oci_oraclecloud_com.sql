prompt --workspace/remote_servers/identity_us_ashburn_1_oci_oraclecloud_com
begin
--   Manifest
--     REMOTE SERVER: identity-us-ashburn-1-oci-oraclecloud-com
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
 p_id=>wwv_flow_imp.id(71971812547656684)
,p_name=>'identity-us-ashburn-1-oci-oraclecloud-com'
,p_static_id=>'identity_us_ashburn_1_oci_oraclecloud_com'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('identity_us_ashburn_1_oci_oraclecloud_com'),'https://identity.us-ashburn-1.oci.oraclecloud.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('identity_us_ashburn_1_oci_oraclecloud_com'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('identity_us_ashburn_1_oci_oraclecloud_com'),'')
);
wwv_flow_imp.component_end;
end;
/
