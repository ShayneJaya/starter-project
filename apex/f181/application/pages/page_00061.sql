prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_name=>'#36 - Methods on Tables'
,p_alias=>'36-METHODS-ON-TABLES'
,p_step_title=>'#36 - Methods on Tables'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'code,pre{',
'',
'  color: crimson;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76395799826312947)
,p_name=>'P61_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Episode 36 - Apex Insider Tips</title>',
'</head>',
'<body>',
'    <h1>Episode 36: Apex Insider Tips - Managing Lost Update Protection</h1>',
'',
'    <h2>Topic of Discussion:</h2>',
'    <p>In this episode, Hayden and Anton discuss a common data modeling scenario and explore how to handle Lost Update Protection effectively when dealing with one-to-one relationships across multiple tables in Oracle APEX.</p>',
'',
'    <h2>Problem Statement:</h2>',
'    <p>Hayden introduces a challenge: handling two tables (Employee and Nickname) in a one-to-one relationship using a single form in Oracle APEX. The issue arises when performing DML operations such as inserting or updating records, particularly whe'
||'n each table might require different actions.</p>',
'',
'    <h2>Solution:</h2>',
'    <p>The hosts explain that while Oracle APEX offers declarative forms with automatic DML processes, handling such relationships between tables can be tricky when both inserting and updating need to occur simultaneously. Specifically, while APEX ca'
||'n perform DML on the Employee table declaratively, it cannot do the same for the Nickname table due to conflicting database actions.</p>',
'',
'    <p><strong>Hayden''s approach:</strong></p>',
'    <ul>',
'        <li>He uses APEX''s "Methods on Tables" utility to generate a PL/SQL API, enabling manual control over DML operations while preserving APEX''s Lost Update Protection mechanism.</li>',
'        <li>This package includes insert, update, and delete procedures, along with MD5 hash functions to detect changes and prevent accidental overwrites of concurrent updates.</li>',
'        <li>By comparing MD5 hashes, Hayden avoids unnecessary updates, further optimizing performance.</li>',
'    </ul>',
'',
'    <h2>Tips and Tricks:</h2>',
'    <ul>',
'        <li><strong>Using MD5 for Lost Update Protection:</strong> Hayden emphasizes using MD5 to detect record changes. Although theoretically there is a minuscule chance of MD5 collisions, the odds are so low they can be safely ignored.</li>',
'        <li><strong>Optimizing with Methods on Tables:</strong> This utility simplifies generating a PL/SQL package for table management, offering built-in procedures that developers can customize for efficient DML handling.</li>',
'        <li><strong>Performance Considerations:</strong> To avoid unnecessary updates, compare the MD5 hash of existing records with the new data before making changes.</li>',
'    </ul>',
'',
'    <h2>Discussion on Lost Update Protection:</h2>',
'    <p>Lost Update Protection is crucial to avoid data conflicts, especially in collaborative environments. The hosts explain that APEX handles this declaratively by checking item values on a form. However, developers need to be cautious when only ce'
||'rtain fields are included in a form, as APEX will only check those fields for updates.</p>',
'',
'    <h2>Alternative Approaches:</h2>',
'    <ul>',
'        <li>Using row version numbers as another method of Lost Update Protection.</li>',
unistr('        <li>Oracle Designer\2019s approach of passing both old and new values for comparison.</li>'),
'        <li>Utilizing a row SCN (System Change Number) to detect changes without adding extra columns.</li>',
'    </ul>',
'',
'    <h2>Bonus Tip: Retouching Photos on Mac</h2>',
'    <p>In an off-topic segment, Hayden demonstrates how to quickly edit and retouch images using the built-in "Photos" app on a Mac, without the need for complex tools like Adobe Photoshop.</p>',
'',
'    <h2>Conclusion:</h2>',
'    <p>The episode concludes with a lively discussion on managing concurrent data changes in APEX and the importance of Lost Update Protection for critical applications.</p>',
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
