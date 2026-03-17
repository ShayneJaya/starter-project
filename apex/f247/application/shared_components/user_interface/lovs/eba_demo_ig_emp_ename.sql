prompt --application/shared_components/user_interface/lovs/eba_demo_ig_emp_ename
begin
--   Manifest
--     EBA_DEMO_IG_EMP.ENAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(50265685022370850)
,p_lov_name=>'EBA_DEMO_IG_EMP.ENAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_DEMO_IG_EMP'
,p_return_column_name=>'EMPNO'
,p_display_column_name=>'ENAME'
,p_default_sort_column_name=>'ENAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45072760342687
);
wwv_flow_imp.component_end;
end;
/
