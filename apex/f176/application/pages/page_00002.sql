prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>176
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Appointment Request Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment Request Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(14276016292763081)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14584585061316601)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14370403510763152)
,p_plug_display_sequence=>60
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_result clob;',
'begin',
'    select to_clob(replace(replace(replace(''',
'            <div class="a-CardView has-title has-badge">',
'              <div class="a-CardView-header">',
'                <div class="a-CardView-headerBody">',
'                  <h3 class="a-CardView-title">#SUBJECT#</h3>',
'                </div>',
'                <div class="a-CardView-badge #BADGE_CSS_CLASSES#" title="#BADGE_TEXT#">',
'                  <span class="a-CardView-badgeValue">#BADGE_TEXT#</span>',
'                </div>',
'              </div>',
'            </div>'',',
'           ''#SUBJECT#''          , subject          ),',
'           ''#BADGE_TEXT#''       , badge_text       ),',
'           ''#BADGE_CSS_CLASSES#'', badge_css_classes) )',
'      into l_result',
'      from table ( apex_approval.get_tasks (',
'                       p_context => ''SINGLE_TASK'',',
'                       p_task_id => :P2_TASK_ID ) );',
'',
'    return l_result;',
'exception',
'    when no_data_found then',
'        return l_result;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14584919234316602)
,p_name=>'Overview'
,p_template=>wwv_flow_imp.id(14370403510763152)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_def_name        as category,',
'       created_on           as initiated,',
'       initiator            as initiator,',
'       actual_owner         as owner,',
'       priority_level       as priority,',
'       due_on               as due,',
'       outcome',
'  from table ( apex_approval.get_tasks (',
'                   p_context => ''SINGLE_TASK'',',
'                   p_task_id => :P2_TASK_ID ) )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_TASK_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14407750478763176)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14585367238316604)
,p_query_column_id=>1
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>10
,p_column_heading=>'Category'
,p_use_as_row_header=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14585707353316608)
,p_query_column_id=>2
,p_column_alias=>'INITIATED'
,p_column_display_sequence=>20
,p_column_heading=>'Initiated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14586125379316608)
,p_query_column_id=>3
,p_column_alias=>'INITIATOR'
,p_column_display_sequence=>30
,p_column_heading=>'Initiator'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14586522036316609)
,p_query_column_id=>4
,p_column_alias=>'OWNER'
,p_column_display_sequence=>40
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14586934035316614)
,p_query_column_id=>5
,p_column_alias=>'PRIORITY'
,p_column_display_sequence=>50
,p_column_heading=>'Priority'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14587371628316614)
,p_query_column_id=>6
,p_column_alias=>'DUE'
,p_column_display_sequence=>60
,p_column_heading=>'Due'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14587701050316615)
,p_query_column_id=>7
,p_column_alias=>'OUTCOME'
,p_column_display_sequence=>70
,p_column_heading=>'Outcome'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14588117497316615)
,p_name=>'Details'
,p_template=>wwv_flow_imp.id(14340885102763139)
,p_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_label,',
'       param_value',
'  from apex_task_parameters',
' where task_id = :P2_TASK_ID',
'   and is_visible = ''Y'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_TASK_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14409738124763177)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14588582723316615)
,p_query_column_id=>1
,p_column_alias=>'PARAM_LABEL'
,p_column_display_sequence=>10
,p_column_heading=>'Param Label'
,p_use_as_row_header=>'Y'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14588920713316615)
,p_query_column_id=>2
,p_column_alias=>'PARAM_VALUE'
,p_column_display_sequence=>20
,p_column_heading=>'Param Value'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14603686841316632)
,p_plug_name=>'Edit Parameters'
,p_parent_plug_id=>wwv_flow_imp.id(14588117497316615)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_EDIT_PARAMETERS_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>180
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_params )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14589322279316616)
,p_plug_name=>'Edit Task'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(14334865496763136)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14594146855316619)
,p_plug_name=>'Delegate'
,p_parent_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_DELEGATE_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>100
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_delegate )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14595317225316623)
,p_plug_name=>'Priority'
,p_parent_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_PRIORITY_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>110
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_priority )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14596891009316627)
,p_plug_name=>'Due'
,p_parent_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_DUE_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>120
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_due_date )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14598075349316629)
,p_plug_name=>'Request Information'
,p_parent_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_REQUEST_INFORMATION_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>130
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_request_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14599269726316629)
,p_plug_name=>'Submit Information'
,p_parent_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_SUBMIT_INFORMATION_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>140
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_submit_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14600481107316630)
,p_plug_name=>'Invite Participant'
,p_parent_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_INVITE_PARTICIPANT_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>150
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_add_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14601624681316631)
,p_plug_name=>'Remove Participant'
,p_parent_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_REMOVE_PARTICIPANT_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>160
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_remove_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14602899908316631)
,p_plug_name=>'Cancel Task'
,p_parent_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_CANCEL_TASK_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(14393141294763168)
,p_plug_display_sequence=>170
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Do you really want to cancel this task?</p>',
'<p>This will mark the task as no longer needed.</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_cancel )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14605215250316632)
,p_name=>'Comments'
,p_template=>wwv_flow_imp.id(14340885102763139)
,p_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat:t-Report--hideNoPagination'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_string.get_initials(created_by) as user_icon,',
'       ''u-color-''||ora_hash(created_by,45)  as icon_modifier,',
'       created_by                           as user_name,',
'       text                                 as comment_text,',
'       created_on                           as comment_date,',
'       null                                 as comment_modifiers,',
'       null                                 as actions,',
'       null                                 as attribute_1,',
'       null                                 as attribute_2,',
'       null                                 as attribute_3,',
'       null                                 as attribute_4,',
'       case when task_id != :P2_TASK_ID',
'           then ''u-warning''',
'           else null',
'       end                                  as column_css_class',
'  from apex_task_comments',
' where :P2_ALL_COMMENTS = ''N'' and task_id = :P2_TASK_ID',
'    or :P2_ALL_COMMENTS = ''Y'' and task_id in ( ',
'                       select task_id ',
'                         from apex_tasks',
'                      connect by prior previous_task_id = task_id',
'                        start with task_id = :P2_TASK_ID )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_TASK_ID,P2_ALL_COMMENTS'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14402769314763174)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14605669134316633)
,p_query_column_id=>1
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>10
,p_column_heading=>'User Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14606027555316633)
,p_query_column_id=>2
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>20
,p_column_heading=>'Icon Modifier'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14606487616316633)
,p_query_column_id=>3
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'User Name'
,p_use_as_row_header=>'Y'
,p_column_html_expression=>'<span style="text-transform:lowercase">#USER_NAME#</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14606819624316636)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>40
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_column_css_class=>'#COLUMN_CSS_CLASS#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14607265831316637)
,p_query_column_id=>5
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'Y'
,p_column_format=>'SINCE'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14607629294316637)
,p_query_column_id=>6
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>60
,p_column_heading=>'Comment Modifiers'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14608046456316637)
,p_query_column_id=>7
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>70
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14608494263316637)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>80
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14608861526316638)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>90
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14609270489316638)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>100
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14609632889316638)
,p_query_column_id=>11
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>110
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14610031147316638)
,p_query_column_id=>12
,p_column_alias=>'COLUMN_CSS_CLASS'
,p_column_display_sequence=>120
,p_column_heading=>'Column Css Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14611691242316640)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14345427109763141)
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14612469675316640)
,p_name=>'History'
,p_parent_plug_id=>wwv_flow_imp.id(14611691242316640)
,p_template=>wwv_flow_imp.id(14345427109763141)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_type,',
'       event_timestamp,',
'       event_creator,',
'       display_msg',
'  from table ( apex_approval.get_task_history (',
'                   p_task_id     => :P2_TASK_ID,',
'                   p_include_all => :P2_ALL_HISTORY ) )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_TASK_ID,P2_ALL_HISTORY'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14405161139763175)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14612810251316641)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Event'
,p_use_as_row_header=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14613207633316642)
,p_query_column_id=>2
,p_column_alias=>'EVENT_TIMESTAMP'
,p_column_display_sequence=>20
,p_column_heading=>'Time '
,p_use_as_row_header=>'Y'
,p_column_format=>'SINCE'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14613606436316642)
,p_query_column_id=>3
,p_column_alias=>'EVENT_CREATOR'
,p_column_display_sequence=>30
,p_column_heading=>'User'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14614001850316642)
,p_query_column_id=>4
,p_column_alias=>'DISPLAY_MSG'
,p_column_display_sequence=>40
,p_column_heading=>'Message'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14614429428316642)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(14334865496763136)
,p_plug_display_sequence=>210
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14611239391316640)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14605215250316632)
,p_button_name=>'ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Add Comment'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14614879002316643)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14614429428316642)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14615277447316643)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14614429428316642)
,p_button_name=>'CLAIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim Task'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_claim )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14615605397316643)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14614429428316642)
,p_button_name=>'REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14451846865763209)
,p_button_image_alt=>'Reject'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_reject )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14616090119316644)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14614429428316642)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14451846865763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_approve )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14594993356316623)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14594146855316619)
,p_button_name=>'DELEGATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delegate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14596417375316627)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14595317225316623)
,p_button_name=>'SET_PRIORITY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Priority'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14597679020316628)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14596891009316627)
,p_button_name=>'SET_DUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14598819466316629)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14598075349316629)
,p_button_name=>'REQUEST_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Information'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14600083818316630)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14599269726316629)
,p_button_name=>'SUBMIT_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14601207763316630)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14600481107316630)
,p_button_name=>'INVITE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14602458864316631)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14601624681316631)
,p_button_name=>'REMOVE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14603201466316631)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14602899908316631)
,p_button_name=>'CANCEL_TASK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'u-danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14604843710316632)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14603686841316632)
,p_button_name=>'UPDATE_PARAMETER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14589798472316616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'RELEASE'
,p_button_static_id=>'RELEASE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Release'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_release )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14590165218316617)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'OPEN_DELEGATE_DIALOG'
,p_button_static_id=>'OPEN_DELEGATE_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Delegate'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_delegate )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14590550710316617)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'OPEN_PRIORITY_DIALOG'
,p_button_static_id=>'OPEN_PRIORITY_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Change Priority'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_priority )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14590975829316617)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'OPEN_DUE_DIALOG'
,p_button_static_id=>'OPEN_DUE_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_due_date )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14591302079316618)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'OPEN_REQUEST_INFORMATION_DIALOG'
,p_button_static_id=>'OPEN_REQUEST_INFORMATION_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Request Information'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_request_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14591745539316618)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'OPEN_SUBMIT_INFORMATION_DIALOG'
,p_button_static_id=>'OPEN_SUBMIT_INFORMATION_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Submit Information'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_submit_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14592175194316618)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'OPEN_INVITE_PARTICIPANT_DIALOG'
,p_button_static_id=>'OPEN_INVITE_PARTICIPANT_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_add_owner )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14592537724316618)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'OPEN_REMOVE_PARTICIPANT_DIALOG'
,p_button_static_id=>'OPEN_REMOVE_PARTICIPANT_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_remove_owner )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14592902923316619)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'OPEN_CANCEL_TASK_DIALOG'
,p_button_static_id=>'OPEN_CANCEL_TASK_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_cancel )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14593317798316619)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(14589322279316616)
,p_button_name=>'RENEW'
,p_button_static_id=>'RENEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Renew Task'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_renew )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14593759894316619)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(14588117497316615)
,p_button_name=>'OPEN_EDIT_PARAMETERS_DIALOG'
,p_button_static_id=>'OPEN_EDIT_PARAMETERS_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14451707323763209)
,p_button_image_alt=>'Edit'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_params )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14637330235316666)
,p_branch_name=>'Reload Dialog'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.::P2_TASK_ID:&P2_TASK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14583788332316600)
,p_name=>'P2_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14584161389316601)
,p_name=>'P2_SUCCESS_MESSAGE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14594588508316622)
,p_name=>'P2_NEW_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14594146855316619)
,p_prompt=>'New Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_task_delegates ( p_task_id => :P2_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14449274205763203)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14595750415316623)
,p_name=>'P2_NEW_PRIORITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14595317225316623)
,p_prompt=>'New Priority'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select priority',
'  from apex_tasks',
' where task_id = :P2_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_lov_priority )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14449274205763203)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14597210369316628)
,p_name=>'P2_NEW_DUE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14596891009316627)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Due Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(due_on, ''YYYY-MM-DD HH24:MI'')',
'  from apex_tasks',
' where task_id = :P2_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14449274205763203)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'INLINE'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER:CLEAR-BUTTON'
,p_attribute_13=>'VISIBLE'
,p_attribute_14=>'5'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14598420291316629)
,p_name=>'P2_REQUEST_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14598075349316629)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14449274205763203)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14599631204316630)
,p_name=>'P2_SUBMIT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14599269726316629)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14449274205763203)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14600812250316630)
,p_name=>'P2_NEW_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14600481107316630)
,p_prompt=>'New Potential Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(14450535479763204)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14602022005316631)
,p_name=>'P2_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14601624681316631)
,p_prompt=>'Potential Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_task_delegates ( p_task_id => :P2_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14449274205763203)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14604015382316632)
,p_name=>'P2_PARAMETER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14603686841316632)
,p_prompt=>'Parameter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_label,',
'       param_static_id',
'  from apex_task_parameters',
' where task_id = :P2_TASK_ID',
'   and is_updatable = ''Y'''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14449274205763203)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14604492567316632)
,p_name=>'P2_NEW_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14603686841316632)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(14450535479763204)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14610476651316639)
,p_name=>'P2_ALL_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14605215250316632)
,p_prompt=>'Include comments from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P2_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(14449046411763203)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14610829156316639)
,p_name=>'P2_COMMENT_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14605215250316632)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(14449274205763203)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14612030855316640)
,p_name=>'P2_ALL_HISTORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14611691242316640)
,p_prompt=>'Include history from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P2_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(14449046411763203)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-sm:margin-left-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14630174056316659)
,p_validation_name=>'New Potential Owner'
,p_validation_sequence=>10
,p_validation=>'P2_NEW_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(14601207763316630)
,p_associated_item=>wwv_flow_imp.id(14600812250316630)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14630552765316662)
,p_validation_name=>'New Value'
,p_validation_sequence=>20
,p_validation=>'P2_NEW_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new parameter value'
,p_when_button_pressed=>wwv_flow_imp.id(14604843710316632)
,p_associated_item=>wwv_flow_imp.id(14604492567316632)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14616412767316644)
,p_name=>'Delegate'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14590165218316617)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14616822212316649)
,p_event_id=>wwv_flow_imp.id(14616412767316644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14594146855316619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14624577617316656)
,p_name=>'Refresh - Comments'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_ALL_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14624959320316656)
,p_event_id=>wwv_flow_imp.id(14624577617316656)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14605215250316632)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14617327669316653)
,p_name=>'Change Priority'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14590550710316617)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14617781069316653)
,p_event_id=>wwv_flow_imp.id(14617327669316653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14595317225316623)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14625434867316657)
,p_name=>'Refresh - History'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_ALL_HISTORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14625881544316657)
,p_event_id=>wwv_flow_imp.id(14625434867316657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14612469675316640)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14618274878316653)
,p_name=>'Change Due Date'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14590975829316617)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14618697488316653)
,p_event_id=>wwv_flow_imp.id(14618274878316653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14596891009316627)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14619185587316654)
,p_name=>'Request Information'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14591302079316618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14619513778316654)
,p_event_id=>wwv_flow_imp.id(14619185587316654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14598075349316629)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14620078836316654)
,p_name=>'Submit Information'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14591745539316618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14620407798316654)
,p_event_id=>wwv_flow_imp.id(14620078836316654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14599269726316629)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14620947473316654)
,p_name=>'Invite Participant'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14592175194316618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14621398508316655)
,p_event_id=>wwv_flow_imp.id(14620947473316654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14600481107316630)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14621813577316655)
,p_name=>'Remove Participant'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14592537724316618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14622259074316655)
,p_event_id=>wwv_flow_imp.id(14621813577316655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14601624681316631)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14622703638316655)
,p_name=>'Open Cancel Task Dialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14592902923316619)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14623163563316656)
,p_event_id=>wwv_flow_imp.id(14622703638316655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14602899908316631)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14623687727316656)
,p_name=>'Edit Parameters'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14593759894316619)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14624002253316656)
,p_event_id=>wwv_flow_imp.id(14623687727316656)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14603686841316632)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14626366569316657)
,p_name=>'Add Comment'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14611239391316640)
,p_condition_element=>'P2_COMMENT_TEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14626799176316657)
,p_event_id=>wwv_flow_imp.id(14626366569316657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.add_task_comment(',
'    p_task_id => :P2_TASK_ID,',
'    p_text    => :P2_COMMENT_TEXT);'))
,p_attribute_02=>'P2_TASK_ID,P2_COMMENT_TEXT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14627240037316658)
,p_event_id=>wwv_flow_imp.id(14626366569316657)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14605215250316632)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14627741155316658)
,p_event_id=>wwv_flow_imp.id(14626366569316657)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_COMMENT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14628269592316658)
,p_event_id=>wwv_flow_imp.id(14626366569316657)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_COMMENT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14628734525316659)
,p_event_id=>wwv_flow_imp.id(14626366569316657)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14612469675316640)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14629219330316659)
,p_name=>'Cancel'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14614879002316643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14629699978316659)
,p_event_id=>wwv_flow_imp.id(14629219330316659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14630926241316662)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Claim'
,p_attribute_01=>'CLAIM_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14615277447316643)
,p_internal_uid=>14630926241316662
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14631306992316663)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Approve'
,p_attribute_01=>'APPROVE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14616090119316644)
,p_process_success_message=>'Task approved'
,p_internal_uid=>14631306992316663
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14631737816316663)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Reject'
,p_attribute_01=>'REJECT_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14615605397316643)
,p_process_success_message=>'Task rejected'
,p_internal_uid=>14631737816316663
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14632133342316663)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Release'
,p_attribute_01=>'RELEASE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14589798472316616)
,p_process_success_message=>'Task released - can now be claimed by others'
,p_internal_uid=>14632133342316663
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14632599458316664)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Delegate'
,p_attribute_01=>'DELEGATE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_NEW_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14594993356316623)
,p_process_success_message=>'Task delegated to &P2_NEW_OWNER!HTML.'
,p_internal_uid=>14632599458316664
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14632964633316664)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Priority'
,p_attribute_01=>'SET_TASK_PRIORITY'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_05=>'P2_NEW_PRIORITY'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14596417375316627)
,p_process_success_message=>'Task priority changed'
,p_internal_uid=>14632964633316664
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14633373951316664)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Due Date'
,p_attribute_01=>'SET_DUE_DATE'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_06=>'P2_NEW_DUE_DATE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14597679020316628)
,p_process_success_message=>'Task due date updated'
,p_internal_uid=>14633373951316664
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14633701541316664)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Request Information'
,p_attribute_01=>'REQUEST_INFO'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_03=>'&P2_REQUEST_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14598819466316629)
,p_process_success_message=>'Information requested'
,p_internal_uid=>14633701541316664
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14634101393316664)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Submit Information'
,p_attribute_01=>'SUBMIT_INFO'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_03=>'&P2_SUBMIT_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14600083818316630)
,p_process_success_message=>'Information submitted'
,p_internal_uid=>14634101393316664
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14634532249316665)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Invite Participant'
,p_attribute_01=>'ADD_TASK_POTENTIAL_OWNER'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_NEW_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14601207763316630)
,p_process_success_message=>'Participant &P2_NEW_POTENTIAL_OWNER!HTML. added to task as potential owner'
,p_internal_uid=>14634532249316665
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14634994326316665)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Remove Participant'
,p_attribute_01=>'REMOVE_POTENTIAL_OWNER'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14602458864316631)
,p_process_success_message=>'Participant &P2_POTENTIAL_OWNER!HTML. removed from task.'
,p_internal_uid=>14634994326316665
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14635323556316665)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Cancel Task'
,p_attribute_01=>'CANCEL_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14603201466316631)
,p_process_success_message=>'Task canceled'
,p_internal_uid=>14635323556316665
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14635769063316665)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Renew Task'
,p_attribute_01=>'RENEW_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_09=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14593317798316619)
,p_process_success_message=>'Task renewed'
,p_internal_uid=>14635769063316665
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14636113003316665)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Update Parameter'
,p_attribute_01=>'SET_TASK_PARAMS'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_10=>'P2_PARAMETER'
,p_attribute_11=>'P2_NEW_VALUE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14604843710316632)
,p_process_success_message=>'Parameter updated'
,p_internal_uid=>14636113003316665
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14636558767316666)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Success Message'
,p_process_sql_clob=>':P2_SUCCESS_MESSAGE := apex_application.g_print_success_message;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>14636558767316666
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14636938914316666)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLAIM,SET_PRIORITY,SET_DUE,INVITE_PARTICIPANT,REMOVE_PARTICIPANT,RENEW,UPDATE_PARAMETER,SAVE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_process_success_message=>'&P2_SUCCESS_MESSAGE.'
,p_internal_uid=>14636938914316666
);
wwv_flow_imp.component_end;
end;
/
