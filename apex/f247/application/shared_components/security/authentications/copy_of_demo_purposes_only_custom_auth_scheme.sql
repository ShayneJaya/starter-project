prompt --application/shared_components/security/authentications/copy_of_demo_purposes_only_custom_auth_scheme
begin
--   Manifest
--     AUTHENTICATION: Copy of Demo Purposes Only Custom Auth Scheme
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(38071627726097006)
,p_name=>'Copy of Demo Purposes Only Custom Auth Scheme'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'is_authenticated_for_demo'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--===========================================================',
'-- Return true for any username in eba_demo_story_users table',
'--===========================================================',
'',
'function is_authenticated_for_demo(',
'    p_username in varchar2,',
'    p_password in varchar2)',
'    return        boolean',
'is',
'begin',
'    for j in (select ename ',
'                from eba_demo_appr_emp',
'               where upper(ename) = upper(p_username)) loop',
'       return true;',
'    end loop;',
'    return false; ',
'end;'))
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>44864202336955
);
wwv_flow_imp.component_end;
end;
/
