prompt --application/shared_components/user_interface/lovs/oehr_customers_cust_first_name
begin
--   Manifest
--     OEHR_CUSTOMERS.CUST_FIRST_NAME
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
 p_id=>wwv_flow_imp.id(112599270026425367)
,p_lov_name=>'OEHR_CUSTOMERS.CUST_FIRST_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'OEHR_CUSTOMERS'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'CUST_FIRST_NAME'
,p_default_sort_column_name=>'CUST_FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44318193864483
);
wwv_flow_imp.component_end;
end;
/
