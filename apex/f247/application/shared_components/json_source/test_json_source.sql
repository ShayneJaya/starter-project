prompt --application/shared_components/json_source/test_json_source
begin
--   Manifest
--     DOCUMENT SOURCE: TEST JSON SOURCE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_document_source(
 p_id=>wwv_flow_imp.id(56500526546906849)
,p_name=>'TEST JSON SOURCE'
,p_static_id=>'test_json_source'
,p_document_source_type=>'JSON_COLLECTION'
,p_location=>'LOCAL'
,p_object_name=>'JSON_COLLECTION_TEST'
,p_data_profile_id=>wwv_flow_imp.id(56500610651906849)
,p_version_scn=>45346608453415
);
wwv_flow_imp.component_end;
end;
/
