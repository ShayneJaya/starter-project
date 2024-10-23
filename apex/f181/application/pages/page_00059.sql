prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_name=>'#35: Static LOVs in the Card Region'
,p_alias=>'35-STATIC-LOVS-IN-THE-CARD-REGION'
,p_step_title=>'#35: Static LOVs in the Card Region'
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
 p_id=>wwv_flow_imp.id(50222034179779456)
,p_name=>'P59_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>APEX Instant Tips: Episode 35</title>',
'',
'</head>',
'<body>',
'<h1>APEX Instant Tips: Episode 35</h1>',
'<h2>Multilingual Translations in Oracle APEX</h2>',
'',
'<h2>Overview</h2>',
'<p>In this episode, Michelle and Anton discuss challenges and solutions related to multilingual applications in Oracle APEX, with a focus on using static LOVs (List of Values) to streamline translations.</p>',
'',
'<h2>Problem Statement</h2>',
'<p>When developing multilingual apps in Oracle APEX, developers may encounter difficulties when translating specific components, such as status columns in interactive reports and card regions. Oracle APEX supports translation for most regions, but ce'
||'rtain areas like card regions require additional effort for proper translation of static LOVs.</p>',
'',
'<h2>Solution</h2>',
'<p>Anton demonstrates a solution using static LOVs in APEX for managing multilingual translations effectively. Key highlights include:</p>',
'<ol>',
'    <li><strong>Using Static LOVs:</strong> Static LOVs simplify translation without the need for additional tables or columns. When the application is translated, LOVs can be easily adjusted without significant changes to the data model.</li>',
'    <li><strong>Interactive Reports:</strong> LOVs work well with interactive reports, allowing dynamic translations of status columns.</li>',
'    <li><strong>Card Regions Limitation:</strong> Unlike interactive reports, card regions do not natively support static LOV translation, leading to untranslated codes appearing in these regions.</li>',
'</ol>',
'',
'<h2>Custom View Solution for Cards Region</h2>',
'<p>To address the issue in card regions, Anton introduces a custom view that joins APEX metadata to manage translations dynamically. This view checks the current language context using Oracle''s session context and joins the APEX application LOV entri'
||'es to return the translated values.</p>',
'',
'<h2>Steps to Implement the Solution</h2>',
'<ol>',
'    <li>Create a view that queries APEX application LOV entries and returns translated values based on the current language context.</li>',
unistr('    <li>Join this view to your card region\2019s SQL query to replace the untranslated codes with the corresponding translated text.</li>'),
'    <li>Ensure your translators continue to work within the APEX translation framework to manage and update the translations as usual.</li>',
'</ol>',
'',
'<h2>Performance and Tips</h2>',
'<ul>',
'    <li>The view performs well due to the use of scalar subqueries and efficient context checking, ensuring that the application remains responsive even with multiple translations.</li>',
'    <li>Anton suggests that Oracle APEX should natively support static LOVs in card regions to simplify the translation process in the future.</li>',
'</ul>',
'',
'<h2>Additional Insights</h2>',
'<p>Anton wraps up the episode with a humorous "Wisdom of the Week" regarding hydration packs, noting that while water and sangria are acceptable liquids, chowder is not suitable.</p>',
'',
'<h2>Questions and Future Tips</h2>',
'<p>In response to a viewer question, Anton clarifies that while there have been rumors of interactive reports being deprecated in favor of interactive grids, it is unlikely to happen anytime soon, and Oracle would likely offer a migration path if it '
||'did.</p>',
'',
'',
'    <code>',
'',
'    CREATE OR REPLACE FORCE VIEW "AIT_APP_LOV_ENTRIES_XLATED_V" as ',
'    select *',
'    from apex_application_lov_entries alov',
'    where sys_context(''APEX$SESSION'',''APP_ID'') is null  -- show everything when not in an application',
'         or (alov.primary_application_id = sys_context(''APEX$SESSION'',''APP_ID'')  ',
'          and alov.translated_app_language = (select nvl(apex_util.get_session_lang, ''en'') the_language from dual)',
'            )',
'    </code>',
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
