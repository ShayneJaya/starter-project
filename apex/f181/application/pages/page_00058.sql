prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_name=>'#34 When Starting a New APEX Project'
,p_alias=>'34-WHEN-STARTING-A-NEW-APEX-PROJECT'
,p_step_title=>'#34 When Starting a New APEX Project'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24843595682414351)
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
 p_id=>wwv_flow_imp.id(24051456022371220)
,p_name=>'P58_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'  <meta charset="UTF-8">',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <meta name="description" content="In this episode of APEX Instant Tips, Martin de Souza demonstrates how to version control an APEX application and create a build file in under five minutes.">',
'  <title>APEX Instant Tips #34 - Version Control and Build Automation</title>',
'</head>',
'<body>',
'  <header>',
'    <h1>APEX Instant Tips Episode 34: Version Control and Build Automation in Under 5 Minutes</h1>',
'    <p>Join us live every Friday at 12:05 PM Eastern for 5 minutes of APEX tips!</p>',
'  </header>',
'',
'  <section id="introduction">',
'    <h2>Introduction</h2>',
unistr('    <p>Hosts Hayden and Michelle welcome viewers to the 34th episode of APEX Instant Tips, broadcasting live from Finland! Hayden expresses excitement about today\2019s topic, which continues from last week''s episode on deployment strategies.</p>'),
'  </section>',
'',
'  <section id="guest">',
'    <h2>Special Guest: Martin de Souza</h2>',
'    <p>This episode features APEX expert <strong>Martin de Souza</strong>, who will demonstrate how to version control an existing APEX application and create a build file in under five minutes. Martin explains that the process helps eliminate confus'
||'ion and debate over where to store files and how to structure projects.</p>',
'  </section>',
'',
'  <section id="demo">',
'    <h2>Demo: Version Control and Build Automation</h2>',
'    <p>Martin walks through the following steps:</p>',
'    <ul>',
unistr('      <li><strong>Create a project:</strong> Clone a repository from GitHub using the \201CUse this template\201D button and name the project <em>demo01</em>.</li>'),
'      <li><strong>Set up the environment:</strong> Add schema and app IDs to the project configuration, export the APEX application, and handle any errors.</li>',
'      <li><strong>Generate objects:</strong> Create views and packages within VS Code, auto-generate templates, and compile them directly in the editor.</li>',
'      <li><strong>Build the project:</strong> Use the terminal to generate a build script that compiles all APEX applications, views, and packages into a release folder.</li>',
'    </ul>',
'    <p>The entire process is completed in under five minutes, even with a brief VPN interruption!</p>',
'  </section>',
'',
'  <section id="qna">',
'    <h2>Q&A and Final Thoughts</h2>',
'    <p>During the Q&A session, Martin answers several technical questions from viewers, such as how to save to a repository and compile to OCI simultaneously, and how to configure wallets for database connections.</p>',
'  </section>',
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
