prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>'#19 - Is that really a Classic Report??'
,p_alias=>'19-IS-THAT-REALLY-A-CLASSIC-REPORT'
,p_step_title=>'#19 - Is that really a Classic Report??'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22062277350579310)
,p_plug_name=>'Transfer Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22062502121579313)
,p_name=>'Transfer Confirmation'
,p_parent_plug_id=>wwv_flow_imp.id(22062277350579310)
,p_template=>wwv_flow_imp.id(32861548509813920)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--noBorders'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with e as (',
'        select e.ename, d.dname',
'        from emp e',
'        , dept d',
'        where e.deptno = d.deptno',
'        and e.empno = :P41_EMPNO',
')',
', d as (select dname from dept where deptno = :P41_DEPTNO)',
', depts as (select count(*) n from emp where deptno = :P41_DEPTNO)',
'select e.ename',
'      ,e.dname from_dept',
'      , d.dname to_depts',
'      , depts.n',
'      , case when depts.n != 1 then ''s'' else '''' end plural',
'      from e, d, depts'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P41_EMPNO,P41_DEPTNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(32971576445813973)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22063862974579326)
,p_query_column_id=>1
,p_column_alias=>'ENAME'
,p_column_display_sequence=>10
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#ENAME# will be transfered from #FROM_DEPT# to <b>#TO_DEPTS#</b> (with #N# employee#PLURAL#)'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22063978544579327)
,p_query_column_id=>2
,p_column_alias=>'FROM_DEPT'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22064051001579328)
,p_query_column_id=>3
,p_column_alias=>'TO_DEPTS'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22064179154579329)
,p_query_column_id=>4
,p_column_alias=>'N'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22064286150579330)
,p_query_column_id=>5
,p_column_alias=>'PLURAL'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22760974424310504)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22062603869579314)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22062502121579313)
,p_button_name=>'Transfer'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'Transfer'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22062373794579311)
,p_name=>'P41_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22062277350579310)
,p_prompt=>'Empno'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select distinct ENAME, EMPNO from EMP '
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22062496203579312)
,p_name=>'P41_DEPTNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22062277350579310)
,p_prompt=>'Department Number'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select DNAME, DEPTNO from DEPT'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22761619865315822)
,p_name=>'P41_NOTES'
,p_item_sequence=>20
,p_prompt=>'Summary'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#  Is that really a Classic Report??',
'## Table of Contents',
'',
'- [Objective](#objective)',
'- [Steps to Build Functionality](#steps-to-build-functionality)',
'- [Notes to Remember](#notes-to-remember)',
'- [Resources](#resources)',
'',
'## Objective',
'',
'',
'#### Problem:',
'The scenario involves a form to transfer employees between departments. The challenge is to display extra information dynamically about the employee''s current department and the department they are transferring to, without using cumbersome page items'
||' or multiple hidden fields. Using multiple hidden items is a common approach, but it can become unwieldy as more data needs to be updated dynamically.',
'',
'#### Solution:',
unistr('The tip introduces the use of a classic report in Oracle APEX, styled in a way that doesn\2019t resemble the typical table format. By customizing the report''s template options (disabling alternating rows, borders, pagination, and headings), the report ca')
||'n display text cleanly, such as "Employee X is moving from Department A to Department B," without looking like a traditional table.',
'',
unistr('The presenter uses an HTML expression within the report to dynamically show information about the employee\2019s transfer. They also mention a dynamic action that updates both the current and target department information when items on the form change, e')
||'nhancing the interactivity of the report.',
'',
'In summary, the video shows how to take advantage of classic reports in Oracle APEX for displaying more flexible, non-tabular data, improving the user experience when handling dynamic updates.',
'',
'',
'## Steps to Build Functionality',
'',
'List the key steps to implement the functionality, along with any relevant code snippets or examples.',
'',
'1. **Step 1:**',
'   - Description of what this step does.',
'   - Code snippet or example:',
'',
'   ```javascript',
'   // Example code',
'   function example() {',
'     console.log(''This is an example step.'');',
'   }',
'',
'',
'### **Notes to Remember**',
'This section encourages you to capture not just random notes, but structured information such as:',
'- **Key concepts** that help you understand the topic.',
'- **Gotchas** or things that may trip you up.',
'- **Best practices** you''ve learned to follow.',
'- **Common pitfalls** to avoid.',
'',
'### **Resources**',
'This section is designed to be a quick reference to the most useful materials, categorized by type (documentation, tutorials, videos, books). This makes it easier to revisit or share with others.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22064360568579331)
,p_name=>'Show Transfer Details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_EMPNO,P41_DEPTNO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!!$v("P41_EMPNO") && !! $v("P41_DEPTNO")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22064406620579332)
,p_event_id=>wwv_flow_imp.id(22064360568579331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22062502121579313)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22064693053579334)
,p_event_id=>wwv_flow_imp.id(22064360568579331)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22062502121579313)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22064519667579333)
,p_event_id=>wwv_flow_imp.id(22064360568579331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22062502121579313)
);
wwv_flow_imp.component_end;
end;
/
