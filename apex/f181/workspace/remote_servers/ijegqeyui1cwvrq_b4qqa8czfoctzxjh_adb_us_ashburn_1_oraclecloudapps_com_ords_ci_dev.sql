prompt --workspace/remote_servers/ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev
begin
--   Manifest
--     REMOTE SERVER: ijegqeyui1cwvrq-b4qqa8czfoctzxjh-adb-us-ashburn-1-oraclecloudapps-com-ords-ci_dev
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
 p_id=>wwv_flow_imp.id(24060350621445966)
,p_name=>'ijegqeyui1cwvrq-b4qqa8czfoctzxjh-adb-us-ashburn-1-oraclecloudapps-com-ords-ci_dev'
,p_static_id=>'ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'),'https://ijegqeyui1cwvrq-b4qqa8czfoctzxjh.adb.us-ashburn-1.oraclecloudapps.com/ords/ci_dev/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('ijegqeyui1cwvrq_b4qqa8czfoctzxjh_adb_us_ashburn_1_oraclecloudapps_com_ords_ci_dev'),'')
);
wwv_flow_imp.component_end;
end;
/
