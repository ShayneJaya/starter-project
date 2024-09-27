prompt --workspace/credentials/oci_credentials
begin
--   Manifest
--     CREDENTIAL: OCI Credentials
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
 p_id=>wwv_flow_imp.id(65551094675766919)
,p_name=>'OCI Credentials'
,p_static_id=>'OCI_OBJECTSTORAGE_AUTH'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1..aaaaaaaapox4qeg75qpeqjruuqxe7ybflk5utmt5cwwtdukuphkmise4h3hq'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
