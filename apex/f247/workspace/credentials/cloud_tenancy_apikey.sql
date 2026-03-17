prompt --workspace/credentials/cloud_tenancy_apikey
begin
--   Manifest
--     CREDENTIAL: cloud_tenancy_apikey
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(69650266571921411)
,p_name=>'cloud_tenancy_apikey'
,p_static_id=>'cloud_tenancy_apikey'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1..aaaaaaaapox4qeg75qpeqjruuqxe7ybflk5utmt5cwwtdukuphkmise4h3hq'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
