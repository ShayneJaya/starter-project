prompt --application/shared_components/plugins/region_type/boilderplate_region
begin
--   Manifest
--     PLUGIN: BOILDERPLATE_REGION
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
 p_id=>wwv_flow_imp.id(39179807403256052)
,p_plugin_type=>'REGION TYPE'
,p_name=>'BOILDERPLATE_REGION'
,p_display_name=>'Boilderplate-Region'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','BOILDERPLATE_REGION'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render ',
'( p_item    in              apex_plugin.t_item',
', p_plugin  in              apex_plugin.t_plugin',
', p_param   in              apex_plugin.t_item_render_param',
', p_result  in out nocopy   apex_plugin.t_item_render_result',
')',
'as',
'    l_attribute1 p_item.attribute_01%type := p_item.attribute_01;',
'    l_attribute1 p_item.attribute_02%type := p_item.attribute_02;',
'    l_attribute1 p_item.attribute_03%type := p_item.attribute_03;',
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
'            type="text"',
'            >'');',
' ',
'end render;'))
,p_api_version=>1
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
