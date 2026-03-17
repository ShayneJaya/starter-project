prompt --application/shared_components/workflow/task_definitions/test
begin
--   Manifest
--     TASK_DEF: test
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(87483416172279726)
,p_name=>'test'
,p_static_id=>'TEST'
,p_subject=>'test'
,p_task_type=>'APPROVAL'
,p_priority=>3
,p_initiator_can_complete=>false
);
wwv_flow_imp.component_end;
end;
/
