prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_name=>'#32 - Better Success Messages'
,p_alias=>'32-BETTER-SUCCESS-MESSAGES'
,p_step_title=>'#32 - Better Success Messages'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24786001973887522)
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
 p_id=>wwv_flow_imp.id(24051297120371218)
,p_name=>'P55_NOTES'
,p_item_sequence=>20
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Oracle APEX Tip: Enhancing Success Messages</title>',
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            padding: 20px;',
'            background-color: #f4f4f4;',
'        }',
'        h1 {',
'            color: #4CAF50;',
'        }',
'        p {',
'            line-height: 1.6;',
'        }',
'        code {',
'            background-color: #e0e0e0;',
'            padding: 2px 4px;',
'            border-radius: 4px;',
'        }',
'        .tip {',
'            margin-top: 20px;',
'            background-color: #d9edf7;',
'            padding: 10px;',
'            border-left: 5px solid #31708f;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<h1>Oracle APEX Tip: Enhancing Success Messages</h1>',
'',
'<p><strong>Problem:</strong> When applying changes in a form with multiple processes, success messages are hard-coded and concatenated, appearing without proper formatting (e.g., no line breaks). Additionally, the user is sometimes shown irrelevant m'
||'essages (e.g., when zero items are processed).</p>',
'',
'<h2>Solution</h2>',
'',
'<p><strong>Step 1:</strong> Add line breaks between success messages by including <code>&lt;br&gt;</code> tags where appropriate. This improves the readability of concatenated messages.</p>',
'',
unistr('<p><strong>Step 2:</strong> Add conditions to your processes to prevent irrelevant messages from appearing. For example, if no line items are processed, don\2019t show a message.</p>'),
'',
'<p><strong>Step 3:</strong> Customize your success messages to provide detailed feedback, such as showing how many lines were processed. This can be achieved by using an out parameter in the PL/SQL procedure that returns the number of processed lines'
||' to display.</p>',
'',
'<p><strong>Code Example:</strong></p>',
'<pre><code>',
'apex_application.g_print_success_message := ',
'    apex_application.g_print_success_message || ',
'    l_message || ''&lt;br&gt;'';',
'</code></pre>',
'',
'<p>This code appends a new success message while preserving existing messages. The <code>&lt;br&gt;</code> ensures each message appears on a new line.</p>',
'',
'<h2>Tip</h2>',
'',
'<div class="tip">',
'    <p>Consider encapsulating this logic in a utility procedure that you can reuse in other parts of your application. For example, a procedure like <code>add_to_message</code> can handle message concatenation for any process.</p>',
'</div>',
'',
'<h2>Further Improvement</h2>',
'',
'<p>For better localization support, you can modify this solution to make success messages translatable, which will be discussed in a future tip.</p>',
'',
'</body>',
'</html>',
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
