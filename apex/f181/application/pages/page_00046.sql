prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_name=>'#31 Navigating the APEX DOM (using getTopApex)'
,p_alias=>'31-NAVIGATING-THE-APEX-DOM-USING-GETTOPAPEX'
,p_step_title=>'#31 Navigating the APEX DOM (using getTopApex)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91238039639329075)
,p_name=>'P46_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Setting Modal Titles in Oracle APEX</title>',
'</head>',
'<body>',
'<h1>APEX Instant Tips: Episode 31</h1>',
'<h2>Setting Modal Titles Dynamically in Oracle APEX</h2>',
'',
'<h2>Objective</h2>',
'<p>The objective of this episode is to demonstrate how to dynamically set modal window titles in Oracle APEX, specifically when you need the title to reflect a record being edited. The tip focuses on how to manipulate the Document Object Model (DOM) '
||'and cross-context boundaries in APEX, especially when working with modal dialogs.</p>',
'',
'<h2>Steps to Build</h2>',
'',
'<ol>',
'    <li>',
'        <strong>Step 1: Understand the Context of the Modal</strong>',
'        <ul>',
'            <li>The issue arises because the modal window content is displayed within an iframe, and its title is part of the parent page''s DOM. This separation makes it challenging to directly set the title using standard APEX substitution syntax (e'
||'.g., <code>&P4_FIRST_NAME.</code>).</li>',
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 2: Inspect the DOM</strong>',
'        <ul>',
unistr('            <li>Using browser developer tools, inspect the DOM of the modal window. You\2019ll notice that the modal title resides outside of the iframe, in the parent page. This means any attempt to modify the title from within the iframe will not work ')
||'using typical methods.</li>',
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 3: Use jQuery to Change the Title</strong>',
'        <ul>',
'            <li>To modify the modal title, you first need to select the correct DOM element. You can use jQuery to reference the modal title''s class or ID, and then set its value.</li>',
'            <li>Example jQuery code:</li>',
'        </ul>',
'        <pre>',
'&lt;code&gt;',
'$(''.modal-title-class'').text(''Edit '' + $(''#P4_FIRST_NAME'').val());',
'&lt;/code&gt;',
'        </pre>',
'    </li>',
'    <li>',
'        <strong>Step 4: Use <code>apex.util.getTopApex</code> to Cross the Context Boundary</strong>',
'        <ul>',
'            <li>The modal and the parent page are in separate contexts (iframe and parent). You can use the undocumented APEX utility function <code>apex.util.getTopApex()</code> to reference elements in the parent page from within the modal iframe.<'
||'/li>',
'            <li>Example usage:</li>',
'        </ul>',
'        <pre>',
'&lt;code&gt;',
'var topApex = apex.util.getTopApex();',
'topApex.$(''.modal-title-class'').text(''Edit '' + $(''#P4_FIRST_NAME'').val());',
'&lt;/code&gt;',
'        </pre>',
'    </li>',
'    <li>',
'        <strong>Step 5: Implement and Test the Solution</strong>',
'        <ul>',
'            <li>Run the page and test the modal. After loading the modal, the title should reflect the record you are editing based on the value you pass into the modal. Make adjustments as necessary by inspecting the DOM and ensuring you are selecti'
||'ng the correct elements.</li>',
'        </ul>',
'    </li>',
'</ol>',
'',
'<h3>Notes to Remember</h3>',
'<ul>',
'    <li><strong>Note 1:</strong> The modal window''s title exists in the parent page, while the content is in an iframe. This separation is key to understanding how to modify modal titles dynamically.</li>',
'    <li><strong>Note 2:</strong> The <code>apex.util.getTopApex()</code> function is undocumented but widely used by developers to bridge the context gap between the modal and the parent page.</li>',
'    <li><strong>Note 3:</strong> Be mindful of class and ID names when using jQuery to reference DOM elements. Ensure you''re not unintentionally targeting multiple elements on the page.</li>',
'</ul>',
'<h3>Resources</h3>',
'<ul>',
'    <li><a href="https://www.apex.oracle.com" target="_blank">Oracle APEX Documentation</a></li>',
'    <li><a href="https://xkcd.com/1689/" target="_blank">xkcd: Context</a> (for a humorous take on the importance of context)</li>',
'    <li>APEX JavaScript APIs: Explore other undocumented features in the APEX JavaScript API.</li>',
'</ul>',
'<h3>Next Steps</h3>',
'<ul>',
'    <li>Explore the usage of <code>apex.util.'))
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
