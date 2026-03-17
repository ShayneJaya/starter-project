prompt --application/shared_components/user_interface/lovs/list_compartment_buckets
begin
--   Manifest
--     LIST COMPARTMENT BUCKETS
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
 p_id=>wwv_flow_imp.id(71989825625779636)
,p_lov_name=>'LIST COMPARTMENT BUCKETS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(71978999099698096)
,p_return_column_name=>'NAME'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45788273818632
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(71990113272779638)
,p_web_src_param_id=>wwv_flow_imp.id(71979566869698106)
,p_shared_lov_id=>wwv_flow_imp.id(71989825625779636)
,p_value_type=>'ITEM'
,p_value=>'P29_COMPARTMENT'
);
wwv_flow_imp.component_end;
end;
/
