prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'Oracle Forms to APEX'
,p_alias=>'ORACLE-FORMS-TO-APEX'
,p_step_title=>'Oracle Forms to APEX'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20935276377532342)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Modernizing Oracle Forms using Oracle APEX</title>',
'    <style>',
'        .container {',
'            font-family: Arial, sans-serif;',
'            line-height: 1.6;',
'            margin: 20px;',
'        }',
'        h1, h2, h3 {',
'            color: #2e6da4;',
'        }',
'        p {',
'            margin-bottom: 10px;',
'        }',
'        a {',
'            color: #2e6da4;',
'            text-decoration: none;',
'        }',
'        a:hover {',
'            text-decoration: underline;',
'        }',
'        .section {',
'            margin-bottom: 30px;',
'        }',
'        ul {',
'            margin: 10px 0;',
'            padding-left: 20px;',
'        }',
'        li {',
'            margin-bottom: 5px;',
'        }',
'        .blockquote {',
'            border-left: 4px solid #2e6da4;',
'            padding-left: 10px;',
'            color: #555;',
'            margin: 10px 0;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        <h1>General Guide: Modernizing Oracle Forms using Oracle APEX</h1>',
'',
'        <div class="section">',
'            <h2>Overview</h2>',
'            <p>Oracle Forms, a component of Oracle Fusion Middleware, has been a popular technology for building data applications for decades. However, with the shift towards cloud computing and mobile apps, modernizing these Forms-based apps is cru'
||'cial. Oracle APEX provides a powerful platform to achieve this modernization, offering scalability, security, and a modern user experience.</p>',
'            <div class="blockquote">',
unistr('                <p>\201CModernizing Oracle Forms apps with APEX involves leveraging existing business logic, using the APEX Builder to create and modify applications, and utilizing built-in security features.\201D</p>'),
'            </div>',
'        </div>',
'',
'        <div class="section">',
'            <h2>APEX Architecture</h2>',
'            <p>Oracle APEX utilizes a simple 3-tier architecture:</p>',
'            <ul>',
'                <li><strong>Browser:</strong> The client-side interface where users interact with the application.</li>',
'                <li><strong>Web Server:</strong> Manages communication between the browser and the database.</li>',
'                <li><strong>Database:</strong> Executes all application logic, data processing, and business logic.</li>',
'            </ul>',
'            <p>This architecture ensures top performance and scalability, making Oracle APEX an ideal platform for enterprise applications.</p>',
'        </div>',
'',
'        <div class="section">',
'            <h2>The Oracle RAD Stack</h2>',
'            <p>The Oracle RAD (Rapid Application Development) stack consists of:</p>',
'            <ul>',
'                <li><strong>Oracle REST Data Services (ORDS):</strong> A mid-tier Java application that translates HTTP(S) calls into SQL and PL/SQL code.</li>',
'                <li><strong>Oracle APEX:</strong> A low-code development platform that enables you to build scalable, secure enterprise apps with world-class features.</li>',
'                <li><strong>Oracle Database:</strong> A robust, reliable, and highly performant database management system.</li>',
'            </ul>',
'            <p>This stack provides all the necessary components to develop and deploy modern applications, leveraging existing Oracle investments.</p>',
'        </div>',
'',
'        <div class="section">',
'            <h2>Why Modernize with APEX?</h2>',
'            <p>Modernizing Oracle Forms with APEX offers several benefits:</p>',
'            <ul>',
'                <li>Reduced costs compared to maintaining legacy systems.</li>',
'                <li>Modern user experience with responsive design and mobile-friendly interfaces.</li>',
'                <li>Comprehensive enterprise app development features, including security, scalability, and maintainability.</li>',
'                <li>APEX includes AI-assisted app development tools, elastic scalability, and full management on Oracle Cloud.</li>',
'            </ul>',
'        </div>',
'',
'        <div class="section">',
'            <h2>How to Modernize Oracle Forms using APEX</h2>',
'            <p>To modernize Oracle Forms apps using APEX:</p>',
'            <ul>',
'                <li>Leverage existing business logic by integrating it into the new APEX applications.</li>',
'                <li>Use the APEX Builder to create and modify applications with a user-friendly drag-and-drop interface.</li>',
'                <li>Utilize built-in security features such as authentication, authorization, and data protection mechanisms.</li>',
'                <li>Choose from a variety of navigation and theme styles to enhance the user experience.</li>',
'                <li>Use APEX APIs for deep control over app development, allowing customization and extension of functionality.</li>',
'            </ul>',
'        </div>',
'',
'        <div class="section">',
'            <h2>Modernizing Oracle Reports with APEX</h2>',
'            <p>Oracle Reports has been deprecated as of Fusion Middleware 12c Release 2. Oracle recommends migrating to Oracle Analytics Publisher, but some reports can be modernized using APEX Components, such as:</p>',
'            <ul>',
'                <li>Faceted Search</li>',
'                <li>Interactive Reports</li>',
'                <li>Charts</li>',
'            </ul>',
'            <p>These components allow you to build dynamic, interactive reports that provide valuable insights into your data.</p>',
'        </div>',
'',
'        <div class="section">',
'            <h2>Success Stories</h2>',
'            <p>Several organizations have successfully modernized their Oracle Forms applications using APEX, including:</p>',
'            <ul>',
'                <li><strong>Savantage Solutions:</strong> Achieved significant improvements in development time and scalability.</li>',
'                <li><strong>Humanic:</strong> Enhanced user experience and reduced maintenance costs.</li>',
'                <li><strong>VAN Group:</strong> Improved data accessibility and reporting capabilities.</li>',
'            </ul>',
'        </div>',
'',
'        <div class="section">',
'            <h2>Summary</h2>',
'            <p>Oracle APEX is the ideal platform for modernizing Oracle Forms applications. It offers a robust set of tools and features for building modern, scalable, and secure enterprise applications.</p>',
'            <p>For more details, visit the original blog post <a href="https://blogs.oracle.com/apex/post/modernizing-oracle-forms-using-oracle-apex" target="_blank">here</a>.</p>',
'        </div>',
'    </div>',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21131772193167838)
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
wwv_flow_imp.component_end;
end;
/
