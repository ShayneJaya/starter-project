prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 181
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(33096547841814160)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(32856664565813918)
,p_default_dialog_template=>wwv_flow_imp.id(32851451026813915)
,p_error_template=>wwv_flow_imp.id(32841410765813910)
,p_printer_friendly_template=>wwv_flow_imp.id(32856664565813918)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(32841410765813910)
,p_default_button_template=>wwv_flow_imp.id(33006525109813997)
,p_default_region_template=>wwv_flow_imp.id(32933336533813955)
,p_default_chart_template=>wwv_flow_imp.id(32933336533813955)
,p_default_form_template=>wwv_flow_imp.id(32933336533813955)
,p_default_reportr_template=>wwv_flow_imp.id(32933336533813955)
,p_default_tabform_template=>wwv_flow_imp.id(32933336533813955)
,p_default_wizard_template=>wwv_flow_imp.id(32933336533813955)
,p_default_menur_template=>wwv_flow_imp.id(32945791020813960)
,p_default_listr_template=>wwv_flow_imp.id(32933336533813955)
,p_default_irr_template=>wwv_flow_imp.id(32923568116813951)
,p_default_report_template=>wwv_flow_imp.id(32971576445813973)
,p_default_label_template=>wwv_flow_imp.id(33004073220813993)
,p_default_menu_template=>wwv_flow_imp.id(33008182163813998)
,p_default_calendar_template=>wwv_flow_imp.id(33008223736813999)
,p_default_list_template=>wwv_flow_imp.id(32987929268813983)
,p_default_nav_list_template=>wwv_flow_imp.id(32999747894813990)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(32999747894813990)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(32994316539813987)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(32869573136813927)
,p_default_dialogr_template=>wwv_flow_imp.id(32866742071813925)
,p_default_option_label=>wwv_flow_imp.id(33004073220813993)
,p_default_required_label=>wwv_flow_imp.id(33005388465813994)
,p_default_navbar_list_template=>wwv_flow_imp.id(32993958056813987)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>68
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
