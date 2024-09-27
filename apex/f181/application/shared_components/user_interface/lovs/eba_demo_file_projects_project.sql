prompt --application/shared_components/user_interface/lovs/eba_demo_file_projects_project
begin
--   Manifest
--     EBA_DEMO_FILE_PROJECTS.PROJECT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17469701702077339)
,p_lov_name=>'EBA_DEMO_FILE_PROJECTS.PROJECT'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_DEMO_FILE_PROJECTS'
,p_return_column_name=>'ID'
,p_display_column_name=>'PROJECT'
,p_default_sort_column_name=>'PROJECT'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41731990793892
);
wwv_flow_imp.component_end;
end;
/
