prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 216
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>216
,p_default_id_offset=>61078688106175745
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(96180412591119334)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(96179423589119323)
,p_default_page_template=>wwv_flow_imp.id(95941617975118546)
,p_default_dialog_template=>wwv_flow_imp.id(95936745176118536)
,p_error_template=>wwv_flow_imp.id(95930114870118520)
,p_printer_friendly_template=>wwv_flow_imp.id(95941617975118546)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(95930114870118520)
,p_default_button_template=>wwv_flow_imp.id(96090461078118937)
,p_default_region_template=>wwv_flow_imp.id(96016828465118736)
,p_default_chart_template=>wwv_flow_imp.id(96016828465118736)
,p_default_form_template=>wwv_flow_imp.id(96016828465118736)
,p_default_reportr_template=>wwv_flow_imp.id(96016828465118736)
,p_default_tabform_template=>wwv_flow_imp.id(96016828465118736)
,p_default_wizard_template=>wwv_flow_imp.id(96016828465118736)
,p_default_menur_template=>wwv_flow_imp.id(96029204467118767)
,p_default_listr_template=>wwv_flow_imp.id(96016828465118736)
,p_default_irr_template=>wwv_flow_imp.id(96007049176118711)
,p_default_report_template=>wwv_flow_imp.id(96053009136118829)
,p_default_label_template=>wwv_flow_imp.id(96087987511118927)
,p_default_menu_template=>wwv_flow_imp.id(96092037249118941)
,p_default_calendar_template=>wwv_flow_imp.id(96092151409118943)
,p_default_list_template=>wwv_flow_imp.id(96077870477118897)
,p_default_nav_list_template=>wwv_flow_imp.id(96086675862118921)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(96086675862118921)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(96084854518118916)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(95973173649118631)
,p_default_dialogr_template=>wwv_flow_imp.id(95950230614118573)
,p_default_option_label=>wwv_flow_imp.id(96087987511118927)
,p_default_required_label=>wwv_flow_imp.id(96089206904118931)
,p_default_navbar_list_template=>wwv_flow_imp.id(96084429837118915)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
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
