prompt --application/shared_components/user_interface/lovs/customer_orders
begin
--   Manifest
--     CUSTOMER_ORDERS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>216
,p_default_id_offset=>61078688106175745
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(96339539529216314)
,p_lov_name=>'CUSTOMER_ORDERS'
,p_lov_query=>'select distinct ORDER_ID from COSTCO_SL'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'DL2C'
,p_return_column_name=>'ORDER_ID'
,p_display_column_name=>'ORDER_ID'
,p_default_sort_column_name=>'ORDER_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>42183941080114
);
wwv_flow_imp.component_end;
end;
/
