prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>216
,p_default_id_offset=>61078688106175745
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Costco Sl Report'
,p_alias=>'COSTCO-SL-REPORT'
,p_step_title=>'Costco Sl Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96263747769123176)
,p_plug_name=>'Costco Sl'
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ROW_ID,',
'       ORDER_ID,',
'       ORDER_DATE,',
'       SHIP_DATE,',
'       SHIP_MODE,',
'       CUSTOMER_ID,',
'       CUSTOMER_NAME,',
'       SEGMENT,',
'       COUNTRY,',
'       CITY,',
'       STATE,',
'       POSTAL_CODE,',
'       REGION,',
'       PRODUCT_ID,',
'       CATEGORY,',
'       SUB_CATEGORY,',
'       PRODUCT_NAME,',
'       SALES,',
'       QUANTITY,',
'       DISCOUNT,',
'       PROFIT',
'  from COSTCO_SL'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Costco Sl Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(96263858910123176)
,p_name=>'Costco Sl Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'DEV_USER'
,p_internal_uid=>35185170803947431
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96264515438123223)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96264819928123309)
,p_db_column_name=>'ROW_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Row ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96265253639123311)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Order ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96265625607123312)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96265990689123313)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ship Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96266471982123314)
,p_db_column_name=>'SHIP_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Ship Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96266851781123316)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Customer ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96267227159123317)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94782380887015468)
,p_db_column_name=>'SEGMENT'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Segment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94782439222015469)
,p_db_column_name=>'COUNTRY'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94782509725015470)
,p_db_column_name=>'CITY'
,p_display_order=>38
,p_column_identifier=>'K'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94782668708015471)
,p_db_column_name=>'STATE'
,p_display_order=>48
,p_column_identifier=>'L'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94782774516015472)
,p_db_column_name=>'POSTAL_CODE'
,p_display_order=>58
,p_column_identifier=>'M'
,p_column_label=>'Postal Code'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94782865562015473)
,p_db_column_name=>'REGION'
,p_display_order=>68
,p_column_identifier=>'N'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94782919605015474)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>78
,p_column_identifier=>'O'
,p_column_label=>'Product Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94783082389015475)
,p_db_column_name=>'CATEGORY'
,p_display_order=>88
,p_column_identifier=>'P'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94783158004015476)
,p_db_column_name=>'SUB_CATEGORY'
,p_display_order=>98
,p_column_identifier=>'Q'
,p_column_label=>'Sub Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94783287750015477)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>108
,p_column_identifier=>'R'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94783298036015478)
,p_db_column_name=>'SALES'
,p_display_order=>118
,p_column_identifier=>'S'
,p_column_label=>'Sales'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94783397799015479)
,p_db_column_name=>'QUANTITY'
,p_display_order=>128
,p_column_identifier=>'T'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94783517186015480)
,p_db_column_name=>'DISCOUNT'
,p_display_order=>138
,p_column_identifier=>'U'
,p_column_label=>'Discount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94783651849015481)
,p_db_column_name=>'PROFIT'
,p_display_order=>148
,p_column_identifier=>'V'
,p_column_label=>'Profit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(96287117473123455)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'352085'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_ID:ORDER_DATE:SHIP_DATE:SHIP_MODE:CUSTOMER_ID:CUSTOMER_NAME'
,p_sort_column_1=>'ORDER_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96274478032123339)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(96029204467118767)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(95913586647118454)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(96092037249118941)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94783818864015483)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(96263747769123176)
,p_button_name=>'RedirectUser'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(96090461078118937)
,p_button_image_alt=>'Redirectuser'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96273246162123334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(96263747769123176)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(96090461078118937)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94784537509015490)
,p_name=>'P4_LOV'
,p_item_sequence=>20
,p_prompt=>'Lov'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CUSTOMER_ORDERS'
,p_lov=>'select distinct ORDER_ID from COSTCO_SL'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(96087987511118927)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96273558614123335)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(96263747769123176)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96274019901123338)
,p_event_id=>wwv_flow_imp.id(96273558614123335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(96263747769123176)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
