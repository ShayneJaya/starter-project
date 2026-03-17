prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 224
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>224
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(48915461236568932)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(48914646550568921)
,p_default_page_template=>wwv_flow_imp.id(48676634743568006)
,p_default_dialog_template=>wwv_flow_imp.id(48671743553567992)
,p_error_template=>wwv_flow_imp.id(48665115057567971)
,p_printer_friendly_template=>wwv_flow_imp.id(48676634743568006)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(48665115057567971)
,p_default_button_template=>wwv_flow_imp.id(48825489476568446)
,p_default_region_template=>wwv_flow_imp.id(48751823437568212)
,p_default_chart_template=>wwv_flow_imp.id(48751823437568212)
,p_default_form_template=>wwv_flow_imp.id(48751823437568212)
,p_default_reportr_template=>wwv_flow_imp.id(48751823437568212)
,p_default_tabform_template=>wwv_flow_imp.id(48751823437568212)
,p_default_wizard_template=>wwv_flow_imp.id(48751823437568212)
,p_default_menur_template=>wwv_flow_imp.id(48764228894568248)
,p_default_listr_template=>wwv_flow_imp.id(48751823437568212)
,p_default_irr_template=>wwv_flow_imp.id(48742058958568185)
,p_default_report_template=>wwv_flow_imp.id(48788053401568315)
,p_default_label_template=>wwv_flow_imp.id(48822911084568435)
,p_default_menu_template=>wwv_flow_imp.id(48827019942568452)
,p_default_calendar_template=>wwv_flow_imp.id(48827148847568454)
,p_default_list_template=>wwv_flow_imp.id(48812870672568398)
,p_default_nav_list_template=>wwv_flow_imp.id(48821605398568428)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(48821605398568428)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(48819844512568422)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(48708147492568103)
,p_default_dialogr_template=>wwv_flow_imp.id(48685212533568037)
,p_default_option_label=>wwv_flow_imp.id(48822911084568435)
,p_default_required_label=>wwv_flow_imp.id(48824218467568441)
,p_default_navbar_list_template=>wwv_flow_imp.id(48819493713568421)
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
