prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>216
,p_default_id_offset=>61078688106175745
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(95914030144118460)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>44318193867484
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(96216141464119514)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(96217587297119526)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(96228698163119567)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Costco Sl Search'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(96243148926119626)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Costco Sl Report'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(96275606590123344)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(99636514487117829)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'OEHR_INSTEAD_OF_VIEW'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9,10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(99723159920184364)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'TEST'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(99784742064316124)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'MD_Stacked'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(99822449612510219)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'TEST SQL ITEMS'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(112609979963425413)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'MD HEADER'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp.component_end;
end;
/
