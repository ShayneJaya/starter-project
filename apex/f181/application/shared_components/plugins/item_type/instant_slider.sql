prompt --application/shared_components/plugins/item_type/instant_slider
begin
--   Manifest
--     PLUGIN: INSTANT_SLIDER
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(39180762777269125)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'INSTANT_SLIDER'
,p_display_name=>'Instant Slider'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','INSTANT_SLIDER'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render ',
'( p_item    in              apex_plugin.t_item',
', p_plugin  in              apex_plugin.t_plugin',
', p_param   in              apex_plugin.t_item_render_param',
', p_result  in out nocopy   apex_plugin.t_item_render_result',
')',
'as',
'    --atributes',
'    l_min  p_item.attribute_01%type := apex_escape.html(p_item.attribute_01);',
'    l_max  p_item.attribute_02%type := apex_escape.html(p_item.attribute_02);',
'    l_step p_item.attribute_03%type := apex_escape.html(p_item.attribute_03);',
'',
'    c_escaped_value constant varchar2(32767) := apex_escape.html(p_param.value);',
'    c_escaped_name  constant varchar2(32767) := apex_escape.html(p_item.name);',
'',
'',
'begin',
'',
'    --debug',
'    if apex_application.g_debug',
'    then',
'        apex_plugin_util.debug_item_render',
'        ( p_plugin  =>  p_plugin',
'        , p_item    =>  p_item',
'        , p_param   =>  p_param',
'        );',
'    end if;',
'',
'    htp.p(''<input',
'            class=""',
'            style="width:100%;"',
'            id=" ''  || c_escaped_name   || '' " ',
'            name=" ''  || c_escaped_name   || '' "',
'            value=" ''  || c_escaped_value   || '' "',
'            type="range"',
'            min="   '' || l_min   || '' "',
'            max="   '' || l_max   || '' "',
'            step="  '' || l_step  || '' "',
'            >'');',
' ',
'end render;'))
,p_api_version=>2
,p_render_function=>'render'
,p_standard_attributes=>'VISIBLE:FORM_ELEMENT:SESSION_STATE:SOURCE'
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(39182800365308498)
,p_plugin_id=>wwv_flow_imp.id(39180762777269125)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Min Value'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(39183565356312147)
,p_plugin_id=>wwv_flow_imp.id(39180762777269125)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Max Value'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(39184199472313591)
,p_plugin_id=>wwv_flow_imp.id(39180762777269125)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Step Value'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
