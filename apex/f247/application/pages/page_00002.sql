prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'MD SidebySide Partial Refresh'
,p_alias=>'MD-SIDEBYSIDE-PARTIAL-REFRESH1'
,p_step_title=>'MD SidebySide Partial Refresh'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).off(''click'', ''.t-MediaList-itemWrap'').on(''click'', ''.t-MediaList-itemWrap'', function () {',
'  var customerId = $(this).data(''customer-id'');',
'  var orderId = $(this).data(''order-id'');',
'',
'  console.log(''customerId: '' + customerId);',
'  console.log(''orderId: '' + orderId);',
'',
'  if (customerId) {',
'    apex.item(''P2_CUSTOMER_ID'').setValue(customerId);',
'    apex.item(''P2_ORDER_ID'').setValue(orderId);',
'',
'    apex.server.process("SET_CUSTOMER_ID", {',
'      x01: customerId,',
'      x02: orderId',
'    }, {',
'      dataType: ''text'',',
'      success: function () {',
'        console.log(''Refreshing regions...'');',
'        apex.region("DETAILS").refresh();',
'        apex.region("MDHEADER").refresh();',
'      },',
'      error: function (jqXHR, textStatus, errorThrown) {',
'        console.log(''Error:'', errorThrown);',
'      }',
'    });',
'  }',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* Scroll Results Only in Side Column */',
'/* .t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'} */',
'/* .search-results {',
'    flex: 1;',
'    overflow: auto;',
'} */',
'/* Format Search Region */',
'/* .search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'} */'))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38994890837169008)
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
 p_id=>wwv_flow_imp.id(38996385671168995)
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
 p_id=>wwv_flow_imp.id(38997124106168990)
,p_name=>'Master Records'
,p_template=>4501440665235496320
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ORDER_ID",',
'    null LINK_CLASS,',
'    ''#'' LINK,',
'  ''data-customer-id='' || CUSTOMER_ID || ''  data-order-id = ''||ORDER_ID||'' class="t-MediaList-itemWrap'' AS LINK_ATTR,',
'    null ICON_CLASS,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P2_CUSTOMER_ID,''0'') = "ORDER_ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr("CUSTOMER_ID", 1, 50)||( case when length("CUSTOMER_ID") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    (substr("ORDER_DATE", 1, 50)||( case when length("ORDER_DATE") > 50 then ''...'' else '''' end )) LIST_TEXT,',
'    null LIST_BADGE',
'from "OEHR_ORDERS" x',
'where (:P2_SEARCH is null',
'        or upper(x."CUSTOMER_ID") like ''%''||upper(:P2_SEARCH)||''%''',
'        or upper(x."ORDER_DATE") like ''%''||upper(:P2_SEARCH)||''%''',
'    )',
'order by "CUSTOMER_ID"',
'/* select "ORDER_ID",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P2_CUSTOMER_ID'', p_values => "CUSTOMER_ID") LINK,',
'    null ICON_CLASS,',
'    null LINK_ATTR,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P2_CUSTOMER_ID,''0'') = "ORDER_ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr("CUSTOMER_ID", 1, 50)||( case when length("CUSTOMER_ID") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    (substr("ORDER_DATE", 1, 50)||( case when length("ORDER_DATE") > 50 then ''...'' else '''' end )) LIST_TEXT,',
'    null LIST_BADGE',
'from "OEHR_ORDERS" x',
'where (:P2_SEARCH is null',
'        or upper(x."CUSTOMER_ID") like ''%''||upper(:P2_SEARCH)||''%''',
'        or upper(x."ORDER_DATE") like ''%''||upper(:P2_SEARCH)||''%''',
'    )',
'order by "CUSTOMER_ID" */'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_SEARCH'
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
 p_id=>wwv_flow_imp.id(38997887818168979)
