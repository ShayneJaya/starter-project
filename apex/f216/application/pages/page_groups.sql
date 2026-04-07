prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 216
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>216
,p_default_id_offset=>61078688106175745
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(96207133413119447)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
