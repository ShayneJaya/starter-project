prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_name=>'#8: APEX & Oracle Text - Enable fuzzy search in your reports'
,p_alias=>'8-APEX-ORACLE-TEXT-ENABLE-FUZZY-SEARCH-IN-YOUR-REPORTS'
,p_step_title=>'#8: APEX & Oracle Text - Enable fuzzy search in your reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(37842800401745611)
,p_name=>'Products'
,p_template=>wwv_flow_imp.id(32933336533813955)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OEHR_PRODUCT_INFORMATION'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(32971576445813973)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37842951844745612)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Product Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843028088745613)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843101621745614)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Product Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843262946745615)
,p_query_column_id=>4
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Category Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843364863745616)
,p_query_column_id=>5
,p_column_alias=>'WEIGHT_CLASS'
,p_column_display_sequence=>50
,p_column_heading=>'Weight Class'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843477669745617)
,p_query_column_id=>6
,p_column_alias=>'WARRANTY_PERIOD'
,p_column_display_sequence=>60
,p_column_heading=>'Warranty Period'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843528452745618)
,p_query_column_id=>7
,p_column_alias=>'SUPPLIER_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Supplier Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843643094745619)
,p_query_column_id=>8
,p_column_alias=>'PRODUCT_STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'Product Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843792536745620)
,p_query_column_id=>9
,p_column_alias=>'LIST_PRICE'
,p_column_display_sequence=>90
,p_column_heading=>'List Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843830796745621)
,p_query_column_id=>10
,p_column_alias=>'MIN_PRICE'
,p_column_display_sequence=>100
,p_column_heading=>'Min Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37843932219745622)
,p_query_column_id=>11
,p_column_alias=>'CATALOG_URL'
,p_column_display_sequence=>110
,p_column_heading=>'Catalog Url'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37844054098745623)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(37842800401745611)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(262036149877791001)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<style>',
'        .code-block {',
'            border: 1px solid #ccc;',
'            padding: 15px;',
'            margin-bottom: 20px;',
'            overflow: auto;',
'        }',
'        .code-block pre {',
'            margin: 0;',
'        }',
'    </style>',
'<body>',
'    <h1>Fuzzy Text on Oracle Reports</h1>',
'    <ul>',
'        <li>Create a Function to use Oracle Text Fuzzy Search, this one is a relaxation query that explands the search as no results are found</li>',
'        <li>Add a application definition to reference this function. Index the column in your table to search</li>',
'        <li>On the search field, use oracle text instead of row search and list the column</li>',
'        <li>Search for misspelled words in the product name column below </li>',
'    </ul>',
'',
'    <h1>PL/SQL Code Blocks</h1>',
'',
'    <div class="code-block">',
'        <h2>Create or Replace Function</h2>',
'        <pre>',
'CREATE OR REPLACE FUNCTION convert_end_user_search (',
'    p_search IN VARCHAR2 )',
'    RETURN VARCHAR2 ',
'IS',
'    c_xml CONSTANT VARCHAR2(32767) := ''&lt;query&gt;&lt;textquery&gt;&lt;progression&gt;'' ||',
'                                        ''&lt;seq&gt;  #SEARCH#  &lt;/seq&gt;'' ||',
'                                        ''&lt;seq&gt; ?#SEARCH#  &lt;/seq&gt;'' ||',
'                                        ''&lt;seq&gt;  #SEARCH#% &lt;/seq&gt;'' ||',
'                                        ''&lt;seq&gt; %#SEARCH#% &lt;/seq&gt;'' ||',
'                                      ''&lt;/progression&gt;&lt;/textquery&gt;&lt;/query&gt;'';',
'    l_search VARCHAR2(32767) := p_search;',
'BEGIN',
'    -- remove special characters; irrelevant for full text search',
'    l_search := REGEXP_REPLACE( l_search, ''[<>{}/()*%&!$?.:,;\+#]'', '''' );',
'',
'    RETURN REPLACE( c_xml, ''#SEARCH#'', l_search );',
'END;',
'        </pre>',
'    </div>',
'',
'    <div class="code-block">',
'        <h2>Create Index</h2>',
'        <pre>',
'CREATE INDEX content_idx ON OEHR_PRODUCT_INFORMATION(product_name) INDEXTYPE IS CTXSYS.CONTEXT;',
'        </pre>',
'    </div>',
'',
'    <div class="code-block">',
'        <h2>Fuzzy Search Query</h2>',
'        <pre>',
'SELECT product_name, product_description',
'FROM OEHR_PRODUCT_INFORMATION',
'WHERE CONTAINS(product_name, ''FUZZY(Injet, 40)'') &gt; 0;',
'        </pre>',
'    </div>',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37844104145745624)
,p_name=>'P12_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37844054098745623)
,p_prompt=>'Search'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ORACLE_TEXT'
,p_attribute_02=>'FACET'
);
wwv_flow_imp.component_end;
end;
/
