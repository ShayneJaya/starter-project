prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_name=>'#33 Deploying Using APEX Supporting Objects'
,p_alias=>'33-DEPLOYING-USING-APEX-SUPPORTING-OBJECTS'
,p_step_title=>'#33 Deploying Using APEX Supporting Objects'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24842312232333327)
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
 p_id=>wwv_flow_imp.id(24051325318371219)
,p_name=>'P57_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<head>',
'    <title>APEX Instant Tips: Migrating APEX Applications</title>',
'    <style>',
'        .container {',
'            font-family: Arial, sans-serif;',
'            line-height: 1.6;',
'        }',
'        .title {',
'            font-size: 24px;',
'            font-weight: bold;',
'            color: #333;',
'            margin-bottom: 20px;',
'        }',
'        .section {',
'            margin-bottom: 15px;',
'        }',
'        .section-title {',
'            font-size: 18px;',
'            font-weight: bold;',
'            color: #2c3e50;',
'            margin-bottom: 10px;',
'        }',
'        .notes {',
'            font-size: 14px;',
'            color: #34495e;',
'        }',
'        .steps {',
'            font-size: 14px;',
'            color: #34495e;',
'            padding-left: 15px;',
'        }',
'        .steps li {',
'            margin-bottom: 8px;',
'        }',
'        .tips {',
'            font-size: 14px;',
'            color: #27ae60;',
'            margin-top: 10px;',
'        }',
'    </style>',
'</head>',
'',
'<div class="container">',
'    <div class="title">APEX Instant Tips: Migrating APEX Applications</div>',
'',
'    <div class="section">',
'        <div class="section-title">Notes</div>',
'        <div class="notes">',
'            This video provides tips on migrating Oracle APEX applications, focusing on deploying applications from development to production environments or distributing them to multiple users. The demo includes working with supporting objects such '
||'as tables, packages, views, sequences, and more. Additionally, the video highlights handling scripts, database objects, and upgrading applications efficiently.',
'        </div>',
'    </div>',
'',
'    <div class="section">',
'        <div class="section-title">Steps to Complete</div>',
'        <ol class="steps">',
'            <li>Navigate to the "Supporting Objects" section in your APEX application.</li>',
'            <li>Create or modify installation scripts for different objects, such as sequences, package specs, tables, and views.</li>',
'            <li>Use the APEX interface to generate scripts directly from the database, ensuring that objects like views are included in the appropriate order.</li>',
'            <li>Review the scripts to confirm all objects are correct (e.g., rename any mislabeled columns).</li>',
'            <li>If changes are made to the database objects (e.g., fixing a column name), refresh the supporting objects within the APEX application to reflect those updates.</li>',
'            <li>Test the application export, ensuring that supporting objects are packaged correctly with the app.</li>',
'            <li>Customize installation prompts and messages to guide users through the installation process, including optional features like accepting licenses or configuring build settings.</li>',
'        </ol>',
'    </div>',
'',
'    <div class="section">',
'        <div class="section-title">Additional Tips</div>',
'        <div class="tips">',
'            - Use smaller, organized installation scripts for easier management rather than one large script.<br>',
'            - Use static references for metadata queries when setting server-side conditions to ensure smooth migration between environments.<br>',
'            - Always test thoroughly, and consider using upgrade scripts in combination with installation scripts for more complex deployments.<br>',
'            - Place your scripts in version control (e.g., Git or SVN) to track changes and manage updates more effectively.',
'        </div>',
'    </div>',
'</div>',
''))
,p_prompt=>'Notes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
