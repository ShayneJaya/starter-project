prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 215
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>215
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(46003323307375282)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>44234918801489
);
wwv_flow_imp.component_end;
end;
/
