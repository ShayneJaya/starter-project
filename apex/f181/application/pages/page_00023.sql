prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>'Object Storage MultiPart Upload'
,p_alias=>'OBJECT-STORAGE-MULTIPART-UPLOAD'
,p_step_title=>'Object Storage MultiPart Upload'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15630169605765133)
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
 p_id=>wwv_flow_imp.id(15639261021843813)
,p_name=>'Upload Parts'
,p_template=>wwv_flow_imp.id(32933336533813955)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from APEX_COLLECTIONS where COLLECTION_NAME = ''UPLOAD_PART_ETAGS'''
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
 p_id=>wwv_flow_imp.id(15639342682843814)
,p_query_column_id=>1
,p_column_alias=>'COLLECTION_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Collection Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15639417103843815)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15639548686843816)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>30
,p_column_heading=>'ETAG? C001'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15639607170843817)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>40
,p_column_heading=>'COUNTER'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15639773924843818)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>50
,p_column_heading=>'C003'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15708742255031229)
,p_query_column_id=>66
,p_column_alias=>'MD5_ORIGINAL'
,p_column_display_sequence=>660
,p_column_heading=>'Md5 Original'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15709144726031233)
,p_plug_name=>'File Upload'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15709672767031238)
,p_plug_name=>'Upload Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15638676154843807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15709144726031233)
,p_button_name=>'Submit_Page'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'Submit Page'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15310385982592249)
,p_name=>'P23_OBJECT_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15709672767031238)
,p_prompt=>'Object Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15310491799592250)
,p_name=>'P23_RESPONSE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15709672767031238)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15638753338843808)
,p_name=>'P23_UPLOAD_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15709672767031238)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Upload Id'
,p_source=>'select JSON_VALUE(:P23_RESPONSE,''$[0].uploadId'') from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15639136281843812)
,p_name=>'P23_OBJECT_NAME_RETURNED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15709672767031238)
,p_prompt=>'Object Name Returned'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15708978030031231)
,p_name=>'P23_FILE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15709144726031233)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15709270310031234)
,p_name=>'P23_FILE_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15709144726031233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15709400134031236)
,p_name=>'P23_FILE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15709144726031233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15709544936031237)
,p_name=>'P23_NUM_PARTS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15709144726031233)
,p_prompt=>'Number of Parts to Divide File'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15638353028843804)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'New'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(15635674051835042)
,p_web_src_operation_id=>wwv_flow_imp.id(15636239655835046)
,p_attribute_01=>'WEB_SOURCE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
,p_internal_uid=>15638353028843804
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15638458255843805)
,p_page_id=>23
,p_web_src_param_id=>wwv_flow_imp.id(15643512670847691)
,p_page_process_id=>wwv_flow_imp.id(15638353028843804)
,p_value_type=>'ITEM'
,p_value=>'P23_RESPONSE'
,p_ignore_output=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(15638594429843806)
,p_page_id=>23
,p_web_src_param_id=>wwv_flow_imp.id(15637645965839367)
,p_page_process_id=>wwv_flow_imp.id(15638353028843804)
,p_value_type=>'ITEM'
,p_value=>'P23_OBJECT_NAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15638983968843810)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'New_1'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(15647878955919116)
,p_web_src_operation_id=>wwv_flow_imp.id(15648835394919117)
,p_attribute_01=>'WEB_SOURCE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
,p_internal_uid=>15638983968843810
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15709098590031232)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select *',
'               from apex_application_temp_files',
'               where name = :P23_FILE)',
'    loop',
'        insert into eba_demo_files (',
'            project_id,',
'            filename,',
'            file_blob,',
'            file_comments,',
'            file_mimetype)',
'        values (',
'            32042001022220968052783823584332807936,',
'            c1.filename,',
'            c1.blob_content,',
'            :P23_FILE_DESCRIPTION,',
'            c1.mime_type)',
'        returning ID into :P23_FILE_ID;',
'    end loop;',
'    ',
'    :P23_FILE_DESCRIPTION := null;',
'    :P23_FILE  := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'&P13_FILE_ID.'
,p_required_patch=>wwv_flow_imp.id(32829478949813884)
,p_internal_uid=>15709098590031232
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15709365170031235)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Background Chain'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'MOVE'
,p_attribute_09=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15709365170031235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15709796684031239)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New_2'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P23_OBJECT_NAME'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15709796684031239
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15639043303843811)
,p_process_sequence=>30
,p_parent_process_id=>wwv_flow_imp.id(15709365170031235)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Call API'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_num_parts           Number := :P23_Num_parts;',
'  l_file_name           Varchar(500) := :P23_FILE;',
'  l_response            CLOB;',
'  l_object_name         VARCHAR2(500);',
'  l_clob                CLOB;',
'  l_chunk_size          Integer;',
'  l_body                VARCHAR2(500);',
'  l_upload_id           VARCHAR2(500);',
'  l_object_name_returned VARCHAR2(500);',
'  l_upload_part_response VARCHAR2(500);',
'  l_blob_part           BLOB;',
'  l_counter             INTEGER := 1;',
'  l_commit_response     VARCHAR2(500);',
'  l_body_commit         VARCHAR2(32767);',
'  l_commit_url          Varchar2(1000);',
'  l_etag                varchar2(500);',
'  part_count INTEGER;',
'BEGIN',
'    APEX_DEBUG.ENABLE(',
'        apex_debug.c_log_level_info);',
'  ',
'  split_blob_into_parts(l_num_parts,l_file_name);',
'  l_object_name := :P23_OBJECT_NAME;',
'  l_body := ''{"object": "'' || l_object_name || ''"}'';',
'',
'  apex_web_service.set_request_headers(',
'    p_name_01 => ''Content-Type'',',
'    p_value_01 => ''application/json'',',
'    p_name_02 => ''User-Agent'',',
'    p_value_02 => ''APEX'',',
'    p_reset => false,',
'    p_skip_if_exists => true',
'  );',
'',
'  l_clob := apex_web_service.make_rest_request(',
'    p_url => ''https://objectstorage.us-ashburn-1.oraclecloud.com/n/natdcshjumpstartprod/b/multipartupload/u'',',
'    p_http_method => ''POST'',',
'    p_body => l_body,',
'    p_credential_static_id => ''oci_credentials_gen_ai''',
'  );',
'',
'  l_upload_id := json_value(l_clob, ''$.uploadId'');',
'  l_object_name_returned := json_value(l_clob, ''$.object'');',
'',
'  APEX_UTIL.SET_SESSION_STATE(''P23_UPLOAD_ID'', l_upload_id);',
'  APEX_UTIL.SET_SESSION_STATE(''P23_RESPONSE'', l_clob);',
'  APEX_UTIL.SET_SESSION_STATE(''P23_OBJECT_NAME_RETURNED'', l_object_name_returned);',
'',
'  apex_collection.create_or_truncate_collection(''UPLOAD_PART_ETAGS'');',
'  ',
'  FOR rec IN (SELECT part_data FROM blob_parts where FILE_ID = l_file_name ORDER BY part_id) LOOP',
'    l_blob_part := rec.part_data;',
'    apex_debug.message(''Uploading Parts'');',
'    l_upload_part_response := APEX_WEB_SERVICE.MAKE_REST_REQUEST(',
'      p_url => ''https://objectstorage.us-ashburn-1.oraclecloud.com/n/natdcshjumpstartprod/b/multipartupload/u/'' || l_object_name || ''?uploadid='' || l_upload_id || ''&uploadPartNum='' || l_counter,',
'      p_http_method => ''PUT'',',
'      p_body_blob => l_blob_part,',
'      p_credential_static_id => ''oci_credentials_gen_ai''',
'    );',
'',
'   /*  FOR i IN 1.. apex_web_service.g_headers.count LOOP',
'      IF lower(apex_web_service.g_headers(i).name) = ''etag'' THEN',
'        apex_collection.add_member(',
'          p_collection_name => ''UPLOAD_PART_ETAGS'',',
'          p_c001 => apex_web_service.g_headers(i).value,',
'          p_c002 => l_counter',
'        );',
'        apex_debug.message(''Looping Through headers '' || i);',
'      END IF;',
'    END LOOP;',
'',
'    l_counter := l_counter + 1;',
'  END LOOP; */',
'    apex_debug.message(''Getting Headers'');',
'   FOR i IN 1.. apex_web_service.g_headers.count LOOP',
'      IF lower(apex_web_service.g_headers(i).name) = ''etag'' THEN',
'        insert into BLOB_UPLOAD_PARTS (ETAG,SEQ_ID,FILE_NAME,OBJECT_NAME,UPLOAD_ID)',
'        Values (apex_web_service.g_headers(i).value,l_counter,l_file_name,l_object_name,l_upload_id);',
'        apex_debug.message(''Looping Through ETAG Headers '' || i);',
'      END IF;',
'    END LOOP;',
'',
'    l_counter := l_counter + 1;',
'  END LOOP;',
'',
'  apex_debug.message(''Building Body for Commit API'');',
'',
'',
' /*  SELECT c001 into l_etag',
'   FROM APEX_collections',
' WHERE collection_name = ''UPLOAD_PART_ETAGS'' and SEQ_ID = i',
' */',
'',
'  SELECT count(*) INTO part_count',
'  FROM BLOB_UPLOAD_PARTS',
'  WHERE file_name = l_file_name;',
'  ',
'   apex_debug.message(''part_count: ''|| part_count);',
'  l_body_commit := ''{ "partsToCommit": ['';',
'  FOR i IN 1 .. part_count  LOOP',
'    IF i > 1 THEN',
'      l_body_commit := l_body_commit || '','';',
'    END IF;',
'    SELECT etag into l_etag',
'   FROM BLOB_UPLOAD_PARTS',
'    WHERE file_name = l_file_name and SEQ_ID = i;',
'    l_body_commit := l_body_commit || ''{"partNum": '' || i || '', "etag": "'' || l_etag|| ''"}'';',
'  END LOOP;',
'  l_body_commit := l_body_commit || '']}'';',
'',
'  apex_debug.message(''l_body_commit:'' ||l_body_commit );',
'  apex_debug.message(''l_object_name:'' ||l_object_name );',
'  apex_debug.message(''upload_id:'' ||l_upload_id );',
'',
'  /* apex_web_service.set_request_headers(',
'    p_name_01 => ''Content-Type'',',
'    p_value_01 => ''application/json'',',
'    p_reset => false',
'  );',
' */',
'   l_commit_url :=''https://objectstorage.us-ashburn-1.oraclecloud.com/n/natdcshjumpstartprod/b/multipartupload/u/'' || l_object_name || ''?uploadid='' || l_upload_id;',
'   apex_debug.message(''commit_url:'' ||l_commit_url );',
'  l_commit_response := apex_web_service.make_rest_request(',
'    p_url => ''https://objectstorage.us-ashburn-1.oraclecloud.com/n/natdcshjumpstartprod/b/multipartupload/u/'' || l_object_name || ''?uploadid='' || l_upload_id,',
'    p_http_method => ''POST'',',
'    p_body => l_body_commit,',
'    p_credential_static_id => ''oci_credentials_gen_ai''',
'  );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>15639043303843811
);
wwv_flow_imp.component_end;
end;
/
