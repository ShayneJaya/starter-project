prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Doctor Appointments Easy'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14576035421763455)
,p_plug_name=>'Doctor Appointments Easy'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14355200491763145)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14985346762306038)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14311998879763122)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Hospital Workflow Steps</title>',
'    <style>',
'        body {',
'            font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            color: #333;',
'            margin: 0;',
'            padding: 0;',
'            line-height: 1.6;',
'        }',
'',
'        .container {',
'            max-width: 800px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0px 2px 6px rgba(0,0,0,0.1);',
'            border-radius: 8px;',
'        }',
'',
'        h1 {',
'            color: #333;',
'            text-align: center;',
'            margin-bottom: 20px;',
'        }',
'',
'        ol {',
'            padding-left: 20px;',
'        }',
'',
'        li {',
'            margin-bottom: 10px;',
'        }',
'',
'        p {',
'            margin-bottom: 10px;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="container">',
'        <h1>Hospital Workflow Steps</h1>',
'        <ol>',
'            <li>Log in as STEVE (Hospital Staff).</li>',
'            <li>Click on "New Appointment" to book a new appointment for Rajesh.</li>',
'            <li>Select "Psychiatric" from the drop-down menu for the problem.</li>',
'            <li>Select the available doctor, ANACHATT.</li>',
'            <li>Fill in Rajesh''s age and then click on "Book Appointment."</li>',
'            <li>After booking, you should see a success message indicating the booking was successful.</li>',
'            <li>Click on "Monitor Appointment Workflows."</li>',
'            <li>Click on the entry above to open the Workflow Details Popup.</li>',
'            <li>Log in as ANACHATT (the doctor) and click on "Doctor Tasks."</li>',
'            <li>Approve the appointment request.</li>',
'            <li>Log back in as STEVE and monitor the workflow progress.</li>',
'            <li>Observe that the workflow has progressed to the "Raise Invoice Request" activity.</li>',
'            <li>Log in as RAJESH and complete the invoice confirmation task.</li>',
'            <li>Log back in as STEVE and monitor the workflow again.</li>',
'            <li>Observe that the workflow has completed the "Raise Invoice Request" and "Update Appointment Activities."</li>',
'            <li>Navigate to the next page and observe the workflow is waiting for the "Wait Before Requesting Feedback" activity to complete.</li>',
'            <li>Wait for the appointment time to elapse.</li>',
'            <li>Once the appointment time has elapsed, the system requests feedback.</li>',
'            <li>Log back in as RAJESH and complete the feedback form.</li>',
'            <li>Log back in as STEVE and observe that the workflow is now completed.</li>',
'            <li>Check the inbox of the patient''s email for a Thank You Email.</li>',
'            <li>Log back in as RAJESH and check "Patient Appointments And Feedbacks" to confirm the feedback was entered successfully in the system.</li>',
'        </ol>',
'    </div>',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
