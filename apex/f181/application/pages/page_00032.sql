prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'Document Understanding'
,p_alias=>'DOCUMENT-UNDERSTANDING'
,p_step_title=>'Document Understanding'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19779576071796029)
,p_plug_name=>'Item Container'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19780601695796040)
,p_name=>'Table Report'
,p_template=>wwv_flow_imp.id(32933336533813955)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT jt.fieldLabel_name||'': '' || jt.fieldValue_text AS Key_Value_Extraction',
'FROM DOCUMENT_UNDERSTANDING du,',
'     JSON_TABLE(',
'       du.RAW_RESPONSE,',
'       ''$.pages[*]'' COLUMNS (',
'         NESTED PATH ''$.documentFields[*]'' COLUMNS (',
'           fieldLabel_name PATH ''$.fieldLabel.name'',',
'           fieldValue_text PATH ''$.fieldValue.text''',
'         )',
'       )',
'     ) jt',
'WHERE  du.ID = (select max(ID) from DOCUMENT_UNDERSTANDING);'))
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
 p_id=>wwv_flow_imp.id(19780735359796041)
,p_query_column_id=>1
,p_column_alias=>'KEY_VALUE_EXTRACTION'
,p_column_display_sequence=>10
,p_column_heading=>'Key Value Extraction'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20195600337833659)
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
 p_id=>wwv_flow_imp.id(20463756086942204)
,p_name=>'Header Items'
,p_template=>wwv_flow_imp.id(32933336533813955)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        D.PAGECOUNT,',
'        D.MIMETYPE,',
'        D.TEXTEXTRACTIONMODELVERSION,',
'        D.DOCUMENTTYPE,',
'        D.CONFIDENCE,',
'        D.PAGENUMBER,',
'        D.HEIGHT,',
'        D.WIDTH,',
'        D.UNIT,',
'        D.DETECTEDDOCUMENTTYPES_DOCUMENTTYPE,',
'        D.DETECTEDDOCUMENTTYPES_CONFIDENCE,',
'        D.DOCUMENTCLASSIFICATIONMODELVERSION',
'    FROM',
'         DOCUMENT_UNDERSTANDING CT,',
'        JSON_TABLE ( CT.RAW_RESPONSE, ''$''',
'                COLUMNS (',
'                    KEYVALUEEXTRACTIONMODELVERSION VARCHAR2 ( 7 CHAR ) PATH ''$."keyValueExtractionModelVersion"'',',
'                    TEXTEXTRACTIONMODELVERSION VARCHAR2 ( 7 CHAR ) PATH ''$."textExtractionModelVersion"'',',
'                    PAGECOUNT NUMBER PATH ''$.documentMetadata.pageCount'',',
'                    MIMETYPE VARCHAR2 ( 9 CHAR ) PATH ''$.documentMetadata.mimeType'',',
'                    DOCUMENTTYPE VARCHAR2 ( 17 CHAR ) PATH ''$.detectedDocumentTypes.documentType'',',
'                    CONFIDENCE NUMBER PATH ''$.detectedDocumentTypes.confidence'',',
'                    NESTED PATH ''$.pages[*]''',
'                        COLUMNS (',
'                            PAGENUMBER NUMBER PATH ''$.pageNumber'',',
'                            WIDTH NUMBER PATH ''$.dimensions.width'',',
'                            HEIGHT NUMBER PATH ''$.dimensions.height'',',
'                            UNIT VARCHAR2 ( 5 CHAR ) PATH ''$.dimensions.unit'',',
'                            DETECTEDDOCUMENTTYPES_DOCUMENTTYPE VARCHAR2 ( 14 CHAR ) PATH ''$.detectedDocumentTypes[0].documentType'',',
'                            DETECTEDDOCUMENTTYPES_CONFIDENCE NUMBER PATH ''$.detectedDocumentTypes[0].confidence''',
'                        ),',
'                    DOCUMENTCLASSIFICATIONMODELVERSION VARCHAR2 ( 6 CHAR ) PATH ''$."documentClassificationModelVersion"''',
'                )',
'            )',
'        D WHERE  CT.ID = (select max(ID) from DOCUMENT_UNDERSTANDING);',
'',
''))
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
 p_id=>wwv_flow_imp.id(20463876470942205)
