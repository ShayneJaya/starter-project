prompt --application/shared_components/data_profiles/document_understanding
begin
--   Manifest
--     DATA PROFILE: Document Understanding
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(20198336547952553)
,p_name=>'Document Understanding'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'page.documentFields'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp.component_end;
end;
/
