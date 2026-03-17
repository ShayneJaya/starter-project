prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>247
,p_default_id_offset=>0
,p_default_owner=>'DEV_USER'
);
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'One Collapsible Region Open'
,p_alias=>'ONE-COLLAPSIBLE-REGION-OPEN'
,p_step_title=>'One Collapsible Region Open'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100166771159002445)
,p_plug_name=>'Region 1'
,p_region_name=>'RGN1'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100166868874002446)
,p_plug_name=>'Region 2'
,p_region_name=>'RGN2'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38100792065023333)
,p_name=>'Only 1 Region Open Selector'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#RGN1 .a-Collapsible-icon, #RGN2 .a-Collapsible-icon'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38101203985023331)
,p_event_id=>wwv_flow_imp.id(38100792065023333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// `this.triggeringElement` is the exact <span class="a-Collapsible-icon"> that was clicked.',
'console.log(''Triggered!'');',
'var clickedIcon = $(this.triggeringElement);',
'',
'// Find the containing region (<div id="RGN1" ...> or <div id="RGN2" ...>):',
'var clickedRegion = clickedIcon.closest(''.t-Region'');',
'',
'',
'// Identify which region that is, and pick the OTHER region:',
'var otherRegion = ( clickedRegion.attr(''id'') === ''RGN1'' ) ',
'                  ? $(''#RGN2'') ',
'                  : $(''#RGN1'');',
'',
'// If the clicked region was currently collapsed, then a click will open it:',
'if ( clickedRegion.hasClass(''is-collapsed'') ) {',
'  // If the other region is currently open (no is-collapsed), close it:',
'  if ( ! otherRegion.hasClass(''is-collapsed'') ) {',
'    otherRegion.find(''.a-Collapsible-icon'').click();',
'  }',
'}',
''))
);
wwv_flow_imp.component_end;
end;
/
