prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'#17 - Using Markdown in APEX'
,p_alias=>'17-USING-MARKDOWN-IN-APEX'
,p_step_title=>'#17 - Using Markdown in APEX'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21640177134223683)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32945791020813960)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(32830040333813888)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(33008182163813998)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(21647471872647001)
,p_name=>'Customers'
,p_template=>wwv_flow_imp.id(32933336533813955)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_CUSTOMERS'
,p_query_where=>'CUSTOMER_ID = 101'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(32971576445813973)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21647566425647002)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Customer Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21647636197647003)
,p_query_column_id=>2
,p_column_alias=>'CUST_FIRST_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Cust First Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#CUST_FIRST_NAME# #CUST_LAST_NAME# is located at #STREET_ADDRESS#, #POSTAL_CODE#, #CITY#, #STATE_PROVINCE#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21647761595647004)
,p_query_column_id=>3
,p_column_alias=>'CUST_LAST_NAME'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21647861418647005)
,p_query_column_id=>4
,p_column_alias=>'STREET_ADDRESS'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21647970337647006)
,p_query_column_id=>5
,p_column_alias=>'POSTAL_CODE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21648059693647007)
,p_query_column_id=>6
,p_column_alias=>'CITY'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21648161271647008)
,p_query_column_id=>7
,p_column_alias=>'STATE_PROVINCE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21648647395647013)
,p_query_column_id=>12
,p_column_alias=>'CREDIT_LIMIT'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21648788458647014)
,p_query_column_id=>13
,p_column_alias=>'CUST_EMAIL'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21648849827647015)
,p_query_column_id=>14
,p_column_alias=>'ACCOUNT_MGR_ID'
,p_column_display_sequence=>140
,p_column_heading=>'Account Mgr Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21565508325427550)
,p_name=>'P40_DISPLAYMD'
,p_item_sequence=>40
,p_prompt=>'Displaymd'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'# Displaying Markdown in Oracle APEX',
'',
'## Update: As of 21.1, Display Only fields also have native Markdown support.',
'',
'To display Markdown, instead of escaping the HTML (which could lead to cross-site scripting), use the new Markdown column type in Classic reports to display this content. It automatically converts escaped HTML to Markdown.',
'',
'Markdown can be added to any page item by using a global page dynamic action to handle it.',
'',
'### Steps to Implement:',
'',
'1. **Create a Global Dynamic Action:**',
'',
'   On Page 0 (On Page Load) - Execute JavaScript Code:',
'',
'    ```javascript',
'    $.each($(''.mymarkdown''), function (i, mymd) {',
'        mymd.innerHTML = marked(mymd.innerHTML);',
'    });',
'    ```',
'',
'2. **Add a Static Content Region:**',
'',
'   Create a static content region on Page 0, with a Markdown Editor item inside.',
'',
'### Example:',
'',
'```markdown',
'# Welcome to My Page!',
'',
'This is a **Markdown** text inside Oracle APEX.',
'',
'- Item 1',
'- Item 2',
'  - Subitem 2.1',
'  - Subitem 2.2',
'',
'[Link to Oracle](https://www.oracle.com)',
'',
'> This is a blockquote!',
'',
'![APEX Logo](https://apex.oracle.com/i/dev_images/favicon-194x194.png)'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp.component_end;
end;
/