,p_query_column_id=>1
,p_column_alias=>'PAGECOUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Pagecount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20463965742942206)
,p_query_column_id=>2
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Mimetype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464029615942207)
,p_query_column_id=>3
,p_column_alias=>'TEXTEXTRACTIONMODELVERSION'
,p_column_display_sequence=>30
,p_column_heading=>'Textextractionmodelversion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464101723942208)
,p_query_column_id=>4
,p_column_alias=>'DOCUMENTTYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Documenttype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464229595942209)
,p_query_column_id=>5
,p_column_alias=>'CONFIDENCE'
,p_column_display_sequence=>50
,p_column_heading=>'Confidence'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464303522942210)
,p_query_column_id=>6
,p_column_alias=>'PAGENUMBER'
,p_column_display_sequence=>60
,p_column_heading=>'Pagenumber'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464496820942211)
,p_query_column_id=>7
,p_column_alias=>'HEIGHT'
,p_column_display_sequence=>70
,p_column_heading=>'Height'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20465799344942224)
,p_query_column_id=>8
,p_column_alias=>'WIDTH'
,p_column_display_sequence=>120
,p_column_heading=>'Width'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464540429942212)
,p_query_column_id=>9
,p_column_alias=>'UNIT'
,p_column_display_sequence=>80
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464635314942213)
,p_query_column_id=>10
,p_column_alias=>'DETECTEDDOCUMENTTYPES_DOCUMENTTYPE'
,p_column_display_sequence=>90
,p_column_heading=>'Detecteddocumenttypes Documenttype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464707068942214)
,p_query_column_id=>11
,p_column_alias=>'DETECTEDDOCUMENTTYPES_CONFIDENCE'
,p_column_display_sequence=>100
,p_column_heading=>'Detecteddocumenttypes Confidence'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20464870452942215)
,p_query_column_id=>12
,p_column_alias=>'DOCUMENTCLASSIFICATIONMODELVERSION'
,p_column_display_sequence=>110
,p_column_heading=>'Documentclassificationmodelversion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(20464988443942216)
,p_name=>'Line Items'
,p_template=>wwv_flow_imp.id(32933336533813955)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    D.FIELDLABEL_NAME as Item_Name,',
'    D.ITEMS_FIELDVALUE_TEXT as Item_Value ,',
'    TO_CHAR(D.FIELDLABEL_CONFIDENCE *100,''FM9999990.00'') || ''%'' AS  AI_Confidence',
'FROM',
'    DOCUMENT_UNDERSTANDING CT,',
'    JSON_TABLE (',
'        CT.RAW_RESPONSE,',
'        ''$'' COLUMNS (',
'            NESTED PATH ''$.pages[*].documentFields[*].fieldValue.items[*].fieldValue.items[*]'' COLUMNS (',
'                FIELDLABEL_NAME VARCHAR2 (11 CHAR) PATH ''$.fieldLabel.name'',',
'                ITEMS_FIELDVALUE_TEXT VARCHAR2 (109 CHAR) PATH ''$.fieldValue.text'',',
'                FIELDLABEL_CONFIDENCE NUMBER PATH ''$.fieldLabel.confidence''',
'            ),',
'            DOCUMENTCLASSIFICATIONMODELVERSION VARCHAR2 (6 CHAR) PATH ''$."documentClassificationModelVersion"''',
'        )',
'    ) D',
'WHERE',
'    CT.ID = (',
'        select',
'            max(ID)',
'        from',
'            DOCUMENT_UNDERSTANDING',
'    );'))
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
 p_id=>wwv_flow_imp.id(20465434093942221)