,p_query_column_id=>1
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'ORDER_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38998273573168978)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38998692086168977)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(33033734080887539)
,p_query_column_id=>4
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>20
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38999023442168976)
,p_query_column_id=>5
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38999849378168974)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39000249532168973)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39000611768168972)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39001077668168971)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39001432554168970)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39001816354168273)
,p_name=>'MD SidebySide Partial Refresh'
,p_region_name=>'MDHEADER'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_ORDERS'
,p_query_where=>'"ORDER_ID" = :P2_ORDER_ID'
,p_include_rowid_column=>false
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
 p_id=>wwv_flow_imp.id(39002420935168270)
,p_query_column_id=>1
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Order Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_ID" is not null',
'and "ORDER_ID" = :P2_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39002805647168269)
,p_query_column_id=>2
,p_column_alias=>'ORDER_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Order Date'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_DATE" is not null',
'and "ORDER_ID" = :P2_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39003275781168268)
,p_query_column_id=>3
,p_column_alias=>'ORDER_MODE'
,p_column_display_sequence=>3
,p_column_heading=>'Order Mode'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_MODE" is not null',
'and "ORDER_ID" = :P2_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39003633975168267)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "CUSTOMER_ID" is not null',
'and "ORDER_ID" = :P2_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39004010252168266)
,p_query_column_id=>5
,p_column_alias=>'ORDER_STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Order Status'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_STATUS" is not null',
'and "ORDER_ID" = :P2_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39004473024168265)
,p_query_column_id=>6
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>6
,p_column_heading=>'Order Total'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "ORDER_TOTAL" is not null',
'and "ORDER_ID" = :P2_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39004811446168264)
,p_query_column_id=>7
,p_column_alias=>'SALES_REP_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Sales Rep Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "SALES_REP_ID" is not null',
'and "ORDER_ID" = :P2_ORDER_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39005297880168263)
,p_query_column_id=>8
,p_column_alias=>'PROMOTION_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Promotion Id'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "OEHR_ORDERS"',
'where "PROMOTION_ID" is not null',
'and "ORDER_ID" = :P2_ORDER_ID'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39011033898168241)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_ORDER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39011438927168239)
,p_name=>'MD SidebySide Detail'
,p_region_name=>'DETAILS'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CUSTOMER_ID,',
'       CUST_FIRST_NAME,',
'       CUST_LAST_NAME,',
'       STREET_ADDRESS,',
'       POSTAL_CODE,',
'       CITY,',
'       STATE_PROVINCE,',
'       COUNTRY_ID,',
'       PHONE_NUMBER,',
'       NLS_LANGUAGE,',
'       NLS_TERRITORY,',
'       CREDIT_LIMIT,',
'       CUST_EMAIL,',
'       ACCOUNT_MGR_ID',
'  from OEHR_CUSTOMERS',
' where "CUSTOMER_ID" =:P2_CUST_ID'))
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
 p_id=>wwv_flow_imp.id(39012292447168235)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39012609893168234)
