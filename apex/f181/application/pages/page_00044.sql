prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_name=>'#22 - APEX Error Handling'
,p_alias=>'22-APEX-ERROR-HANDLING'
,p_step_title=>'#22 - APEX Error Handling'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22784665794646176)
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
 p_id=>wwv_flow_imp.id(22065123457579339)
,p_name=>'P44_NOTES'
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
'#### Problem:',
'The challenge addressed in this episode revolves around error handling and validation in Oracle APEX. When a user enters incorrect data, such as selecting a non-existing department, they are presented with an ugly Oracle error message, which is unhel'
||'pful and insecure. Additionally, replicating validations across multiple pages or forms that interact with the same table can result in duplicated code, making it difficult to maintain.',
'',
'#### Solution:',
'The solution involves utilizing Oracle APEX''s error handler function and text message features to centralize and simplify error handling, reducing duplicated validation code across different pages.',
'',
'##### Centralized Error Handling:',
'',
'The presenters created a custom error handler function that captures errors, rather than relying on individual validations for each form or page.',
'The error handler function is set to the Error Handling Function property in APEX, ensuring it is triggered whenever an error occurs.',
'##### Dynamic Text Messages:',
'',
'The error handler function automatically generates a text message when an error is encountered, providing a helpful message like "Department does not exist" rather than showing an internal Oracle error.',
unistr('These text messages are stored centrally in APEX\2019s shared components under Text Messages, allowing for easy management and translation (for globalization purposes).'),
'##### Code Implementation:',
'',
unistr('A modified version of APEX\2019s default error handler function is used, which checks if the error message already exists in the Text Messages. If it does not, it automatically creates a new entry, which the developer can later customize.'),
'',
'## Steps to Build Functionality',
'',
'List the key steps to implement the functionality, along with any relevant code snippets or examples.',
'',
'1. **Step 1:**',
'   - Application Definitions Error Handing',
'   - insum_error_handling_api.error_handler',
'   ```plsql',
'   // Example code',
'    -- Modified error handler function for handling APEX errors dynamically',
'    CREATE OR REPLACE FUNCTION custom_error_handler',
'    ( p_error IN apex_error.t_error )',
'    RETURN apex_error.t_error_result',
'    IS',
'    l_result apex_error.t_error_result;',
'    BEGIN',
'    -- Default error handling behavior',
'    l_result := apex_error.init_error_result( p_error => p_error );',
'    ',
'    -- Custom logic: Check and create text message if it doesn''t exist',
'    BEGIN',
'        SELECT text INTO l_result.display_text',
'        FROM apex_application_text_messages',
'        WHERE message_name = p_error.message;',
'        ',
'        -- If message exists, fetch it and set it as the display text',
'        IF l_result.display_text IS NULL THEN',
'            l_result.display_text := ''An unknown error occurred.'';',
'        END IF;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            -- Automatically create new text message for the error',
'            INSERT INTO apex_application_text_messages (message_name, text)',
'            VALUES (p_error.message, ''Custom Error Message'');',
'            COMMIT;',
'            ',
'            -- Set developer message for the first occurrence',
'            l_result.display_text := ''Error needs to be handled by developer'';',
'    END;',
'    ',
'    RETURN l_result;',
'    END;',
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
