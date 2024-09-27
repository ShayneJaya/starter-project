prompt --application/shared_components/user_interface/lovs/oehr_jobs_job_title
begin
--   Manifest
--     OEHR_JOBS.JOB_TITLE
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
 p_id=>wwv_flow_imp.id(37860839882757925)
,p_lov_name=>'OEHR_JOBS.JOB_TITLE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_JOBS'
,p_return_column_name=>'JOB_ID'
,p_display_column_name=>'JOB_TITLE'
,p_default_sort_column_name=>'JOB_TITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
