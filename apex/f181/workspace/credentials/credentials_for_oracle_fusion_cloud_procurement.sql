prompt --workspace/credentials/credentials_for_oracle_fusion_cloud_procurement
begin
--   Manifest
--     CREDENTIAL: Credentials for Oracle Fusion Cloud Procurement
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(27118345428655096)
,p_name=>'Credentials for Oracle Fusion Cloud Procurement'
,p_static_id=>'credentials_for_oracle_fusion_cloud_procurement'
,p_authentication_type=>'BASIC'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://fa-evwb-saasfademo1.ds-fa.oraclepdemos.com/fscmRestApi/resources/',
''))
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
