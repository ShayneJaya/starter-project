prompt --application/shared_components/workflow/workflows/doctor_appointment
begin
--   Manifest
--     WORKFLOW: Doctor Appointment
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>176
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_workflow(
 p_id=>wwv_flow_imp.id(11961734146645823)
,p_name=>'Doctor Appointment'
,p_static_id=>'DOC_APPT'
,p_title=>'Appointment Workflow for patient &PATIENT_NAME.'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11962477939645830)
,p_workflow_id=>wwv_flow_imp.id(11961734146645823)
,p_label=>'Patient Name'
,p_static_id=>'PATIENT_NAME'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_value=>'Y'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11962555310645831)
,p_workflow_id=>wwv_flow_imp.id(11961734146645823)
,p_label=>'Patient Age'
,p_static_id=>'PATIENT_AGE'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_is_required=>true
,p_value=>'Y'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11962645543645832)
,p_workflow_id=>wwv_flow_imp.id(11961734146645823)
,p_label=>'Request Date'
,p_static_id=>'REQUEST_DATE'
,p_direction=>'IN'
,p_data_type=>'TIMESTAMP_TZ'
,p_is_required=>true
,p_value=>'Y'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11962774518645833)
,p_workflow_id=>wwv_flow_imp.id(11961734146645823)
,p_label=>'Problem'
,p_static_id=>'PROBLEM'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_value=>'Y'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11962891674645834)
,p_workflow_id=>wwv_flow_imp.id(11961734146645823)
,p_label=>'Patient Email'
,p_static_id=>'PATIENT_EMAIL'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
);
wwv_flow_imp_shared.create_workflow_version(
 p_id=>wwv_flow_imp.id(11961839901645824)
,p_workflow_id=>wwv_flow_imp.id(11961734146645823)
,p_version=>'1.0'
,p_state=>'DEVELOPMENT'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTOR'
,p_pk_column=>'DNAME'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11962907839645835)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_label=>'Booking ID'
,p_static_id=>'BOOKING_ID'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11963079525645836)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_label=>'Availability'
,p_static_id=>'AVAILABILITY'
,p_direction=>'VARIABLE'
,p_data_type=>'BOOLEAN'
,p_value_type=>'NULL'
,p_format_mask=>'AVAILABLE,BUSY'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11963154012645837)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_label=>'Fees'
,p_static_id=>'FEE'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'STATIC'
,p_value=>'0'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(11964449753645850)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_label=>'Approver'
,p_static_id=>'APPROVER'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(14836115601102201)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_label=>'TaskOutcome'
,p_static_id=>'TASK_OUTCOME'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(11961965266645825)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Start'
,p_static_id=>'New'
,p_display_sequence=>10
,p_activity_type=>'NATIVE_WORKFLOW_START'
,p_diagram=>'{"position":{"x":330,"y":910},"z":1}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(11962181026645827)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Close Request'
,p_static_id=>'New_2'
,p_display_sequence=>30
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'TERMINATED'
,p_diagram=>'{"position":{"x":-240,"y":1130},"z":3}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(11963244000645838)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Compute Doctor Availability'
,p_static_id=>'New_1'
,p_display_sequence=>40
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'EBA_DEMO_WF_DOC_APT'
,p_attribute_04=>'CHECK_AVAILABILITY'
,p_diagram=>'{"position":{"x":250,"y":1020},"z":5}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11963424668645840)
,p_workflow_activity_id=>wwv_flow_imp.id(11963244000645838)
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'AVAILABILITY'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11963538649645841)
,p_workflow_activity_id=>wwv_flow_imp.id(11963244000645838)
,p_name=>'p_doctor_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'&DNO.'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11963626521645842)
,p_workflow_activity_id=>wwv_flow_imp.id(11963244000645838)
,p_name=>'p_request_date'
,p_direction=>'IN'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(11963920295645845)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Doctor Available?'
,p_static_id=>'New_3'
,p_display_sequence=>50
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'AVAILABILITY'
,p_attribute_14=>'BUSY'
,p_diagram=>'{"position":{"x":250,"y":1130},"z":7}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(11964154433645847)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'No Appointment Mail '
,p_static_id=>'New_4'
,p_display_sequence=>60
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&PATIENT_EMAIL.'
,p_attribute_06=>'Appointment Canceled'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hello &PATIENT_NAME. ,',
'',
'We regret to inform you that your appointment request for &REQUEST_DATE. could not be confirmed due to unavailability of the doctor/non-confirmation of invoice.',
'The requested appointment has been canceled.',
'Please try again on later dates.',
'We regret the inconvenience caused.',
'',
'Regards,',
'Management Team',
'ABC Hospital'))
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Appointment Cancellation Notification</title>',
'    <style>',
'        /* Reset styles */',
'        body,',
'        html {',
'            margin: 0;',
'            padding: 0;',
'            font-family: Arial, sans-serif;',
'            line-height: 1.6;',
'            background-image: url(''https://officesnapshots.com/wp-content/uploads/2018/10/oracle-offices-austin-19.jpg'');',
'            background-size: cover;',
'            background-repeat: no-repeat;',
'        }',
'',
'        /* Container styles */',
'        .container {',
'            max-width: 600px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: rgba(255, 255, 255, 0.8);',
'            border-radius: 8px;',
'            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);',
'        }',
'',
'        /* Header styles */',
'        .header {',
'            text-align: center;',
'            margin-bottom: 30px;',
'        }',
'',
'        .header h1 {',
'            font-size: 36px;',
'            color: #FF0000; /* Red color */',
'            font-weight: bold;',
'        }',
'',
'        /* Content styles */',
'        .content {',
'            background-color: rgba(255, 255, 255, 0.8);',
'            padding: 20px;',
'            border-radius: 8px;',
'        }',
'',
'        /* Button styles */',
'        .button {',
'            display: inline-block;',
'            padding: 12px 24px;',
'            background-color: #FF0000; /* Red color */',
'            color: #fff;',
'            text-decoration: none;',
'            border-radius: 5px;',
'            transition: background-color 0.3s ease;',
'            border: none;',
'            cursor: pointer;',
'            font-size: 16px;',
'            font-weight: bold;',
'            text-transform: uppercase;',
'        }',
'',
'        .button:hover {',
'            background-color: #cc0000; /* Darker shade of red on hover */',
'        }',
'',
'        /* Footer styles */',
'        .footer {',
'            text-align: center;',
'            margin-top: 30px;',
'        }',
'',
'        .footer p {',
'            color: #666;',
'            font-size: 14px;',
'        }',
'',
'        /* Text styles */',
'        p {',
'            line-height: 1.6;',
'        }',
'    </style>',
'</head>',
'',
'<body>',
'    <div class="container">',
'        <div class="header">',
'            <h1>Appointment Cancellation Notification</h1>',
'        </div>',
'        <div class="content">',
'            <p>Hello &PATIENT_NAME.,</p>',
'            <p>We regret to inform you that your appointment request for &REQUEST_DATE. could not be confirmed due to unavailability of the doctor/non-confirmation of invoice. The requested appointment has been canceled. Please try again on later dat'
||'es. We regret the inconvenience caused.</p>',
'            <a href="https://your-application.com/login" class="button">Login to Application</a>',
'            <p>Regards,<br> Management Team<br> ABC Hospital</p>',
'        </div>',
'    </div>',
'</body>',
'',
'</html>',
''))
,p_attribute_10=>'Y'
,p_diagram=>'{"position":{"x":-140,"y":1130},"z":9}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(11964318603645849)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Raise Appointment Request'
,p_static_id=>'New_5'
,p_display_sequence=>70
,p_activity_type=>'NATIVE_CREATE_TASK'
,p_attribute_01=>wwv_flow_imp.id(14583105773314767)
,p_attribute_05=>'DNO'
,p_attribute_08=>'TASK_OUTCOME'
,p_attribute_09=>'APPROVER'
,p_diagram=>'{"position":{"x":250,"y":1260},"z":11}'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(14836212228102202)
,p_workflow_activity_id=>wwv_flow_imp.id(11964318603645849)
,p_task_def_param_id=>wwv_flow_imp.id(14638655426353889)
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(14836343110102203)
,p_workflow_activity_id=>wwv_flow_imp.id(11964318603645849)
,p_task_def_param_id=>wwv_flow_imp.id(14639010555353890)
,p_value_type=>'ITEM'
,p_value=>'PROBLEM'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(14836413433102204)
,p_workflow_activity_id=>wwv_flow_imp.id(11964318603645849)
,p_task_def_param_id=>wwv_flow_imp.id(14639440812353890)
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14836859955102208)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Appointment Approved?'
,p_static_id=>'New_7'
,p_display_sequence=>90
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'CHECK_WF_VARIABLE'
,p_attribute_10=>'TASK_OUTCOME'
,p_diagram=>'{"position":{"x":-50,"y":1390},"z":15}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14837142050102211)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Confirm Appointment'
,p_static_id=>'New_8'
,p_display_sequence=>100
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'EBA_DEMO_WF_DOC_APT'
,p_attribute_04=>'CONFIRM_APPOINTMENT'
,p_diagram=>'{"position":{"x":-50,"y":1530},"z":18}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14837241305102212)
,p_workflow_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'BOOKING_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14837366737102213)
,p_workflow_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_name=>'p_doctor_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'&DNO.'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14837468698102214)
,p_workflow_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_name=>'p_request_date'
,p_direction=>'IN'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14837567472102215)
,p_workflow_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_name=>'p_doctor_email'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'STATIC'
,p_value=>'&DOC_EMAIL.'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14837648006102216)
,p_workflow_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_name=>'p_patient_name'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14837760573102217)
,p_workflow_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_name=>'p_patient_email'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>60
,p_value_type=>'ITEM'
,p_value=>'PATIENT_EMAIL'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14837866798102218)
,p_workflow_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_name=>'p_workflow_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>70
,p_value_type=>'STATIC'
,p_value=>'&APEX$WORKFLOW_ID.'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14838229876102222)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Completed Appointment '
,p_static_id=>'New_6'
,p_display_sequence=>110
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":650,"y":2370},"z":20}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14838491553102224)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Free Consultation?'
,p_static_id=>'New_9'
,p_display_sequence=>120
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'FREE'
,p_attribute_14=>'1'
,p_diagram=>'{"position":{"x":-50,"y":1670},"z":22}'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(14838738609102227)
,p_activity_id=>wwv_flow_imp.id(14838491553102224)
,p_label=>'Free'
,p_static_id=>'FREE'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'FUNCTION_BODY'
,p_value_language=>'PLSQL'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_free number := 1;',
'begin',
'    select 1 into l_free from dual',
'     where exists (select patient_username',
'      from appointment',
'     where patient_username = :PATIENT_NAME',
'       and  doctor_no = :DNO',
'       and  schedule >= to_timestamp_tz(:REQUEST_DATE,''DD-MON-YYYY HH24:MI:SS'') - 7',
'       and status = ''PAID'');',
'   return 1;',
'exception',
'    when others then',
'    return 0;',
'end;'))
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14838822491102228)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Update Fees'
,p_static_id=>'New_10'
,p_display_sequence=>130
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'EBA_DEMO_WF_DOC_APT'
,p_attribute_04=>'UPDATE_FEES'
,p_diagram=>'{"position":{"x":-50,"y":1820},"z":24}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14838998315102229)
,p_workflow_activity_id=>wwv_flow_imp.id(14838822491102228)
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'FEE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14839067179102230)
,p_workflow_activity_id=>wwv_flow_imp.id(14838822491102228)
,p_name=>'p_doctor_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'&DNO.'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14839180336102231)
,p_workflow_activity_id=>wwv_flow_imp.id(14838822491102228)
,p_name=>'p_request_date'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14839224066102232)
,p_workflow_activity_id=>wwv_flow_imp.id(14838822491102228)
,p_name=>'p_booking_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'ITEM'
,p_value=>'BOOKING_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14839380518102233)
,p_workflow_activity_id=>wwv_flow_imp.id(14838822491102228)
,p_name=>'p_patient_name'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14839457162102234)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Send Invoice Email To Patient'
,p_static_id=>'New_11'
,p_display_sequence=>140
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&PATIENT_EMAIL.'
,p_attribute_06=>'Appointment Confirmed!'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hello &PATIENT_NAME. ,',
'Your appointment for &REQUEST_DATE. with Dr. &DNAME. is confirmed, The consultation charge is Rs &FEE. .',
'An invoice has been raised for this appointment. Kindly make the required payment and confirm the same at the earliest.',
'Please note that no payment will be required if this is a followup consultation.',
'',
'Regards,',
'Management Team',
'ABC Hospital'))
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Appointment Confirmation Notification</title>',
'    <style>',
'        /* Reset styles */',
'        body,',
'        html {',
'            margin: 0;',
'            padding: 0;',
'            font-family: Arial, sans-serif;',
'            line-height: 1.6;',
'            background-image: url(''https://officesnapshots.com/wp-content/uploads/2018/10/oracle-offices-austin-19.jpg'');',
'            background-size: cover;',
'            background-repeat: no-repeat;',
'        }',
'',
'        /* Container styles */',
'        .container {',
'            max-width: 600px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: rgba(255, 255, 255, 0.8);',
'            border-radius: 8px;',
'            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);',
'        }',
'',
'        /* Header styles */',
'        .header {',
'            text-align: center;',
'            margin-bottom: 30px;',
'        }',
'',
'        .header h1 {',
'            font-size: 36px;',
'            color: #FF0000; /* Red color */',
'            font-weight: bold;',
'        }',
'',
'        /* Content styles */',
'        .content {',
'            background-color: rgba(255, 255, 255, 0.8);',
'            padding: 20px;',
'            border-radius: 8px;',
'        }',
'',
'        /* Button styles */',
'        .button {',
'            display: inline-block;',
'            padding: 12px 24px;',
'            background-color: #FF0000; /* Red color */',
'            color: #fff;',
'            text-decoration: none;',
'            border-radius: 5px;',
'            transition: background-color 0.3s ease;',
'            border: none;',
'            cursor: pointer;',
'            font-size: 16px;',
'            font-weight: bold;',
'            text-transform: uppercase;',
'        }',
'',
'        .button:hover {',
'            background-color: #cc0000; /* Darker shade of red on hover */',
'        }',
'',
'        /* Footer styles */',
'        .footer {',
'            text-align: center;',
'            margin-top: 30px;',
'        }',
'',
'        .footer p {',
'            color: #666;',
'            font-size: 14px;',
'        }',
'',
'        /* Text styles */',
'        p {',
'            line-height: 1.6;',
'        }',
'    </style>',
'</head>',
'',
'<body>',
'    <div class="container">',
'        <div class="header">',
'            <h1>Appointment Confirmation Notification</h1>',
'        </div>',
'        <div class="content">',
'            <p>Hello &PATIENT_NAME.,</p>',
'            <p>Your appointment for &REQUEST_DATE. with Dr. &DNAME. is confirmed. The consultation charge is $&FEE.. An invoice has been raised for this appointment. Kindly make the required payment and confirm the same at the earliest. Please note t'
||'hat no payment will be required if this is a follow-up consultation.</p>',
'            <a href="https://your-application.com/login" class="button">Login to Application</a>',
'            <p>Regards,<br> Management Team<br> ABC Hospital</p>',
'        </div>',
'    </div>',
'</body>',
'',
'</html>',
''))
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":270,"y":1670},"z":25}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14839921596102239)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Raise Invoice Request'
,p_static_id=>'New_12'
,p_display_sequence=>150
,p_activity_type=>'NATIVE_CREATE_TASK'
,p_attribute_01=>wwv_flow_imp.id(14678980095812286)
,p_attribute_05=>'BOOKING_ID'
,p_due_on_type=>'INTERVAL'
,p_due_on_value=>'PT30M'
,p_diagram=>'{"position":{"x":270,"y":1810},"z":30}'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(14840067922102240)
,p_workflow_activity_id=>wwv_flow_imp.id(14839921596102239)
,p_task_def_param_id=>wwv_flow_imp.id(14734175602828320)
,p_value_type=>'STATIC'
,p_value=>'&DNAME.'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(14840104059102241)
,p_workflow_activity_id=>wwv_flow_imp.id(14839921596102239)
,p_task_def_param_id=>wwv_flow_imp.id(14734575478828320)
,p_value_type=>'ITEM'
,p_value=>'FEE'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(14840284725102242)
,p_workflow_activity_id=>wwv_flow_imp.id(14839921596102239)
,p_task_def_param_id=>wwv_flow_imp.id(14734973723828320)
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14840594497102245)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Update Appointment'
,p_static_id=>'New_13'
,p_display_sequence=>160
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'EBA_DEMO_WF_DOC_APT'
,p_attribute_04=>'UPDATE_APPOINTMENT'
,p_diagram=>'{"position":{"x":560,"y":1810},"z":33}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14840796894102247)
,p_workflow_activity_id=>wwv_flow_imp.id(14840594497102245)
,p_name=>'p_booking_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'BOOKING_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14840827899102248)
,p_workflow_activity_id=>wwv_flow_imp.id(14840594497102245)
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'PAID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(14840988653102249)
,p_workflow_activity_id=>wwv_flow_imp.id(14840594497102245)
,p_name=>'p_fee'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>30
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14841094360102250)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Wait before Requesting Feedback'
,p_static_id=>'New_14'
,p_display_sequence=>170
,p_activity_type=>'NATIVE_WORKFLOW_WAIT'
,p_attribute_01=>'SQL_QUERY'
,p_attribute_02=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select schedule',
'  from appointment',
' where booking_id = :BOOKING_ID'))
,p_diagram=>'{"position":{"x":650,"y":1980},"z":35}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14864563645335602)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Request for Feedback'
,p_static_id=>'New_15'
,p_display_sequence=>180
,p_activity_type=>'NATIVE_CREATE_TASK'
,p_attribute_01=>wwv_flow_imp.id(14735203401831855)
,p_attribute_05=>'BOOKING_ID'
,p_due_on_type=>'INTERVAL'
,p_due_on_value=>'PT24H'
,p_diagram=>'{"position":{"x":570,"y":2140},"z":37}'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(14864722643335604)
,p_workflow_activity_id=>wwv_flow_imp.id(14864563645335602)
,p_task_def_param_id=>wwv_flow_imp.id(14790366848840346)
,p_value_type=>'ITEM'
,p_value=>'BOOKING_ID'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14864865125335605)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'End Without Feedback'
,p_static_id=>'New_16'
,p_display_sequence=>190
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":380,"y":2140},"z":39}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(14865001335335607)
,p_workflow_version_id=>wwv_flow_imp.id(11961839901645824)
,p_name=>'Send Thank You Note To Patient'
,p_static_id=>'New_17'
,p_display_sequence=>200
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'& PATIENT_EMAIL.'
,p_attribute_06=>'Thank You!'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Dear &PATIENT_NAME. ,',
'',
'Thank you for your feedback regarding your recent appointment with Dr. &DNAME.',
'We hope to keep serving you in the future!',
'',
'Regards,',
'Management Team,',
'ABC Hospital Pvt Ltd.'))
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Feedback Acknowledgment</title>',
'    <style>',
'        /* Reset styles */',
'        body,',
'        html {',
'            margin: 0;',
'            padding: 0;',
'            font-family: Arial, sans-serif;',
'            line-height: 1.6;',
'            background-image: url(''https://officesnapshots.com/wp-content/uploads/2018/10/oracle-offices-austin-19.jpg'');',
'            background-size: cover;',
'            background-repeat: no-repeat;',
'        }',
'',
'        /* Container styles */',
'        .container {',
'            max-width: 600px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: rgba(255, 255, 255, 0.8);',
'            border-radius: 8px;',
'            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);',
'        }',
'',
'        /* Header styles */',
'        .header {',
'            text-align: center;',
'            margin-bottom: 30px;',
'        }',
'',
'        .header h1 {',
'            font-size: 36px;',
'            color: #FF0000; /* Red color */',
'            font-weight: bold;',
'        }',
'',
'        /* Content styles */',
'        .content {',
'            background-color: rgba(255, 255, 255, 0.8);',
'            padding: 20px;',
'            border-radius: 8px;',
'        }',
'',
'        /* Button styles */',
'        .button {',
'            display: inline-block;',
'            padding: 12px 24px;',
'            background-color: #FF0000; /* Red color */',
'            color: #fff;',
'            text-decoration: none;',
'            border-radius: 5px;',
'            transition: background-color 0.3s ease;',
'            border: none;',
'            cursor: pointer;',
'            font-size: 16px;',
'            font-weight: bold;',
'            text-transform: uppercase;',
'        }',
'',
'        .button:hover {',
'            background-color: #cc0000; /* Darker shade of red on hover */',
'        }',
'',
'        /* Footer styles */',
'        .footer {',
'            text-align: center;',
'            margin-top: 30px;',
'        }',
'',
'        .footer p {',
'            color: #666;',
'            font-size: 14px;',
'        }',
'',
'        /* Text styles */',
'        p {',
'            line-height: 1.6;',
'        }',
'    </style>',
'</head>',
'',
'<body>',
'    <div class="container">',
'        <div class="header">',
'            <h1>Feedback Acknowledgment</h1>',
'        </div>',
'        <div class="content">',
'            <p>Dear &PATIENT_NAME. ,</p>',
'            <p>Thank you for your feedback regarding your recent appointment with Dr. &DNAME. We hope to keep serving you in the future!</p>',
'            <a href="https://your-application.com/login" class="button">Login to Application</a>',
'            <p>Regards,<br> Management Team,<br> ABC Hospital Pvt Ltd.</p>',
'        </div>',
'    </div>',
'</body>',
'',
'</html>',
''))
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":570,"y":2260},"z":41}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(11962267407645828)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(11961965266645825)
,p_to_activity_id=>wwv_flow_imp.id(11963244000645838)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":4,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(11963364903645839)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(11963244000645838)
,p_to_activity_id=>wwv_flow_imp.id(11963920295645845)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":6,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(11964023622645846)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(11963920295645845)
,p_to_activity_id=>wwv_flow_imp.id(11964154433645847)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{},"target":{},"vertices":[],"router":{"name":"orthogonal","args":{"padding":20}},"z":8,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14836598928102205)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(11963920295645845)
,p_to_activity_id=>wwv_flow_imp.id(11964318603645849)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":12,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(11964232385645848)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(11964154433645847)
,p_to_activity_id=>wwv_flow_imp.id(11962181026645827)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":10,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14836900722102209)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(11964318603645849)
,p_to_activity_id=>wwv_flow_imp.id(14836859955102208)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"95.455%","dy":"50%","rotate":true}},"vertices":[{"x":360,"y":1420}],"z":16,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14837048611102210)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(14836859955102208)
,p_to_activity_id=>wwv_flow_imp.id(11964154433645847)
,p_condition_type=>'EQUALS'
,p_condition_expr1=>'REJECTED'
,p_diagram=>'{"source":{"name":"top","args":{"dx":0,"dy":10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"83.333%","rotate":true}},"vertices":[],"z":17,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14838135304102221)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(14836859955102208)
,p_to_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_condition_type=>'EQUALS'
,p_condition_expr1=>'APPROVED'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":19,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14838560681102225)
,p_name=>'New_1'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(14837142050102211)
,p_to_activity_id=>wwv_flow_imp.id(14838491553102224)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{},"vertices":[],"z":23,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14839508759102235)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(14838491553102224)
,p_to_activity_id=>wwv_flow_imp.id(14838822491102228)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":26,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14839675571102236)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(14838491553102224)
,p_to_activity_id=>wwv_flow_imp.id(14839457162102234)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"0%","dy":"50%","rotate":true}},"vertices":[],"z":27,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14839822111102238)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(14838822491102228)
,p_to_activity_id=>wwv_flow_imp.id(14839921596102239)
,p_diagram=>'{"source":{"args":{"dx":-10,"dy":0},"name":"right"},"target":{"name":"topLeft","args":{"dx":"4.545%","dy":"66.667%","rotate":true}},"vertices":[],"z":29,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14839717479102237)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(14839457162102234)
,p_to_activity_id=>wwv_flow_imp.id(14839921596102239)
,p_diagram=>'{"source":{"args":{"dx":0,"dy":-10},"name":"bottom"},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":28,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14840320852102243)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(14839921596102239)
,p_to_activity_id=>wwv_flow_imp.id(14840594497102245)
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"9.091%","dy":"50%","rotate":true}},"vertices":[],"z":31,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14840481772102244)
,p_name=>'Invoice Incomplete'
,p_transition_type=>'TIMEOUT'
,p_from_activity_id=>wwv_flow_imp.id(14839921596102239)
,p_to_activity_id=>wwv_flow_imp.id(11964154433645847)
,p_diagram=>'{"source":{},"target":{},"vertices":[{"x":380,"y":1930},{"x":-180,"y":1930},{"x":-180,"y":1220}],"z":32,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14840630469102246)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(14840594497102245)
,p_to_activity_id=>wwv_flow_imp.id(14841094360102250)
,p_diagram=>'{"source":{"name":"topLeft","args":{"dx":"54.545%","dy":"100%","rotate":true}},"target":{},"vertices":[],"z":34,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14864412175335601)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(14841094360102250)
,p_to_activity_id=>wwv_flow_imp.id(14864563645335602)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":36,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14864693515335603)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(14864563645335602)
,p_to_activity_id=>wwv_flow_imp.id(14865001335335607)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":38,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14864962386335606)
,p_name=>'No Feedback Recived'
,p_transition_type=>'TIMEOUT'
,p_from_activity_id=>wwv_flow_imp.id(14864563645335602)
,p_to_activity_id=>wwv_flow_imp.id(14864865125335605)
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"83.333%","dy":"50%","rotate":true}},"vertices":[],"z":40,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(14865144464335608)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(14865001335335607)
,p_to_activity_id=>wwv_flow_imp.id(14838229876102222)
,p_diagram=>'{"source":{},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":42,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp.component_end;
end;
/
