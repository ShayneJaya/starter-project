prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(32830540642813891)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>41923938350763
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37822243075342947)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'APEX Quick Tips'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrow-down-right-alt'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15629734636765125)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Object Storage MultiPart Upload'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cloud-upload'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15790486135320473)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'LLM Conversation'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-ai-sparkle-enlarge'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20665280103345280)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'CUSTOMERS_TEST'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25333655680682215)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'EMP TABLE - TEST DMED'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'63,64'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39094219237624615)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10000'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19304156093611713)
,p_list_item_display_sequence=>10010
,p_list_item_link_text=>'Use Cases'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17533465940987432)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'PDF-Lib File Splitting'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(19304156093611713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19701173674025307)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Sample Stock Chart'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-ai-sparkle-generate-image'
,p_parent_list_item_id=>wwv_flow_imp.id(19304156093611713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19756522147731352)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Hack Interactive Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_parent_list_item_id=>wwv_flow_imp.id(19304156093611713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20195386052833650)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Document Understanding'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-ai-sparkle-generate-document'
,p_parent_list_item_id=>wwv_flow_imp.id(19304156093611713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21131358377167829)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Oracle Forms to APEX'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-ai-prompt'
,p_parent_list_item_id=>wwv_flow_imp.id(19304156093611713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21134539673256703)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Oracle Form to APEX FAQ'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(21131358377167829)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21554514727394292)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Drag and Drop Gantt Chart'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-area-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(19304156093611713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21632909048598098)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Drag and Drop'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-area-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(19304156093611713)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19304427504613432)
,p_list_item_display_sequence=>10020
,p_list_item_link_text=>'How To'
,p_list_item_icon=>'fa-angle-right'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18745950717774660)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'New Dynamic Content Region Examples'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(19304427504613432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18949895764164324)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Custom Form Navigation using Functions'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_parent_list_item_id=>wwv_flow_imp.id(19304427504613432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19353871805245009)
,p_list_item_display_sequence=>10030
,p_list_item_link_text=>'Custom IG Row Actions'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(19304427504613432)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24015687224110337)
,p_list_item_display_sequence=>10040
,p_list_item_link_text=>'Main Features'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24016397743115216)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Customer Interactive Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_parent_list_item_id=>wwv_flow_imp.id(24015687224110337)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'54'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24040552939295344)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'RESTful Web Services (REST APIs)'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-apex-square'
,p_parent_list_item_id=>wwv_flow_imp.id(24015687224110337)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'56'
);
wwv_flow_imp.component_end;
end;
/
