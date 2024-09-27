prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_name=>'#21 - Insensitive Searches'
,p_alias=>'21-INSENSITIVE-SEARCHES'
,p_step_title=>'#21 - Insensitive Searches'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22783086512513251)
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
 p_id=>wwv_flow_imp.id(22065067384579338)
,p_name=>'P43_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'# Topic Title',
'',
'How to find out which Items changed in APEX',
'',
'## Table of Contents (IGNORE)',
'',
'- [Objective](#objective)',
'- [Steps to Build Functionality](#steps-to-build-functionality)',
'- [Notes to Remember](#notes-to-remember)',
'- [Resources](#resources)',
'- [Next Steps](#next-steps)',
'',
'## Objective',
'',
unistr('The episode addresses a problem with search functionality in an Oracle APEX application involving accented characters. The issue occurs when users search for names like "Montreal" without the accent (\00E9), which results in no matches, even though the d')
||'ata contains both accented and non-accented variations.',
'',
'The problem also extends to filtering results for Quebec, where accented and non-accented entries appear as separate records. The host initially considered using Oracle Text for handling the accented characters but found that the solution was not eno'
||'ugh due to the way queries are structured with facets.',
'',
'The solution introduced uses the COLLATE operator, which allows for accent-insensitive and case-insensitive searches directly in the SQL query. By applying COLLATE BINARY_AI to the relevant columns (e.g., city names), the search becomes insensitive t'
||'o accents and case, ensuring that searches like "Montreal" return all relevant results, whether accented or not.',
'',
'## Steps to Build Functionality',
'',
'List the key steps to implement the functionality, along with any relevant code snippets or examples.',
'',
'1. **Step 1:**',
'   - Description of what this step does.',
'   - Code snippet or example:',
'',
'   ```plsql',
'   // Example code',
'    SELECT city',
'    FROM places',
'    WHERE city COLLATE BINARY_AI = ''Montreal'';',
'',
'',
'### **Notes to Remember**',
'This section encourages you to capture not just random notes, but structured information such as:',
'- **Note 1** that help you understand the topic.',
'- ',
'',
'### **Resources**',
'',
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