,p_query_column_id=>2
,p_column_alias=>'CUST_FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Cust First Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39013079745168233)
,p_query_column_id=>3
,p_column_alias=>'CUST_LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Cust Last Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39013400782168232)
,p_query_column_id=>4
,p_column_alias=>'STREET_ADDRESS'
,p_column_display_sequence=>4
,p_column_heading=>'Street Address'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39013804509168231)
,p_query_column_id=>5
,p_column_alias=>'POSTAL_CODE'
,p_column_display_sequence=>5
,p_column_heading=>'Postal Code'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39014216751168231)
,p_query_column_id=>6
,p_column_alias=>'CITY'
,p_column_display_sequence=>6
,p_column_heading=>'City'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39014667995168229)
,p_query_column_id=>7
,p_column_alias=>'STATE_PROVINCE'
,p_column_display_sequence=>7
,p_column_heading=>'State Province'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39015035249168229)
,p_query_column_id=>8
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Country Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39015474625168227)
,p_query_column_id=>9
,p_column_alias=>'PHONE_NUMBER'
,p_column_display_sequence=>9
,p_column_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39015847647168226)
,p_query_column_id=>10
,p_column_alias=>'NLS_LANGUAGE'
,p_column_display_sequence=>10
,p_column_heading=>'Nls Language'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39016220502168224)
,p_query_column_id=>11
,p_column_alias=>'NLS_TERRITORY'
,p_column_display_sequence=>11
,p_column_heading=>'Nls Territory'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39016687566168222)
,p_query_column_id=>12
,p_column_alias=>'CREDIT_LIMIT'
,p_column_display_sequence=>12
,p_column_heading=>'Credit Limit'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39017044892168221)
,p_query_column_id=>13
,p_column_alias=>'CUST_EMAIL'
,p_column_display_sequence=>13
,p_column_heading=>'Cust Email'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39017469948168219)
,p_query_column_id=>14
,p_column_alias=>'ACCOUNT_MGR_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Account Mgr Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39022785914168196)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39011438927168239)
,p_button_name=>'POP_OEHR_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add MD SidebySide Detail'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP,10:P10_CUSTOMER_ID:&P2_ORDER_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39039956624167792)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(39001816354168273)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:RP,8:P8_ORDER_ID:&P2_ORDER_ID.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38995685714168997)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38994890837169008)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.:RESET:&DEBUG.:RP,2::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38996028567168996)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38994890837169008)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:RP,8::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33033105564887533)
,p_name=>'P2_ORDER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(39001816354168273)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33034008903887542)
,p_name=>'P2_CUST_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(39001816354168273)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38996896792168991)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38996385671168995)
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
 p_id=>wwv_flow_imp.id(39010760792168242)
,p_name=>'P2_CUSTOMER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39001816354168273)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39040284761167791)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(39001816354168273)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39040813007167790)
,p_event_id=>wwv_flow_imp.id(39040284761167791)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39001816354168273)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39041300246167789)
,p_event_id=>wwv_flow_imp.id(39040284761167791)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''MD SidebySide Partial Refresh row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39011549850168239)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(39011438927168239)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39023405397168193)
,p_event_id=>wwv_flow_imp.id(39011549850168239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39011438927168239)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39023914275168191)
,p_event_id=>wwv_flow_imp.id(39011549850168239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''MD SidebySide Detail row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39040365263167791)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39042178199167786)
,p_event_id=>wwv_flow_imp.id(39040365263167791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38997124106168990)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39042653100167785)
,p_event_id=>wwv_flow_imp.id(39040365263167791)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33033469931887536)
,p_name=>'New'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.t-MediaList-item  '
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>100
,p_execution_immediate=>true
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(37852063688108306)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33033518364887537)
,p_event_id=>wwv_flow_imp.id(33033469931887536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_CUSTOMER_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.t-MediaList-itemWrap'').on(''click'', function () {',
'  var customerId = $(this).data(''customer-id'');',
'    var orderId = $(this).data(''order-id'');',
'',
'    console.log(''customerId'' + customerId);',
'    console.log(''orderId'' + orderId);',
'    ',
'  if (customerId) {',
'    apex.item(''P2_CUST_ID'').setValue(customerId);',
'    apex.item(''P2_ORDER_ID'').setValue(orderId);',
'    apex.server.process( "SET_CUSTOMER_ID", {',
'    x01:customerId,',
'     x02: orderId',
'}, {',
'     dataType: ''text'', ',
'    success: function( data )  {',
'        console.log(''Refreshing'')',
'       console.log(''Setting customerId'' + customerId);',
'    console.log(''Setting orderId'' + orderId);',
'      apex.region("DETAILS").refresh();',
'    apex.region("MDHEADER").refresh();',
'       console.log(''Refreshed DETAILS RGN'')',
'    },',
'    error: function( jqXHR, textStatus, errorThrown ) {',
'        console.log(''Error:'', errorThrown);',
'    }',
'    } );',
'  }',
'',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33033830296887540)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_CUSTOMER_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_SESSION_STATE(''P2_CUST_ID'', APEX_APPLICATION.G_X01);',
'APEX_UTIL.SET_SESSION_STATE(''P2_ORDER_ID'', APEX_APPLICATION.G_X02);',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>33033830296887540
);
wwv_flow_imp.component_end;
end;
/
