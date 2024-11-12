prompt --application/shared_components/workflow/task_definitions/appointment_request
begin
--   Manifest
--     TASK_DEF: Appointment Request
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
 p_id=>wwv_flow_imp.id(14583105773314767)
,p_name=>'Appointment Request'
,p_static_id=>'APPOINTMENT_REQUEST'
,p_subject=>'Appointment for &PATIENT_NAME. on &APPOINTMENT_DATE.'
,p_task_type=>'APPROVAL'
,p_priority=>3
,p_expiration_policy=>'NONE'
,p_max_renewal_count=>3
,p_details_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_TASK_ID:&TASK_ID.'
,p_actions_sql_query=>'select * from doctor where dno = :APEX$TASK_PK'
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(14638655426353889)
,p_task_def_id=>wwv_flow_imp.id(14583105773314767)
,p_label=>'Appointment Date'
,p_static_id=>'APPOINTMENT_DATE'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(14639010555353890)
,p_task_def_id=>wwv_flow_imp.id(14583105773314767)
,p_label=>'Consultation For'
,p_static_id=>'PATIENT_DESC'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(14639440812353890)
,p_task_def_id=>wwv_flow_imp.id(14583105773314767)
,p_label=>'Patient Name'
,p_static_id=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(14638227629353887)
,p_task_def_id=>wwv_flow_imp.id(14583105773314767)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':DNAME'
);
wwv_flow_imp.component_end;
end;
/
