prompt --application/shared_components/logic/application_items/g_username
begin
--   Manifest
--     APPLICATION ITEM: G_USERNAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(37828821654441800)
,p_name=>'G_USERNAME'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
,p_version_scn=>41430203251673
);
wwv_flow_imp.component_end;
end;
/
