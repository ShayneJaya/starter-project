prompt --workspace/credentials/oci_credentials_gen_ai
begin
--   Manifest
--     CREDENTIAL: OCI Credentials  (Gen AI)
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
 p_id=>wwv_flow_imp.id(19658076427408676)
,p_name=>'OCI Credentials  (Gen AI)'
,p_static_id=>'oci_credentials_gen_ai'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1..aaaaaaaapox4qeg75qpeqjruuqxe7ybflk5utmt5cwwtdukuphkmise4h3hq'
,p_prompt_on_install=>true
,p_credential_comment=>'Generative AI Credentials'
);
wwv_flow_imp.component_end;
end;
/
