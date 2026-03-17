prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'iFrame Embed'
,p_alias=>'IFRAME-EMBED'
,p_step_title=>'iFrame Embed'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100172448686995601)
,p_plug_name=>'iFrame'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="border:1px solid #CCC; width:1000px; height:1000px;">',
'  <iframe',
'    src="https://snicholspa.github.io/tips_tricks_howtos/autonomous_database/select_ai_rag/#Task4:CreateSelectAIRAGProfile"',
'    style="width:100%; height:1000px; border:none;"',
'  >',
'    Your browser does not support iframes.',
'  </iframe>',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100172532740995602)
,p_plug_name=>'Instructions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'  <meta charset="UTF-8">',
'  <title>Embed an Iframe in APEX</title>',
'</head>',
'<body>',
'  <p>',
'    This example shows how to embed an iframe into your APEX page. ',
'    Make sure the URL you use allows embedding. ',
unistr('    If you see \201CRefused to connect,\201D the URL may be incorrect or the endpoint is blocking iframe embedding.'),
'  </p>',
'</body>',
'</html>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
