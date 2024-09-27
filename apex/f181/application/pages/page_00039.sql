prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_name=>'Drag and Drop'
,p_alias=>'DRAG-AND-DROP'
,p_step_title=>'Drag and Drop'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var getTime = function (isoString) {',
'  return new Date(isoString).getTime();',
'};',
'',
'var getString = function (time) {',
'  return new Date(time).toISOString();',
'};',
'',
'function convertToMMDDYYYY(isoDate) {',
'  const dateInstance = new Date(isoDate);',
'  if (isNaN(dateInstance.getTime())) return null; // checks if the date is valid before converting',
'  return dateInstance.toLocaleDateString("en-US", {',
'    year: "numeric",',
'    month: "2-digit",',
'    day: "2-digit",',
'  });',
'}',
'',
'function sortChartRows(chartRows) {',
'  return chartRows.sort((a, b) => (a.resource < b.resource ? -1 : 1));',
'}',
'',
'function findTaskById(chartRows, taskId, rowId) {',
'  const targetRow = chartRows.find((row) => row.id === rowId);',
'  return targetRow ? targetRow.tasks.find((task) => task.id === taskId) : null;',
'}',
'',
'/* function updateTaskRow(chartData, task, originalRowId, newRowId) {',
'  const originalRow = chartData.find(row => row.id === originalRowId);',
'  const newRow = chartData.find(row => row.id === newRowId);',
'',
'  if (!originalRow || !newRow) {',
'    console.error("Row not found."); // if either row doesn''t exist, log an error',
'    return;',
'  }',
'',
'  // removes the task from the original row''s list of tasks',
'  originalRow.tasks = originalRow.tasks.filter(t => t.id !== task.id);',
'',
'  // adds the task to the new row''s list of tasks',
'  newRow.tasks.push(task);',
'} */',
'',
'function saveTaskDates(taskId, startDate, endDate, actionType) {',
'  apex.server.process(',
'    "SAVE_TASK_DATES",',
'    {',
'      x01: taskId,',
'      x02: startDate,',
'      x03: endDate,',
'    },',
'    {',
'      success: function (response) {',
'        let message = "";',
'        if (actionType === "move") {',
'          // for moving, display the new start and end dates',
'          message = `Task moved. New Start: ${startDate}, New End: ${endDate}`;',
'        } else if (actionType === "resize") {',
'          // for resizing, calculate and display the new task duration in days',
'          const duration = calculateDuration(startDate, endDate);',
'          message = `Task resized. New Duration: ${duration} days`;',
'        }',
'        console.log("Task dates saved successfully.");',
'        apex.message.showPageSuccess(message); // shows a success message to the user',
'      },',
'      error: function (jqXHR, textStatus, errorThrown) {',
'        console.error("Error saving task dates: " + textStatus); // logs an error if something goes wrong',
'      },',
'    }',
'  );',
'}',
'',
'function calculateDuration(startDate, endDate) {',
'  const start = new Date(startDate);',
'  const end = new Date(endDate);',
'  // we subtract the start date from the end date to get the difference in milliseconds, then convert that to days',
'  const duration = Math.ceil((end - start) / (1000 * 60 * 60 * 24));',
'  return duration;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21633330244598100)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21634091627598102)
,p_plug_name=>'Drag and Drop'
,p_region_name=>'myGantt'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(21634412820598103)
,p_region_id=>wwv_flow_imp.id(21634091627598102)
,p_chart_type=>'gantt'
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_tooltip_rendered=>'Y'
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_horizontal_grid=>'visible'
,p_vertical_grid=>'visible'
,p_row_axis_rendered=>'on'
,p_gantt_axis_position=>'top'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'  $.extend(options, {',
'    dnd: { move: { tasks: "enabled" } }, // enables dragging and dropping of tasks',
'    taskDefaults: { resizable: "enabled", height: 30 }, // allows tasks to be resized and sets their height',
'    rowDefaults: { height: 40 } // sets the height of each row',
'  });',
'  var currDate = new Date();',
'  var referenceLine = [ { value: currDate.toISOString() } ];',
'  options.referenceObjects = referenceLine;',
'  console.log("options",options); ',
'  return options; // returns the updated options',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(21636189612598109)
,p_chart_id=>wwv_flow_imp.id(21634412820598103)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_name    task_name,',
'       id           task_id,',
'       start_date   task_start_date,',
'       end_date     task_end_date,',
'       decode(status,''Closed'',1,''Open'',0.6,''On-Hold'',0.1,''Pending'',0) status,',
'       (select min(start_date) -5 from eba_demo_chart_tasks) gantt_start_date,',
'       (select max(end_date) from eba_demo_chart_tasks)  gantt_end_date',
'from eba_demo_chart_tasks',
'where task_name like ''I%s''',
'order by id asc'))
,p_series_type=>'gantt'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gantt_start_date_source=>'DB_COLUMN'
,p_gantt_start_date_column=>'GANTT_START_DATE'
,p_gantt_end_date_source=>'DB_COLUMN'
,p_gantt_end_date_column=>'GANTT_END_DATE'
,p_gantt_task_id=>'TASK_ID'
,p_gantt_task_name=>'TASK_NAME'
,p_gantt_task_start_date=>'TASK_START_DATE'
,p_gantt_task_end_date=>'TASK_END_DATE'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(21634996879598105)
,p_chart_id=>wwv_flow_imp.id(21634412820598103)
,p_axis=>'major'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_axis_scale=>'months'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(21635547731598108)
,p_chart_id=>wwv_flow_imp.id(21634412820598103)
,p_axis=>'minor'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_axis_scale=>'days'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21564195413427536)
,p_name=>'Gantt ojMove'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21634091627598102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'ojmove'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21564224234427537)
,p_event_id=>wwv_flow_imp.id(21564195413427536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ganttEvent = this.data;',
'const taskList = ganttEvent.taskContexts; // contains details of tasks involved in the move',
'const initialTaskContext = taskList[0]; // focus on the first task being dragged',
'',
'const timeDifference =',
'  getTime(ganttEvent.start) - getTime(initialTaskContext.data.start);',
'',
'const chartData = $("#myGantt_jet")',
'  .ojGantt("option", "rows")',
'  .sort((a, b) => (a.resource < b.resource ? -1 : 1));',
'',
'const originalRow = chartData.find(',
'  (row) => row.id === initialTaskContext.rowData.id',
');',
'',
'const movingTask = originalRow.tasks.find(',
'  (task) => task.id === initialTaskContext.data.id',
');',
'',
'if (initialTaskContext.rowData.id !== ganttEvent.rowContext.rowData.id) {',
'  // prevent moving tasks to a different row',
'  console.log("Task cannot be moved to a different row.");',
'  apex.message.alert("Task cannot be moved to a different row.");',
'  $("#myGantt_jet").ojGantt("refresh");',
'  return; // stop further processing',
'}',
'',
'movingTask.start = getString(',
'  getTime(initialTaskContext.data.start) + timeDifference',
');',
'movingTask.end = getString(',
'  getTime(initialTaskContext.data.end) + timeDifference',
');',
'',
'const formattedStart = convertToMMDDYYYY(movingTask.start);',
'const formattedEnd = convertToMMDDYYYY(movingTask.end);',
'',
'saveTaskDates(initialTaskContext.data.id, formattedStart, formattedEnd, "move");',
'',
'chartData[',
'  chartData.map((row) => row.id).indexOf(initialTaskContext.rowData.id)',
'].tasks.splice(',
'  originalRow.tasks.map((task) => task.id).indexOf(initialTaskContext.data.id),',
'  1',
');',
'',
'chartData[',
'  chartData.map((row) => row.id).indexOf(ganttEvent.rowContext.rowData.id)',
'].tasks.push(movingTask);',
'',
'$("#myGantt_jet").ojGantt(',
'  "option",',
'  "rows",',
'  chartData.sort((a, b) => (a.resource < b.resource ? -1 : 1))',
');',
'$("#myGantt_jet").ojGantt("refresh");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21564373602427538)
,p_name=>'Gantt ojResize'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21634091627598102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'ojresize'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21564463441427539)
,p_event_id=>wwv_flow_imp.id(21564373602427538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ganttInteraction = this.data;',
'const taskList = ganttInteraction.taskContexts; ',
'const initialTaskContext = taskList[0]; // focus on the task being resized',
'',
'const timeChangeStart =',
'  getTime(ganttInteraction.start) - getTime(initialTaskContext.data.start);',
'const timeChangeEnd =',
'  getTime(ganttInteraction.end) - getTime(initialTaskContext.data.end);',
'',
'  const originalStartTime = getTime(initialTaskContext.data.start);',
'const originalEndTime = getTime(initialTaskContext.data.end);',
'',
'const updatedStartTime = Math.min(',
'  originalEndTime,',
'  originalStartTime + timeChangeStart',
');',
'const updatedEndTime = Math.max(',
'  originalStartTime,',
'  originalEndTime + timeChangeEnd',
');',
'',
'const chartRows = $("#myGantt_jet")',
'  .ojGantt("option", "rows")',
'  .sort((a, b) => (a.resource < b.resource ? -1 : 1));',
'',
'',
'const targetRow = findTaskById(chartRows, initialTaskContext.data.id, initialTaskContext.rowData.id);',
'if (targetRow) {',
'  targetRow.start = getString(updatedStartTime);',
'  targetRow.end = getString(updatedEndTime);',
'  console.log("Task ID:", initialTaskContext.data.id);',
'  console.log("Updated Start Time:", targetRow.start);',
'  console.log("Updated End Time:", targetRow.end);',
'',
'  // Convert dates and save',
'  const formattedStart = convertToMMDDYYYY(targetRow.start);',
'  const formattedEnd = convertToMMDDYYYY(targetRow.end);',
'',
'  saveTaskDates(initialTaskContext.data.id, formattedStart, formattedEnd, "resize");',
'',
'}',
'',
'$("#myGantt_jet").ojGantt(',
'  "option",',
'  "rows",',
'  chartRows.sort((a, b) => (a.resource < b.resource ? -1 : 1))',
');',
'',
'$("#myGantt_jet").ojGantt("refresh");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21564584094427540)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_TASK_DATES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_task_id eba_demo_chart_tasks.id%TYPE := apex_application.g_x01; ',
'    v_start_date DATE := TO_DATE(apex_application.g_x02, ''MM/DD/YYYY'');',
'    v_end_date DATE := TO_DATE(apex_application.g_x03, ''MM/DD/YYYY'');    ',
'BEGIN',
'    UPDATE eba_demo_chart_tasks',
'    SET start_date = v_start_date,',
'        end_date = v_end_date',
'    WHERE id = v_task_id;',
'     htp.p(''{"status":"success"}'');',
'   EXCEPTION',
'        WHEN OTHERS THEN',
'            apex_debug.message(''Error updating task dates: '' || SQLERRM);',
'            htp.p(''{"status":"error", "message":"'' || SQLERRM || ''"}'');',
'    END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>21564584094427540
);
wwv_flow_imp.component_end;
end;
/
