prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_name=>'Oracle Form to APEX FAQ'
,p_alias=>'ORACLE-FORM-TO-APEX-FAQ'
,p_step_title=>'Oracle Form to APEX FAQ'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20935303349532343)
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
'    <title>Oracle Forms to APEX Modernization - Summary</title>',
'    <style>',
'        mybody {',
'            font-family: Arial, sans-serif;',
'            line-height: 1.6;',
'            background-color: #f9f9f9;',
'            margin: 20px;',
'        }',
'        .container {',
'            ',
'            margin: auto;',
'            padding: 20px;',
'            background-color: #000;',
'            border-radius: 8px;',
'            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);',
'        }',
'        .header {',
'            ',
'            margin-bottom: 20px;',
'        }',
'        h1 {',
'            color: #933;',
'        }',
'        .faq-section {',
'            margin-bottom: 20px;',
'        }',
'        h2 {',
'            color: #0073e6;',
'            margin-bottom: 10px;',
'        }',
'        p {',
'            margin-bottom: 10px;',
'        }',
'        a {',
'            color: #0073e6;',
'            text-decoration: none;',
'        }',
'        a:hover {',
'            text-decoration: underline;',
'        }',
'        .conclusion {',
'            margin-top: 30px;',
'            font-weight: bold;',
'        }',
'    </style>',
'</head>',
'<body class="mybody">',
'    <div class="container">',
'        <div class="header">',
'            <h1>Oracle Forms to APEX Modernization</h1>',
'            <p>Read the full blog post <a href="https://blogs.oracle.com/apex/post/faq-about-oracle-forms-to-apex-modernization" target="_blank">here</a>.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>What is Oracle APEX?</h2>',
'            <p>Oracle APEX is a popular low-code platform for building scalable, secure web and mobile apps that can be deployed on the cloud or on-premises.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Starting Your Modernization</h2>',
'            <p>To start modernizing Oracle Forms apps with APEX, choose an environment (cloud or on-premises), create a Proof of Concept with a small form, and get APEX training through online resources.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Is APEX Right for Oracle Forms Developers?</h2>',
'            <p>Yes! APEX offers a declarative development framework, short learning curve, and the ability to leverage existing SQL and PL/SQL skills. It''s "cloud-ready" and integrates seamlessly with Oracle Database.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Cost of Oracle APEX</h2>',
'            <p>APEX is a no-cost feature of Oracle Database, fully supported and ready to use if you already have an Oracle Database.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Security Features</h2>',
'            <p>APEX applications are built with secure settings like authentication, session management, parameter tampering protection, and XSS prevention.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Best Practices for Modernization</h2>',
'            <p>Identify and prioritize forms to modernize based on usage and complexity. Focus on simplifying and enhancing business processes rather than replicating old functionality.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Co-existing Forms and APEX Apps</h2>',
'            <p>APEX applications can co-exist with Forms apps, both running against the same Oracle Database and using the same database objects.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Modernizing Oracle Reports</h2>',
'            <p>APEX supports various reporting options like Classic Reports, Interactive Reports, and APEX Office Print for pixel-perfect reports.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>New APEX Features</h2>',
'            <p>APEX offers features like responsive mobile apps, workflow automation, modern UI with Universal Theme, accessibility, globalization, and monitoring.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Sample APEX Apps</h2>',
'            <p>Explore various sample apps including Cards, Charts, Maps, and Progressive Web Apps on the APEX website.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Migration Tools</h2>',
'            <p>While you can build APEX apps from scratch, third-party tools from APEX consulting companies can expedite the modernization process.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Migrating Oracle Forms 6i</h2>',
'            <p>Forms apps from any version, including 6i, can be modernized to APEX. However, the APEX 21.1 desupport of the Migration Project means you should build apps from scratch rather than using the old migration tools.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Business Logic and Triggers</h2>',
'            <p>Review existing business logic and decide whether to keep it or implement it with APEX features like dynamic actions.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Level of Effort</h2>',
'            <p>The effort to modernize depends on the number of forms, their complexity, and available resources.</p>',
'        </div>',
'',
'        <div class="faq-section">',
'            <h2>Success Stories</h2>',
'            <p>Read about successful APEX modernization projects from companies like Humanic, Novatech, Soham ERP Solutions, and REACH New Zealand Limited.</p>',
'        </div>',
'',
'        <div class="conclusion">',
'            <p>Modernizing Oracle Forms apps with APEX is a significant investment, but it offers long-term benefits for users and organizations. Start with a proof of concept and explore APEX today!</p>',
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
 p_id=>wwv_flow_imp.id(21134931341256705)
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
