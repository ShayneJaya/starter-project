prompt --application/shared_components/user_interface/lovs/oehr_orders_order_mode
begin
--   Manifest
--     OEHR_ORDERS.ORDER_MODE
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
 p_id=>wwv_flow_imp.id(112635321495425706)
,p_lov_name=>'OEHR_ORDERS.ORDER_MODE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_ORDERS'
,p_return_column_name=>'ORDER_ID'
,p_display_column_name=>'ORDER_MODE'
,p_default_sort_column_name=>'ORDER_MODE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44318193889688
);
wwv_flow_imp.component_end;
end;
/
