prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 247
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(37861039017108238)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(38063163577106288)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/
