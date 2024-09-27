prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_name=>'#25 - CSS variables in APEX'
,p_alias=>'25-CSS-VARIABLES-IN-APEX'
,p_step_title=>'#25 - CSS variables in APEX'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22789970248129190)
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
 p_id=>wwv_flow_imp.id(22790738018142622)
,p_name=>'P48_NOTES'
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
'### Problem:',
'With the release of Oracle APEX 21.1, the Universal Theme was rewritten from the ground up to leverage CSS variables. These variables offer a way to maintain consistency across components, but developers may not know how to utilize them efficiently f'
||'or custom plug-ins or application components. The challenge lies in knowing how to modify and apply these variables dynamically, especially for custom elements that need to match existing theme styles.',
'',
'### Solution:',
'Vincent Moore explains how developers can take advantage of CSS variables to maintain design consistency and how they can be overridden for specific customization needs. The discussion includes practical examples of applying these variables in Oracle'
||' APEX plug-ins and the correct way to override them in custom components.',
'',
'1. **Introducing CSS Variables**:',
'   - CSS variables are a new way to ensure consistency across the theme by using variable definitions that can be reused throughout the application''s CSS.',
'   - In the case of the Universal Theme, APEX 21.1 uses variables like `--ut-header-bg-color` to define the background color of the navigation bar.',
'',
'   Example:',
'   ```css',
'   --ut-header-bg-color: #123456; /* Example variable for header background color */',
'   ```',
'2. **Modifying Components with CSS Variables**:',
'    - Instead of hardcoding styles, developers can reference CSS variables in their custom components or plug-ins.',
'    - For example, to apply the same background color as the navigation bar to another component:',
'    ```css',
'    background-color: var(--ut-header-bg-color);',
'    color: var(--ut-header-text-color); /* Use color for readability */',
'    ```',
'',
'3. **Overriding CSS Variables**:',
'    - CSS variables can be overridden in a custom component using the :root pseudo-class in CSS. This allows developers to modify the base values of these      ',
'      variables and have them apply globally across components.',
'    ```css',
'    :root {',
'    --ut-header-bg-color: #FF5733; /* New background color */',
'    }',
'    ```',
'',
'',
'## Steps to Build Functionality',
'',
'List the key steps to implement the functionality, along with any relevant code snippets or examples.',
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
