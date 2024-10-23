prompt --workspace/remote_servers/wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions
begin
--   Manifest
--     REMOTE SERVER: wgjmgewqyqq-us-ashburn-1-functions-oci-oraclecloud-com-20181201-functions
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
 p_id=>wwv_flow_imp.id(26244474308591791)
,p_name=>'wgjmgewqyqq-us-ashburn-1-functions-oci-oraclecloud-com-20181201-functions'
,p_static_id=>'wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'),'https://wgjmgewqyqq.us-ashburn-1.functions.oci.oraclecloud.com/20181201/functions/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('wgjmgewqyqq_us_ashburn_1_functions_oci_oraclecloud_com_20181201_functions'),'')
);
wwv_flow_imp.component_end;
end;
/
