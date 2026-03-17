prompt --workspace/credentials/app_247_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 247 Push Notifications Credentials
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
 p_id=>wwv_flow_imp.id(38070301453106259)
,p_name=>'App 247 Push Notifications Credentials'
,p_static_id=>'App_247_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