,p_query_column_id=>1
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20465580885942222)
,p_query_column_id=>2
,p_column_alias=>'ITEM_VALUE'
,p_column_display_sequence=>20
,p_column_heading=>'Item Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20465629994942223)
,p_query_column_id=>3
,p_column_alias=>'AI_CONFIDENCE'
,p_column_display_sequence=>30
,p_column_heading=>'Ai Confidence'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19777727513796011)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19779576071796029)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(33005855194813995)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_show_processing=>'Y'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19777998746796013)
,p_name=>'P32_RESPONSE'
,p_data_type=>'CLOB'
,p_item_sequence=>60
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19778155117796015)
,p_name=>'P32_STATUS'
,p_item_sequence=>50
,p_prompt=>'Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19779335189796027)
,p_name=>'P32_FILEBROWSER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19779576071796029)
,p_prompt=>'My File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'image/*'
,p_attribute_12=>'DROPZONE_INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19779405951796028)
,p_name=>'P32_KEY_VALUE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19779576071796029)
,p_prompt=>'Key Value Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Receipts;RECEIPT,Invoice;INVOICE,Driver ID;DRIVER_LICENSE,Passport;PASSPORT'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19779680240796030)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Move File to Object Storage and Call API'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    --Object Storage',
'    l_obj_storage_request_url varchar(32000);',
'    l_content_length number;',
'    l_response clob;',
'    upload_failed_exception exception;',
'    l_uploaded_object blob;',
'    l_uploaded_object_filename varchar2(500);',
'',
'',
'    --Document Understanding',
'    l_response_document  CLOB;',
'    l_params apex_exec.t_parameters;',
'    l_status varchar(25);',
'    l_retry_count       INTEGER := 0;',
'    l_max_retries       INTEGER := 5;',
'    begin',
'        --Enable Debug',
'        APEX_DEBUG.ENABLE(',
'        apex_debug.c_log_level_info);',
'',
'        --Select File from Temp File View',
'        select blob_content, filename into l_uploaded_object, l_uploaded_object_filename from apex_application_temp_files where name = :P32_FILEBROWSER;',
'        --Make PUT request to Object Storage',
'        l_obj_storage_request_url := :G_CLOUD_URL||''/b/''|| ''DocumentUnderstanding''||''/o/Files/''|| l_uploaded_object_filename;',
'        l_response := apex_web_service.make_rest_request(',
'        p_url => l_obj_storage_request_url,',
'        p_http_method => ''PUT'',',
'        p_body_blob => l_uploaded_object,',
'        p_credential_static_id => ''oci_credentials_gen_ai'');',
'',
'        /* apex_exec.add_parameter( l_params, ''OBJECTNAME'', ''Files/'' || l_uploaded_object_filename );',
'        apex_exec.add_parameter( l_params, ''INVOICE'', :P32_KEY_VALUE );',
'        apex_exec.execute_rest_source(',
'        p_static_id        => ''newdocumentunderstanding'',',
'        p_operation        => ''POST'',',
'        p_parameters       => l_params );',
'',
'        l_response_document := APEX_EXEC.GET_PARAMETER_CLOB(l_params,''RESPONSE'');',
'        l_status := APEX_EXEC.GET_PARAMETER_VARCHAR2(l_params,''STATUS''); */',
'        ',
'        --Call Document Understanding API',
'        Loop --to avoid 502 Bad Gateway error',
'            --Add Parameter',
'            apex_exec.add_parameter( l_params, ''OBJECTNAME'', ''Files/'' || l_uploaded_object_filename );',
'            apex_exec.add_parameter( l_params, ''INVOICE'', :P32_KEY_VALUE );',
'            --apex_exec.add_parameter( l_params, ''INVOICE'', :P32_KEY_VALUE );',
'            apex_exec.execute_rest_source(',
'            p_static_id        => ''newdocumentunderstanding'',',
'            p_operation        => ''POST'',',
'            p_parameters       => l_params );',
'',
'            l_response_document := APEX_EXEC.GET_PARAMETER_CLOB(l_params,''RESPONSE'');',
'            l_status := APEX_EXEC.GET_PARAMETER_VARCHAR2(l_params,''STATUS'');',
'            IF l_response_document LIKE ''%"code" : "InternalError"%'' AND',
'               l_response_document LIKE ''%"message" : "Bad Gateway"%'' THEN',
'               l_retry_count := l_retry_count + 1 ;',
'               IF l_retry_count >= l_max_retries THEN',
'                EXIT;',
'               END IF;',
'               DBMS_SESSION.SLEEP(1); ',
'            ELSE',
'                EXIT;',
'            END IF;',
'        END LOOP;           ',
'        INSERT INTO DOCUMENT_UNDERSTANDING (SESSION_ID,RAW_RESPONSE,ASKED_ON,HTTP_STATUS,FILENAME,RETRY_COUNT,blob_content) values (:APP_SESSION,l_response_document,systimestamp,l_status,l_uploaded_object_filename,l_retry_count,l_uploaded_object);',
' End;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19777727513796011)
,p_process_when=>'P32_FILEBROWSER'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>19779680240796030
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19777872952796012)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'API'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(20199148814952566)
,p_web_src_operation_id=>wwv_flow_imp.id(20199372985952568)
,p_attribute_01=>'WEB_SOURCE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
,p_internal_uid=>19777872952796012
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(20201799692086180)
,p_page_id=>32
,p_web_src_param_id=>wwv_flow_imp.id(20201478649086167)
,p_page_process_id=>wwv_flow_imp.id(19777872952796012)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(20203753824138153)
,p_page_id=>32
,p_web_src_param_id=>wwv_flow_imp.id(20203486531138151)
,p_page_process_id=>wwv_flow_imp.id(19777872952796012)
,p_value_type=>'ITEM'
,p_value=>'P32_RESPONSE'
,p_ignore_output=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(20208034781363375)
,p_page_id=>32
,p_web_src_param_id=>wwv_flow_imp.id(20207770526363373)
,p_page_process_id=>wwv_flow_imp.id(19777872952796012)
,p_value_type=>'ITEM'
,p_value=>'P32_STATUS'
,p_ignore_output=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19778249453796016)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT INTO TABLE'
,p_process_sql_clob=>'INSERT INTO DOCUMENT_UNDERSTANDING (SESSION_ID,RAW_RESPONSE,ASKED_ON,HTTP_STATUS) values (:APP_SESSION,:P32_RESPONSE,systimestamp,:P32_STATUS);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
,p_internal_uid=>19778249453796016
);
wwv_flow_imp.component_end;
end;
/
