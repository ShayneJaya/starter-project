prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_name=>'#28: Oracle Text and Adding Relevance to Popup LOVs'
,p_alias=>'28-ORACLE-TEXT-AND-ADDING-RELEVANCE-TO-POPUP-LOVS'
,p_step_title=>'#28: Oracle Text and Adding Relevance to Popup LOVs'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22988640405471014)
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
 p_id=>wwv_flow_imp.id(22065873361579346)
,p_name=>'P51_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>APEX Pop-up LOV Enhancements</title>',
'</head>',
'<body>',
'',
'<h1>Topic Title</h1>',
'<h2>Oracle Text and Adding Relevance to Popup L</h2>',
'',
'<h2>Objective</h2>',
'<p>The objective of this episode is to demonstrate how to enhance a pop-up LOV (List of Values) in Oracle APEX by including relevance scores, allowing for more precise and useful search results, especially when using Oracle Text. The goal is to show '
||'how relevance can improve the search experience when dealing with names, including nicknames and full names, and how to implement a custom search functionality.</p>',
'',
'<h2>Steps to Build Functionality</h2>',
'',
'<ol>',
'    <li>',
'        <strong>Step 1: Setup Oracle Text</strong>',
'        <ul>',
'            <li>Use Oracle Text to improve search capabilities in APEX, allowing for intelligent matching (e.g., recognizing "Bill" as "William").</li>',
'            <li>This step involves creating a text index, which can be referenced in the application.</li>',
'            <li>Example: Include Oracle Text column indexing more than just the last name.</li>',
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 2: Customize the Pop-up LOV</strong>',
'        <ul>',
'            <li>Modify the default pop-up LOV behavior to utilize the relevance score provided by Oracle Text.</li>',
'            <li>Code snippet or example:</li>',
'        </ul>',
'        <pre>',
'&lt;code&gt;',
'SELECT name, relevance_score',
'FROM person_table',
'WHERE CONTAINS(last_name, :APEX$F01) &gt; 0',
'ORDER BY relevance_score DESC;',
'&lt;/code&gt;',
'        </pre>',
'        <ul>',
'            <li>This contains clause retrieves the relevance score, which is critical for sorting results based on how relevant they are to the search term.</li>',
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 3: Enable Relevance Sorting</strong>',
'        <ul>',
'            <li>Modify the query to sort the search results by the relevance score rather than by default sorting like alphabetical order.</li>',
'            <li>Example: Sort the LOV by the relevance score, so names closely matching the search term are listed first.</li>',
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 4: Bind Search Input</strong>',
'        <ul>',
'            <li>Use the <code>APEX$F01</code> bind variable to capture user input and feed it into the query for better control over the search process.</li>',
'            <li>This allows the input term (e.g., "Bill") to be bound into the custom query, so related names (e.g., "William") are returned with their relevance scores.</li>',
'        </ul>',
'    </li>',
'    <li>',
'        <strong>Step 5: Display the Relevance Column</strong>',
'        <ul>',
'            <li>Optionally, display the relevance score to the user to enhance transparency. This allows users to see how closely each result matches their search term.</li>',
'            <li>Users can still sort by other fields like first or last name, but relevance is the default.</li>',
'        </ul>',
'    </li>',
'</ol>',
'',
'<h3>Notes to Remember</h3>',
'<ul>',
'    <li><strong>Note 1:</strong> Oracle Text is very powerful for name matching. It can even match nicknames (e.g., "Bill" matches "William") and handle complex searches.</li>',
'    <li><strong>Note 2:</strong> The key to relevance sorting is including the <code>APEX$F01</code> bind variable in your custom query to ensure that the search input is captured and processed.</li>',
'    <li><strong>Note 3:</strong> Default APEX LOV functionality does not include relevance, so writing custom SQL queries is necessary to utilize this feature.</li>',
'    <li><strong>Note 4:</strong> APEX tracing can help identify how APEX processes search inputs (as in identifying <code>APEX$F01</code>), which is useful when building custom queries.</li>',
'    <li><strong>Note 5:</strong> While it''s optional, showing the relevance score in the UI can enhance the user experience by indicating how well each result matches their search.</li'))
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
