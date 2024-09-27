prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 181
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(33123296799814204)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
