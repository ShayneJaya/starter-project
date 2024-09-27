prompt --workspace/remote_servers/objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod
begin
--   Manifest
--     REMOTE SERVER: objectstorage-us-ashburn-1-oraclecloud-com-n-natdcshjumpstartprod
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
 p_id=>wwv_flow_imp.id(65552523232929132)
,p_name=>'objectstorage-us-ashburn-1-oraclecloud-com-n-natdcshjumpstartprod'
,p_static_id=>'objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'https://objectstorage.us-ashburn-1.oraclecloud.com/n/natdcshjumpstartprod/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('objectstorage_us_ashburn_1_oraclecloud_com_n_natdcshjumpstartprod'),'')
);
wwv_flow_imp.component_end;
end;
/
