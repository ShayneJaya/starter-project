prompt --application/shared_components/logic/application_computations/g_username
begin
--   Manifest
--     APPLICATION COMPUTATION: G_USERNAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(37829030166445241)
,p_computation_sequence=>10
,p_computation_item=>'G_USERNAME'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'SET_ITEM_EQUAL_THIS_PREFERENCE'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'NICKNAME'
,p_version_scn=>41430203567847
);
wwv_flow_imp.component_end;
end;
/
