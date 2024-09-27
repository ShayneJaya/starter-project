prompt --application/shared_components/user_interface/lovs/p4_oehr_employees_first_name
begin
--   Manifest
--     P4_OEHR_EMPLOYEES_FIRST_NAME
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
 p_id=>wwv_flow_imp.id(37856012210757916)
,p_lov_name=>'P4_OEHR_EMPLOYEES_FIRST_NAME'
,p_lov_query=>'select FIRST_NAME, FIRST_NAME r from OEHR_EMPLOYEES'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'FIRST_NAME'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
