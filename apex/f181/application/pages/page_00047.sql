prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>'#24 Why isn''t my value in session state?'
,p_alias=>'24-WHY-ISN-T-MY-VALUE-IN-SESSION-STATE'
,p_step_title=>'#24 Why isn''t my value in session state?'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22788625346087781)
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
 p_id=>wwv_flow_imp.id(22065584393579343)
,p_name=>'P47_NOTES'
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
'### The Problem',
'',
'In this episode, the problem revolves around displaying customer data across different pages in Oracle APEX. Michelle created a form and report using the wizard on one page and wanted to display customer names from another page (page 34) on a new ord'
||unistr('ers page (page 36). However, the customer name field was blank, and when canceling out of the page, all the values were lost. Michelle had previously done this successfully in older versions of APEX, so she was confused about why it wasn\2019t working no')
||'w. Hayden points out that the issue arises because session state is no longer maintained by default in newer versions of APEX, which prevents certain items from being accessible across pages.',
'',
'### The Solution and Tips',
'',
'The solution involves understanding a new feature in APEX version 19.1. By default, APEX now maintains session state for items linked to a table column in memory only, not on disk, which leads to the loss of session data when navigating between pages'
||'. Hayden advises that the session state maintenance can be set back to disk manually for specific items, restoring the old behavior, but he suggests adhering to the new default due to performance and security benefits. This approach reduces the load '
||'on the database and limits vulnerabilities to session state manipulation. While more work may be required to ensure data persistence (such as pulling data from the database through IDs), this method offers enhanced security and efficiency in the long'
||' run.',
'',
'',
'## Steps to Build Functionality',
'',
'List the key steps to implement the functionality, along with any relevant code snippets or examples.',
'',
'1. **Step 1:**',
'   - Description of what this step does.',
'   - Code snippet or example:',
'',
'   ```javascript',
'   // Example code',
'   function example() {',
'     console.log(''This is an example step.'');',
'   }',
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
