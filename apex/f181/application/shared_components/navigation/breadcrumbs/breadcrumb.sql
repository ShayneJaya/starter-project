prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(32830040333813888)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12212884302451223)
,p_short_name=>'Run Background Process'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15630689845765137)
,p_short_name=>'Object Storage MultiPart Upload'
,p_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15791347819320487)
,p_short_name=>'LLM Conversation'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17534327691987437)
,p_short_name=>'TEST FILE SPLIT'
,p_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18746849381774684)
,p_short_name=>'Dynamic Content'
,p_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18950775197164334)
,p_short_name=>'OEHR_CUSTOMER_FORM'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19340461748143053)
,p_short_name=>'Custom Interactive Grid Row Actions'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19702093913025321)
,p_short_name=>'Sample Stock Chart'
,p_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19757351438731370)
,p_short_name=>'Hack Interactive Grid'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20196110729833664)
,p_short_name=>'Document Understanding'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20666193463345300)
,p_short_name=>'CUSTOMERS_TEST'
,p_link=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21132245978167844)
,p_short_name=>'Oracle Forms to APEX'
,p_link=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21135449105256706)
,p_short_name=>'Oracle Form to APEX FAQ'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21555464391394328)
,p_short_name=>'Drag and Drop Gantt Chart'
,p_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>38
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21633867786598102)
,p_short_name=>'Drag and Drop'
,p_link=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21640626613223696)
,p_short_name=>'#17 - Using Markdown in APEX'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22757462540885732)
,p_parent_id=>wwv_flow_imp.id(37884094891196541)
,p_short_name=>'#18: Handling Time Zones in APEX'
,p_link=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22761330530310506)
,p_short_name=>'#19 - Is that really a Classic Report??'
,p_link=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22780710327266297)
,p_short_name=>'#20 How to find out which Items changed in APEX'
,p_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22783535575513253)
,p_short_name=>'#21 - Insensitive Searches'
,p_link=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>43
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22785109627646182)
,p_short_name=>'#22 - APEX Error Handling'
,p_link=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22786790637774381)
,p_short_name=>'#23 Implementing VPD across an APEX app for row level security'
,p_link=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>45
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22789143725087796)
,p_short_name=>'#24 Why isn&#x27;t my value in session state?'
,p_link=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22790416074129192)
,p_short_name=>'#25 - CSS variables in APEX'
,p_link=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22792243762172020)
,p_short_name=>'#26 - APEX Automations'
,p_link=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>49
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22793866638254722)
,p_short_name=>'#27 REST Data Synchronization, and a homage to Joel'
,p_link=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22989130601471029)
,p_short_name=>'#28: Oracle Text and Adding Relevance to Popup LOVs'
,p_link=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(24017227876115233)
,p_short_name=>'Customer Interactive Grid'
,p_link=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(24041424772295348)
,p_short_name=>'RESTful Web Services (REST APIs)'
,p_link=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(24786557741887540)
,p_short_name=>'#32 - Better Success Messages'
,p_link=>'f?p=&APP_ID.:55:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>55
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(24842782963333341)
,p_short_name=>'#33 Deploying Using APEX Supporting Objects'
,p_link=>'f?p=&APP_ID.:57:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(24844014387414354)
,p_short_name=>'#34 When Starting a New APEX Project'
,p_link=>'f?p=&APP_ID.:58:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(25340145420682245)
,p_short_name=>'EMP TABLE - TEST DMED'
,p_link=>'f?p=&APP_ID.:63:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>63
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(37825093988358427)
,p_short_name=>'#1 Managing User Preferences'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(37837378012587401)
,p_short_name=>'#2 User Interface Defaults'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(37875011612172627)
,p_short_name=>'#3 Build Options'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(37884094891196541)
,p_short_name=>'Instant Tips'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39095120053624620)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp.component_end;
end;
/
