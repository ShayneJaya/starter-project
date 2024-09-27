prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_name=>'#18: Handling Time Zones in APEX'
,p_alias=>'18-HANDLING-TIME-ZONES-IN-APEX'
,p_step_title=>'#18: Handling Time Zones in APEX'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22756903580885719)
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
 p_id=>wwv_flow_imp.id(22062113992579309)
,p_name=>'P37_NOTES'
,p_item_sequence=>10
,p_prompt=>'Summary'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'# Handling Time Zones in APEX',
'## Table of Contents',
'',
'- [Objective](#objective)',
'- [Steps to Build Functionality](#steps-to-build-functionality)',
'- [Notes to Remember](#notes-to-remember)',
'- [Resources](#resources)',
'',
'## Objective',
'',
'',
'In this video, the presenters discuss a common issue encountered when using Oracle APEX''s automatic time zone settings in a calendar application. The problem arises when scheduling events across different time zones, particularly when daylight saving'
||' time (DST) changes occur. The APEX time zone feature incorrectly handles transitions between daylight and standard time, causing scheduling errors.',
'',
'The solution presented involves bypassing APEX''s automatic time zone feature and implementing a custom method to manage time zones dynamically. The presenters suggest creating an item on "Page 0" that captures the browser''s time zone region (not just'
||' the offset) using JavaScript. This time zone is then pushed back into APEX to ensure correct handling of events across different time zones, including DST changes. The solution also supports deep-linking for public applications, ensuring time zones '
||'are handled correctly regardless of user location.',
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
'   Intl.DateTimeFormat().resolvedOptions().timeZone;',
'',
'2. **Step 2:**',
'    PL/SQL Code',
'    ```PLSQL',
'    begin',
'    apex_util.set_session_time_zone( P_TIME_ZONE => :P0_TZ);',
'    end;',
'',
'3. **Step 3:**',
'    ```javascript',
'   location.reload();',
'',
'### **Notes to Remember**',
'This section encourages you to capture not just random notes, but structured information such as:',
'- **Key concepts** that help you understand the topic.',
'- **Gotchas** or things that may trip you up.',
'- **Best practices** you''ve learned to follow.',
'- **Common pitfalls** to avoid.',
'',
'### **Resources**',
'This section is designed to be a quick reference to the most useful materials, categorized by type (documentation, tutorials, videos, books). This makes it easier to revisit or share with others.',
'',
'https://insum.talan.com/handling-time-zones-in-apex/'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp.component_end;
end;
/
