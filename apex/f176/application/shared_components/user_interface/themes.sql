prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 176
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>176
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(14541776439763381)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(14286390105763100)
,p_default_dialog_template=>wwv_flow_imp.id(14303788607763108)
,p_error_template=>wwv_flow_imp.id(14301171775763107)
,p_printer_friendly_template=>wwv_flow_imp.id(14286390105763100)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(14301171775763107)
,p_default_button_template=>wwv_flow_imp.id(14451707323763209)
,p_default_region_template=>wwv_flow_imp.id(14370403510763152)
,p_default_chart_template=>wwv_flow_imp.id(14370403510763152)
,p_default_form_template=>wwv_flow_imp.id(14370403510763152)
,p_default_reportr_template=>wwv_flow_imp.id(14370403510763152)
,p_default_tabform_template=>wwv_flow_imp.id(14370403510763152)
,p_default_wizard_template=>wwv_flow_imp.id(14370403510763152)
,p_default_menur_template=>wwv_flow_imp.id(14382896350763163)
,p_default_listr_template=>wwv_flow_imp.id(14370403510763152)
,p_default_irr_template=>wwv_flow_imp.id(14363370269763149)
,p_default_report_template=>wwv_flow_imp.id(14405161139763175)
,p_default_label_template=>wwv_flow_imp.id(14449274205763203)
,p_default_menu_template=>wwv_flow_imp.id(14453390771763210)
,p_default_calendar_template=>wwv_flow_imp.id(14453463838763211)
,p_default_list_template=>wwv_flow_imp.id(14439188443763195)
,p_default_nav_list_template=>wwv_flow_imp.id(14447936302763202)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(14447936302763202)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(14446109070763200)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(14334865496763136)
,p_default_dialogr_template=>wwv_flow_imp.id(14311998879763122)
,p_default_option_label=>wwv_flow_imp.id(14449274205763203)
,p_default_required_label=>wwv_flow_imp.id(14450535479763204)
,p_default_navbar_list_template=>wwv_flow_imp.id(14445766447763200)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
