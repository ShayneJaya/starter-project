prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_name=>'#30 Conditional Edit Links'
,p_alias=>'30-CONDITIONAL-EDIT-LINKS'
,p_step_title=>'#30 Conditional Edit Links'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68049122981905347)
,p_name=>'P53_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>APEX Chart Customization Using Oracle JET</title>',
'</head>',
'<body>',
'<h1>Topic Title</h1>',
'<h2>Enhancing APEX Charts Using Oracle JET</h2>',
'',
'<h2>Objective</h2>',
'<p>The objective of this episode is to show how to customize Oracle APEX charts beyond the default options by using Oracle JET (JavaScript Extension Toolkit). The episode demonstrates how APEX developers can achieve complex visual designs provided by'
||' UI designers through Oracle JET customization.</p>',
'',
'<h2>Steps to Build</h2>',
'',
'<ol>',
'    <li>',
'        <strong>Step 1: Understand the Chart Mock-up</strong>',
'        <ul>',
'            <li>A UI designer creates a mock-up, and the goal is to replicate it in Oracle APEX using its charting features. However, achieving the exact design may require customizations not available via declarative settings.</li>',
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 2: Explore Oracle JET''s Capabilities</strong>',
'        <ul>',
unistr('            <li>Oracle JET powers the charts in APEX. By using Oracle JET''s documentation and cookbook, developers can access additional chart properties that go beyond APEX\2019s built-in options.</li>'),
'            <li>The Oracle JET Cookbook provides many examples that developers can use as starting points for their charts.</li>',
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 3: Use JavaScript Init Code</strong>',
'        <ul>',
unistr('            <li>In APEX\2019s Chart Attributes section, there is a "JavaScript Init Code" area where developers can add custom code. This section allows for enhanced customization.</li>'),
'            <li>Example JavaScript customization code to control aspects like inner radius of a pie chart:</li>',
'        </ul>',
'        <pre>',
'&lt;code&gt;',
'{',
'    "styleDefaults": {',
'        "pieInnerRadius": 0.5',
'    }',
'}',
'&lt;/code&gt;',
'        </pre>',
'    </li>',
'    <li>',
'        <strong>Step 4: Modify and Test Charts</strong>',
'        <ul>',
unistr('            <li>Developers can adjust properties such as fonts, colors, and dimensions using Oracle JET\2019s extensive documentation and examples. The process involves trial and error, testing different settings to achieve the desired look.</li>'),
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 5: Implement Oracle JET Charts in APEX</strong>',
'        <ul>',
'            <li>Once the settings are finalized, apply the JavaScript code in APEX, and reload the page to view the updated chart design. The Oracle JET framework allows for fine-tuning, making it a powerful tool for advanced chart customizations.</l'
||'i>',
'        </ul>',
'    </li>',
'</ol>',
'',
'<h3>Notes to Remember</h3>',
'<ul>',
'    <li><strong>Note 1:</strong> Oracle JET offers a wide range of options for customizing charts, much more than APEX''s declarative settings allow.</li>',
'    <li><strong>Note 2:</strong> The Oracle JET Cookbook is an invaluable resource for developers to explore various chart options.</li>',
'    <li><strong>Note 3:</strong> Although APEX provides default charts, more intricate customizations require JavaScript and Oracle JET integration.</li>',
unistr('    <li><strong>Note 4:</strong> Designers can assist developers by providing more precise design guidelines based on Oracle JET\2019s available settings.</li>'),
'</ul>',
'',
'<h3>Resources</h3>',
'<ul>',
'    <li><a href="https://www.oracle.com/webfolder/technetwork/jet/index.html" target="_blank">Oracle JET Documentation</a></li>',
'    <li><a href="https://www.oracle.com/webfolder/technetwork/jet/index.html" target="_blank">Oracle JET Cookbook</a></li>',
'    <li>Sample APEX Applications: Pre-built charts and examples from the Oracle APEX community.</li>',
'</ul>',
'',
'<h3>Next Steps</h3>',
'<ul>',
'    <li>Use the Oracle JET Cookbook to explore different chart styles and settings.</li>',
unistr('    <li>Incorporate JavaScript code for more detailed customizations when APEX\2019s declarative options are not enough.</li>'),
'    <li>Work with UI designers to bridge the gap between mock-ups a'))
,p_prompt=>'Notes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
,p_ai_enabled=>false
);
wwv_flow_imp.component_end;
end;
/
