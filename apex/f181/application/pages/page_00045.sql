prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>'#23 Implementing VPD across an APEX app for row level security'
,p_alias=>'23-IMPLEMENTING-VPD-ACROSS-AN-APEX-APP-FOR-ROW-LEVEL-SECURITY'
,p_step_title=>'#23 Implementing VPD across an APEX app for row level security'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22786298705774379)
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
 p_id=>wwv_flow_imp.id(22065325508579341)
,p_name=>'P45_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'# Topic Title',
'',
'#23 Implementing VPD across an APEX app for row level security',
'## Table of Contents (IGNORE)',
'',
'- [Objective](#objective)',
'- [Steps to Build Functionality](#steps-to-build-functionality)',
'- [Notes to Remember](#notes-to-remember)',
'- [Resources](#resources)',
'- [Next Steps](#next-steps)',
'',
'## Objective',
'',
'Problem Explanation',
'The user presents a scenario where they have built a fitness tracking app for a university, allowing users to log fitness challenges and track points for different teams. The challenge arises when they want to reuse the same app for a different organ'
||'ization (in this case, Insum) while keeping the data separate. Each organization should see only their own teams, challenges, and leaderboard information. The user initially considered adding an org_id to differentiate data but realized that applying'
||' this change across every query and process manually would be time-consuming and cumbersome.',
'',
'Solution Explanation',
'The solution proposed is to use Virtual Private Database (VPD), a feature in Oracle that allows for dynamically filtering data based on a user''s context, without modifying individual queries. By leveraging this feature, the user can ensure that each '
||'organization sees only its relevant data based on a specified org_id, automatically applied to all queries.',
'',
'Steps to Implement VPD',
'Check Prerequisites:',
'',
'Ensure that the database runs on Oracle Enterprise Edition.',
'Ensure the user has execute permissions on the DBMS_RLS package, which handles VPD functionality.',
'Add org_id Column:',
'',
'The user has already added an org_id column to the relevant tables to differentiate data by organization.',
'',
'Set the Tenant ID:',
'',
'Use an apex_session.set_tenant_id function to set the org_id as the tenant ID for the user session. This can be done when a user logs in or selects their organization.',
'```plsql',
'apex_session.set_tenant_id(organization_id);',
'```',
'This should be triggered when users select their organization, and an after-authentication process should be added to ensure the org_id is set when the user logs in.',
'',
'Create VPD Policy Function:',
'',
'Create a function that returns a WHERE clause based on the tenant ID (org_id).',
'Example of the policy function:',
'',
'```plsql',
'CREATE OR REPLACE FUNCTION get_org_predicate',
'RETURN VARCHAR2',
'IS',
'BEGIN',
'  RETURN ''org_id = SYS_CONTEXT(''''APEX$SESSION'''', ''''TENANT_ID'''')'';',
'END get_org_predicate;',
'```',
'This function ensures that every query against tables with VPD enabled will automatically filter rows based on the org_id.',
'',
'Add VPD Policies to Tables:',
'',
'For each relevant table (e.g., challenges, teams, leaderboard), add the VPD policy using DBMS_RLS.ADD_POLICY:',
'```plsql',
'BEGIN',
'  DBMS_RLS.ADD_POLICY(',
'    object_schema  => ''app_schema'',',
'    object_name    => ''challenges'',',
'    policy_name    => ''org_policy'',',
'    function_schema=> ''app_schema'',',
'    policy_function=> ''get_org_predicate''',
'  );',
'END;',
'```',
'This ensures that all queries on the challenges table, for example, will automatically apply the org_id filter.',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_prompt=>'Notes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22065427580579342)
,p_name=>'P45_NOTES_1'
,p_item_sequence=>20
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Testing:',
'',
'After setting up the VPD policy, the user tested by selecting an organization and verifying that only the relevant data for that organization was visible. The app dynamically displayed only the teams, challenges, and leaderboards for the selected org'
||'anization.',
'Tips',
unistr('After Authentication Process: Automating the tenant ID setting during login is critical to ensuring users don\2019t see incorrect data. By adding this process, you save users from manually selecting their organization each time.'),
'',
'Maintainability: Using VPD is much more scalable and maintainable than manually altering all the queries in the app to include org_id conditions.',
'',
'Triggers for org_id Defaults: Ensure that when new records are created, the org_id is automatically populated based on the current tenant.',
'',
'Relevant Code',
'Here is a summary of the key code snippets used in the solution:',
'',
'Set Tenant ID:',
'',
'```plsql',
'apex_session.set_tenant_id(user_selected_org_id);',
'```',
'VPD Policy Function:',
'',
'```plsql',
'CREATE OR REPLACE FUNCTION get_org_predicate',
'RETURN VARCHAR2',
'IS',
'BEGIN',
'  RETURN ''org_id = SYS_CONTEXT(''''APEX$SESSION'''', ''''TENANT_ID'''')'';',
'END get_org_predicate;',
'```',
'Add VPD Policy to Table:',
'',
'```plsql',
'BEGIN',
'  DBMS_RLS.ADD_POLICY(',
'    object_schema  => ''app_schema'',',
'    object_name    => ''challenges'',',
'    policy_name    => ''org_policy'',',
'    function_schema=> ''app_schema'',',
'    policy_function=> ''get_org_predicate''',
'  );',
'END;',
'```',
'Testing:',
'',
'After setting up the VPD policy, the user tested by selecting an organization and verifying that only the relevant data for that organization was visible. The app dynamically displayed only the teams, challenges, and leaderboards for the selected org'
||'anization.',
'Tips',
unistr('After Authentication Process: Automating the tenant ID setting during login is critical to ensuring users don\2019t see incorrect data. By adding this process, you save users from manually selecting their organization each time.'),
'',
'Maintainability: Using VPD is much more scalable and maintainable than manually altering all the queries in the app to include org_id conditions.',
'',
'Triggers for org_id Defaults: Ensure that when new records are created, the org_id is automatically populated based on the current tenant.',
'',
'Relevant Code',
'Here is a summary of the key code snippets used in the solution:',
'',
'Set Tenant ID:',
'',
'```plsql',
'apex_session.set_tenant_id(user_selected_org_id);',
'```',
'VPD Policy Function:',
'',
'```plsql',
'CREATE OR REPLACE FUNCTION get_org_predicate',
'RETURN VARCHAR2',
'IS',
'BEGIN',
'  RETURN ''org_id = SYS_CONTEXT(''''APEX$SESSION'''', ''''TENANT_ID'''')'';',
'END get_org_predicate;',
'```',
'Add VPD Policy to Table:',
'',
'```plsql',
'BEGIN',
'  DBMS_RLS.ADD_POLICY(',
'    object_schema  => ''app_schema'',',
'    object_name    => ''challenges'',',
'    policy_name    => ''org_policy'',',
'    function_schema=> ''app_schema'',',
'    policy_function=> ''get_org_predicate''',
'  );',
'END;',
'```'))
,p_prompt=>'Notes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp.component_end;
end;
/
