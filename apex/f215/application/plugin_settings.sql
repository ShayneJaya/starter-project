prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>215
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1469121510871802)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>44557264859767
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(45999429703375269)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>44234918800911
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(45999703861375270)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>44234918800962
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46000096181375271)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>44234918801005
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46000383762375272)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>44234918801039
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46000601755375273)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>44234918801082
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46000918451375274)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>44234918801133
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46001286012375275)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>44234918801168
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46001510308375275)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>44234918801200
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46001822622375276)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>44234918801245
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46002106615375277)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>44234918801267
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46002476912375278)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>44234918801337
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46002753696375279)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>44234918801376
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46003046734375280)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>44234918801404
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(46378492570134493)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_GRAPHVIZ'
,p_version_scn=>44237817489256
);
wwv_flow_imp.component_end;
end;
/
