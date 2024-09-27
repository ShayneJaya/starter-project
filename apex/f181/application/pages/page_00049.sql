prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_name=>'#26 - APEX Automations'
,p_alias=>'26-APEX-AUTOMATIONS'
,p_step_title=>'#26 - APEX Automations'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22791728896172018)
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
 p_id=>wwv_flow_imp.id(22065697008579344)
,p_name=>'P49_NOTES_1'
,p_item_sequence=>20
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'| **Feature**                          | **APEX Automations**                                                                 | **DBMS Scheduler**                                                                                   |',
'|--------------------------------------|--------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|',
'| **Access**                           | No database-level access required; can be managed from APEX Builder                   | Requires access to DBMS Scheduler and database-level privileges                                       |',
'| **Ease of Use**                      | User-friendly, declarative interface within APEX                                      | Requires writing custom PL/SQL code                                                                  |',
'| **Integration with APEX**            | Seamless access to APEX-specific features like APEX Mail and Collections               | No direct integration with APEX; requires extra code to interact with APEX-related features           |',
'| **Build Options**                    | Can be controlled via APEX build options, making it easy to manage across environments | No direct build options; requires manual setup for controlling jobs in different environments         |',
'| **Scheduling Options**               | Supports both on-demand and scheduled executions                                      | Focuses primarily on scheduled jobs with fine-grained control                                        |',
'| **Logs & Error Handling**            | Logs available directly within APEX, making it easier to track job executions and errors | Separate logging mechanism; requires more setup to track and manage errors                           |',
'| **Job Granularity**                  | Limited to the context of the APEX application                                        | Can be used for jobs that apply more broadly or are independent of any APEX application               |',
'| **Best Use Case**                    | For tasks that are integrated into an APEX application and benefit from APEX-specific features | For tasks requiring fine control, independent of APEX, or when more granular database control is needed |',
''))
,p_prompt=>'Notes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22792539229208356)
,p_name=>'P49_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'## Topic: APEX Automations vs. DBMS Scheduler',
'',
'### Problem:',
'Many developers are familiar with **DBMS Scheduler** but find it complex due to its need for specific privileges, syntax, and the overhead of ensuring access to the required database objects. Additionally, while DBMS Scheduler is powerful, it lacks s'
||'ome of the native integration benefits that APEX Automations provide, especially when working within APEX applications.',
'',
'### Solution:',
unistr('**APEX Automations** offer an alternative to DBMS Scheduler that is more user-friendly and better integrated into the APEX development environment. This reduces complexity and allows developers to take advantage of APEX\2019s built-in features, such as A')
||'PEX Mail, APEX Collections, and session management.',
'',
'#### Why Choose APEX Automations over DBMS Scheduler?',
'',
'1. **Access and Permissions**:',
'   - **DBMS Scheduler**: Requires specific privileges to run. The user needs to have access to database objects and must ensure the scheduler has the right permissions to execute tasks on those objects.',
'   - **APEX Automations**: As long as the user has access to the APEX builder environment, they can create and manage automations without worrying about additional database privileges.',
'',
'2. **Syntax Complexity**:',
'   - **DBMS Scheduler**: Uses its own syntax, which can be difficult to remember and requires looking up documentation frequently.',
'   - **APEX Automations**: Much more user-friendly with a declarative UI. Scheduling and managing tasks is straightforward, with less need for complex coding.',
'',
'3. **Ease of Use**:',
'   - **DBMS Scheduler**: Can be overkill for simpler tasks, and integrating it with APEX might require additional coding for things like APEX session management.',
'   - **APEX Automations**: Integrated directly into APEX, making it easy to schedule tasks that involve APEX-specific features, such as sending emails via **APEX Mail** or managing **APEX Collections**.',
'',
'### Sample Automation Creation in APEX:',
'',
'When creating an automation, the following options are provided:',
'',
'- **On-Demand vs. Scheduled**: Automations can be run on-demand or on a schedule, similar to DBMS Scheduler.',
'- **Friendly Schedule Interface**: APEX provides a UI to easily define when automations should run, which is much simpler than the DBMS Scheduler syntax.',
'',
'Example of creating a scheduled automation:',
'```sql',
'    BEGIN',
'        apex_automation.create(',
'            p_name => ''Fetch YouTube Stats'',',
'            p_schedule => ''FREQ=DAILY; BYHOUR=9; BYMINUTE=0'',',
'            p_plsql_code => ''BEGIN',
'                                -- Your PL/SQL code here',
'                                NULL;',
'                            END;''',
'        );',
'    END;',
'```',
'',
'### Actions in APEX Automations:',
'- Automations allow you to define actions that can be chained together, providing functionality similar to DBMS Scheduler chains but with a more intuitive setup. Each action is written in PL/SQL and can access APEX-specific functionality without need'
||'ing extra setup for APEX session management.',
'```sql',
'    BEGIN',
'    apex_mail.send(',
'        p_to => ''example@domain.com'',',
'        p_from => ''no-reply@domain.com'',',
'        p_subj => ''Daily YouTube Stats'',',
'        p_body => ''Your YouTube statistics have been updated.''',
'    );',
'    END;',
'```',
''))
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
