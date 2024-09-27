prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'#27 REST Data Synchronization, and a homage to Joel'
,p_alias=>'27-REST-DATA-SYNCHRONIZATION-AND-A-HOMAGE-TO-JOEL'
,p_step_title=>'#27 REST Data Synchronization, and a homage to Joel'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22793316601254720)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32945791020813960)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(32830040333813888)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(33008182163813998)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22065712551579345)
,p_name=>'P50_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'## Transcript Summary',
'',
'### Problem/Topic:',
'The primary topic was remembering Joel Kallman, one of the founders of Oracle APEX, who had recently passed away. The discussion included sharing memories and how Joel had a profound impact on both the APEX community and personally on many individual'
||'s. After the tribute, there was a technical segment focused on improving the performance of a REST service in a web application, particularly relevant to Tesla''s system, which was facing performance issues with too many concurrent requests.',
'',
'### Solution:',
'The solution involved using Oracle APEX''s declarative features, particularly caching and synchronization, to reduce the load on the REST service and improve performance. The idea was to cache data in the Oracle database and refresh it only as needed '
||'(e.g., once an hour), rather than making real-time REST calls on every page load.',
'',
'### Tips:',
'- **Caching Data**: Synchronize data periodically to reduce load on REST services. In this case, a table was created in Oracle APEX to store data and was set to refresh every hour.',
'- **Performance Optimization**: Turn off tracing to check if performance issues are due to debugging processes or actual backend slowness.',
'- **Use Application Processes**: You can set up APEX processes to synchronize data when users log in or at specific intervals, ensuring the REST service isn''t overloaded.',
'',
'### Sample Code:',
'```sql',
'-- Example of setting up a synchronization table in Oracle APEX',
'CREATE TABLE ait_my_tesla_data AS ',
'SELECT * FROM REST_SERVICE;',
'',
'-- Example of configuring synchronization',
'BEGIN',
'   APEX_DATA_SYNC.SYNC(''ait_my_tesla_data'');',
'END;',
''))
,p_prompt=>'Notes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp.component_end;
end;
/
