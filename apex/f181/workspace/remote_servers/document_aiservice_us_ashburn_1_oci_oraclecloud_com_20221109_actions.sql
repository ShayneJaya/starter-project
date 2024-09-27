prompt --workspace/remote_servers/document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions
begin
--   Manifest
--     REMOTE SERVER: document-aiservice-us-ashburn-1-oci-oraclecloud-com-20221109-actions
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
 p_id=>wwv_flow_imp.id(20198110499952550)
,p_name=>'document-aiservice-us-ashburn-1-oci-oraclecloud-com-20221109-actions'
,p_static_id=>'document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'),'https://document.aiservice.us-ashburn-1.oci.oraclecloud.com/20221109/actions/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('document_aiservice_us_ashburn_1_oci_oraclecloud_com_20221109_actions'),'')
);
wwv_flow_imp.component_end;
end;
/
