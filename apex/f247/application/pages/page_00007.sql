prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Partial Refresh Example AJAX'
,p_alias=>'PARTIAL-REFRESH-EXAMPLE1'
,p_step_title=>'Partial Refresh Example AJAX'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33034161402887543)
,p_plug_name=>'HTML Custom Image Load'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'  <meta charset="UTF-8" />',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'  <title>Example</title>',
'',
'  <!-- Google Font -->',
'  <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet"/>',
'',
'  <!-- Heavy CSS Libraries -->',
'<!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" integrity="sha512-b+YkVKxtZiH3C/Ep7mE0povrqYJ2N2F6zXradd2bQhB4aD+mTBSJqQw9HhDNqXPN1sVXKqPKkrnwFhtK/1nE2g==" crossorigin="anonymous" referrer'
||'policy="no-referrer" />',
'  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css"/> -->',
'',
'  <style>',
'   ',
'    ',
'    header h1 {',
'      margin: 0;',
'      color: #663399;',
'      font-weight: 700;',
'    }',
'    .grid {',
'      display: grid;',
'      grid-template-columns: repeat(auto-fill,minmax(200px,1fr));',
'      gap: 1rem;',
'      padding: 2rem;',
'    }',
'    .grid img {',
'      width: 100%;',
'      display: block;',
'      border-radius: 8px;',
'      box-shadow: 0 2px 8px rgba(0,0,0,0.1);',
'    }',
'    footer {',
'      text-align: center;',
'      padding: 1rem;',
'      font-size: 0.9rem;',
'      opacity: 0.7;',
'    }',
'  </style>',
'</head>',
'<body>',
'  <header class="animate__animated animate__fadeInDown">',
'    <h1>Load Example</h1>',
'',
'  </header>',
'',
'  ',
unistr('    <!-- High\2011res Unsplash placeholders -->'),
'    <img src="https://images.unsplash.com/photo-1558386621-37b91293b289?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbXBsZXxlbnwwfHwwfHx8MA%3D%3D" alt="placeholder 1"/>',
'    <img src="https://images.unsplash.com/photo-1576086476234-1103be98f096?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2FtcGxlfGVufDB8fDB8fHww" alt="placeholder 2"/>',
'    <img src="https://images.unsplash.com/photo-1616020453784-a24fa9845b05?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c2FtcGxlfGVufDB8fDB8fHww" alt="placeholder 3"/>',
'    <img src="https://plus.unsplash.com/premium_photo-1673765123739-3862ccaeb3d6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2FtcGxlfGVufDB8fDB8fHww" alt="placeholder 4"/>',
'    <img src="https://images.unsplash.com/photo-1551456393-2ab5dbdf7747?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGN1cHxlbnwwfHwwfHx8MA%3D%3D" alt="placeholder 5"/>',
'    <img src="https://images.unsplash.com/photo-1579353977828-2a4eab540b9a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c2FtcGxlfGVufDB8fDB8fHwy" alt="placeholder 6"/>',
'',
'  <!-- Heavy JS Libraries -->',
'  <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js" integrity="sha512-..." crossorigin="anonymous"></script>',
'  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>',
'',
'  <script>',
'    // Fetch a big 100MB binary to really drag things down',
'    fetch(''https://speed.hetzner.de/100MB.bin'')',
'      .then(resp => {',
unistr('        console.log(''Started downloading 100MB test file\2026'');'),
'        return resp.blob();',
'      })',
'      .then(blob => {',
'        console.log(''Finished downloading blob of size'', blob.size);',
'      })',
'      .catch(err => console.error(''Error fetching test file:'', err));',
'',
'    // Also fetch a large JSON payload',
'    fetch(''https://jsonplaceholder.typicode.com/photos'')',
'      .then(r=>r.json())',
'      .then(data=>{',
'        console.log(''Loaded'', data.length, ''JSON items'');',
'      });',
'  </script>',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41646432044789616)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(37852675486108300)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41647984699789605)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41648743479789600)
,p_name=>'Master Records'
,p_template=>3371237801798025892
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "CUSTOMER_ID",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P7_CUSTOMER_ID'', p_values => "CUSTOMER_ID") LINK,',
'    null ICON_CLASS,',
'    null LINK_ATTR,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P7_CUSTOMER_ID,''0'') = "CUSTOMER_ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    ''Customer ID: '' || (substr("CUSTOMER_ID", 1, 50)||( case when length("CUSTOMER_ID") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    (substr("CUST_FIRST_NAME", 1, 25)||'' '' ||(substr("CUST_LAST_NAME", 1, 25))|| ( case when length("CUST_FIRST_NAME") > 50 then ''...'' else '''' end )) LIST_TEXT,',
'    null LIST_BADGE',
'from "OEHR_CUSTOMERS" x',
'where exists (',
'  select 1',
'  from "OEHR_ORDERS"',
'  where "CUSTOMER_ID" = x."CUSTOMER_ID"',
')',
'and (:P7_SEARCH is null',
'        or upper(x."CUSTOMER_ID") like ''%''||upper(:P7_SEARCH)||''%''',
'        or upper(x."CUST_FIRST_NAME") like ''%''||upper(:P7_SEARCH)||''%''',
'    ) ',
'order by "CUSTOMER_ID"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41649470299789586)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'CUSTOMER_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41649836508789583)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41650202352789582)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41650649902789581)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41651014867789580)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41651419951789579)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41651876307789578)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41652226998789577)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41652610658789576)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41653038926789575)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41653406657788983)
,p_name=>'Partial Refresh Example'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_CUSTOMERS'
,p_query_where=>'"CUSTOMER_ID" = :P7_CUSTOMER_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P7_CUSTOMER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41654055698788979)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "CUSTOMER_ID" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41654417072788978)
,p_query_column_id=>2
,p_column_alias=>'CUST_FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Cust First Name'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "CUST_FIRST_NAME" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41654885187788977)
,p_query_column_id=>3
,p_column_alias=>'CUST_LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Cust Last Name'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "CUST_LAST_NAME" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41655209738788976)
,p_query_column_id=>4
,p_column_alias=>'STREET_ADDRESS'
,p_column_display_sequence=>4
,p_column_heading=>'Street Address'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "STREET_ADDRESS" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41655651160788975)
,p_query_column_id=>5
,p_column_alias=>'POSTAL_CODE'
,p_column_display_sequence=>5
,p_column_heading=>'Postal Code'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "POSTAL_CODE" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41656069508788974)
,p_query_column_id=>6
,p_column_alias=>'CITY'
,p_column_display_sequence=>6
,p_column_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "CITY" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41656488119788973)
,p_query_column_id=>7
,p_column_alias=>'STATE_PROVINCE'
,p_column_display_sequence=>7
,p_column_heading=>'State Province'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "STATE_PROVINCE" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41656888923788972)
,p_query_column_id=>8
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Country Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "COUNTRY_ID" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41657240618788971)
,p_query_column_id=>9
,p_column_alias=>'PHONE_NUMBER'
,p_column_display_sequence=>9
,p_column_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "PHONE_NUMBER" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41657674753788970)
,p_query_column_id=>10
,p_column_alias=>'NLS_LANGUAGE'
,p_column_display_sequence=>10
,p_column_heading=>'Nls Language'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "NLS_LANGUAGE" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41658021074788969)
,p_query_column_id=>11
,p_column_alias=>'NLS_TERRITORY'
,p_column_display_sequence=>11
,p_column_heading=>'Nls Territory'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "NLS_TERRITORY" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41658482560788968)
,p_query_column_id=>12
,p_column_alias=>'CREDIT_LIMIT'
,p_column_display_sequence=>12
,p_column_heading=>'Credit Limit'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "CREDIT_LIMIT" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41658882737788967)
,p_query_column_id=>13
,p_column_alias=>'CUST_EMAIL'
,p_column_display_sequence=>13
,p_column_heading=>'Cust Email'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "CUST_EMAIL" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41659229894788966)
,p_query_column_id=>14
,p_column_alias=>'ACCOUNT_MGR_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Account Mgr Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_CUSTOMERS"',
'where "ACCOUNT_MGR_ID" is not null',
'and "CUSTOMER_ID" = :P7_CUSTOMER_ID'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41668620746788932)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_CUSTOMER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41669004857788929)
,p_name=>'OEHR_ORDERS DETAILS'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDERS'
,p_query_where=>'"CUSTOMER_ID" = :P7_CUSTOMER_ID'
,p_include_rowid_column=>false
,p_display_when_condition=>'P7_CUSTOMER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41669861353788925)
,p_query_column_id=>1
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_ORDER_ID:#ORDER_ID#'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41670208169788924)
,p_query_column_id=>2
,p_column_alias=>'ORDER_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Order Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41670634381788923)
,p_query_column_id=>3
,p_column_alias=>'ORDER_MODE'
,p_column_display_sequence=>3
,p_column_heading=>'Order Mode'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41671031670788922)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41671420627788921)
,p_query_column_id=>5
,p_column_alias=>'ORDER_STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Order Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41671874913788921)
,p_query_column_id=>6
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>6
,p_column_heading=>'Order Total'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41672270715788920)
,p_query_column_id=>7
,p_column_alias=>'SALES_REP_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Sales Rep Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41672631037788919)
,p_query_column_id=>8
,p_column_alias=>'PROMOTION_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Promotion Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41689017721788568)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>'No Record Selected'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P7_CUSTOMER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41676150018788906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41669004857788929)
,p_button_name=>'POP_OEHR_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add OEHR_ORDERS DETAILS'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP,13:P13_CUSTOMER_ID:&P7_CUSTOMER_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41689589511788566)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41653406657788983)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP,12:P12_CUSTOMER_ID:&P7_CUSTOMER_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41647250155789607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41646432044789616)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.:RESET:&DEBUG.:RP,7::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41647695542789606)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41646432044789616)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP,12::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41648493159789601)
,p_name=>'P7_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41647984699789605)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41668383823788933)
,p_name=>'P7_CUSTOMER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41653406657788983)
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41689884372788566)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(41653406657788983)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41690428657788565)
,p_event_id=>wwv_flow_imp.id(41689884372788566)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41653406657788983)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41690915242788563)
,p_event_id=>wwv_flow_imp.id(41689884372788566)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Partial Refresh Example row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41669158541788929)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(41669004857788929)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41676897351788902)
,p_event_id=>wwv_flow_imp.id(41669158541788929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41669004857788929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41677354906788900)
,p_event_id=>wwv_flow_imp.id(41669158541788929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''OEHR_ORDERS DETAILS row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41689934389788566)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41691706490788561)
,p_event_id=>wwv_flow_imp.id(41689934389788566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41648743479789600)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41692284194788560)
,p_event_id=>wwv_flow_imp.id(41689934389788566)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
