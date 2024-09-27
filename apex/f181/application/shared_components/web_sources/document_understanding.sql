prompt --application/shared_components/web_sources/document_understanding
begin
--   Manifest
--     WEB SOURCE: Document Understanding
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
 p_id=>wwv_flow_imp.id(20199148814952566)
,p_name=>'Document Understanding'
,p_static_id=>'document_understanding'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(20198336547952553)
,p_remote_server_id=>wwv_flow_imp.id(20198110499952550)
,p_url_path_prefix=>'/analyzeDocument'
,p_credential_id=>wwv_flow_imp.id(19658076427408676)
,p_version_scn=>41770796947217
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(20201478649086167)
,p_web_src_module_id=>wwv_flow_imp.id(20199148814952566)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(20203486531138151)
,p_web_src_module_id=>wwv_flow_imp.id(20199148814952566)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(20207770526363373)
,p_web_src_module_id=>wwv_flow_imp.id(20199148814952566)
,p_name=>'STATUS'
,p_param_type=>'STATUS_CODE'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(20199372985952568)
,p_web_src_module_id=>wwv_flow_imp.id(20199148814952566)
,p_operation=>'POST'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "features": [',
'        {',
'            "featureType": "KEY_VALUE_EXTRACTION"',
'        }',
'    ],',
'    "document": {',
'        "source": "OBJECT_STORAGE",',
'        "namespaceName": "natdcshjumpstartprod",',
'        "bucketName": "Sample_Bucket_2",',
'        "objectName": "samsarainvoice.png"',
'    },',
'    "compartmentId": "ocid1.compartment.oc1..aaaaaaaa2lqxwzcdrjv53inyxhsdnxhlh2x55slnoolx4il5lungswoqf57a",',
'    "outputLocation": {',
'        "namespaceName": "natdcshjumpstartprod",',
'        "bucketName": "Sample_Bucket_2",',
'        "prefix": "DocumentUnderstanding"',
'    },',
'    "documentType": "INVOICE"',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
