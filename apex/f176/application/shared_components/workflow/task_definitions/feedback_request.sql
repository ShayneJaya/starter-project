prompt --application/shared_components/workflow/task_definitions/feedback_request
begin
--   Manifest
--     TASK_DEF: Feedback Request
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>176
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(14735203401831855)
,p_name=>'Feedback Request'
,p_static_id=>'FEEDBACK_REQUEST'
,p_subject=>'Feedback for Consultation on &SCHEDULE.'
,p_task_type=>'ACTION'
,p_priority=>3
,p_expiration_policy=>'NONE'
,p_max_renewal_count=>3
,p_details_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4:P4_TASK_ID:&TASK_ID.'
,p_actions_sql_query=>'select * from appointment where booking_id = :APEX$TASK_PK'
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(14790366848840346)
,p_task_def_id=>wwv_flow_imp.id(14735203401831855)
,p_label=>'Booking Id'
,p_static_id=>'BOOKING_ID'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(14789935934840346)
,p_task_def_id=>wwv_flow_imp.id(14735203401831855)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>'&PATIENT_USERNAME.'
);
wwv_flow_imp.component_end;
end;
/
