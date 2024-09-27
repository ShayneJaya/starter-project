prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_name=>'TEST FILE SPLIT'
,p_alias=>'TEST-FILE-SPLIT'
,p_step_title=>'TEST FILE SPLIT'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://unpkg.com/pdf-lib@1.17.1/dist/pdf-lib.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.16.105/pdf.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.16.105/pdf.worker.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function countPdfPages() {',
'    const fileInput = document.getElementById(''P31_FILE_BLOB'');',
'    const file = fileInput.files[0];',
'    if (!file) {',
'        alert(''Please select a PDF file.'');',
'        return;',
'    }',
'',
'    try {',
'        const fileArrayBuffer = await file.arrayBuffer();',
'        const pdfDoc = await PDFLib.PDFDocument.load(fileArrayBuffer);',
'',
'        // Get page count',
'        const pageCount = pdfDoc.getPageCount();',
'        apex.item("P31_PAGE_COUNT").setValue(pageCount);',
'       ',
'',
'        // Get page dimensions',
'        for (let i = 0; i < pageCount; i++) {',
'            const page = pdfDoc.getPage(i);',
'            console.log(`Page ${i + 1}:`);',
'            console.log(''Width:'', page.getWidth());',
'            console.log(''Height:'', page.getHeight());',
'        }',
'',
'    } catch (error) {',
'        console.error(''Error processing PDF file:'', error);',
'       ',
'    }',
'}',
'',
'async function extractAndSendPages() {',
'    const fileInput = document.getElementById(''P31_FILE_BLOB'');',
'    const file = fileInput.files[0];',
'    if (!file) {',
'        alert(''Please select a PDF file.'');',
'        return;',
'    }',
'',
'    try {',
'        const fileArrayBuffer = await file.arrayBuffer();',
'        const pdfDoc = await PDFLib.PDFDocument.load(fileArrayBuffer);',
'        const pageCount = pdfDoc.getPageCount();',
'        apex.item("P31_PAGE_COUNT").setValue(pageCount);',
'',
'        for (let i = 0; i < pageCount; i++) {',
'            const page = pdfDoc.getPage(i);',
'',
'            // Create a new PDF document for each page',
'            const newPdfDoc = await PDFLib.PDFDocument.create();',
'            const [copiedPage] = await newPdfDoc.copyPages(pdfDoc, [i]);',
'            newPdfDoc.addPage(copiedPage);',
'',
'            // Serialize the new PDF document to bytes',
'            const pageBytes = await newPdfDoc.save();',
'',
'            // Log the page number',
'            console.log(`Page Number: ${i + 1}`);',
'',
'            // Log the page data (as base64 for readability)',
'            const pageBlob = new Blob([pageBytes], { type: ''application/pdf'' });',
'            const reader = new FileReader();',
'            reader.onloadend = function() {',
'                console.log(`Page Data (base64): ${reader.result.split('','')[1]}`);',
'            };',
'            reader.readAsDataURL(pageBlob);',
'        }',
'        ',
'    } catch (error) {',
'        console.error(''Error processing PDF file:'', error);',
'    }',
'}',
'',
'',
'',
'',
'async function extractAndSendPageNumbers2() {',
'    const fileInput = document.getElementById(''P31_FILE_BLOB'');',
'    const file = fileInput.files[0];',
'    if (!file) {',
'        alert(''Please select a PDF file.'');',
'        return;',
'    }',
'',
'    try {',
'        const fileArrayBuffer = await file.arrayBuffer();',
'        const pdfDoc = await PDFLib.PDFDocument.load(fileArrayBuffer);',
'        const pageCount = pdfDoc.getPageCount();',
'          apex.item("P31_PAGE_COUNT").setValue(pageCount);',
'        for (let i = 0; i < pageCount; i++) {',
'            const pageNumber = i + 1;',
'',
'            // Call the APEX AJAX process',
'            apex.server.process("INSERT_PAGE_NUMBER", {',
'                x01: pageNumber',
'            }, {',
'                success: function(pData) {',
'                    console.log(`Page ${pageNumber} sent successfully.`);',
'                },',
'                error: function(xhr, status, error) {',
'                    console.error(`Failed to send page ${pageNumber}:`, error);',
'                }',
'            });',
'        }',
'',
'    } catch (error) {',
'        console.error(''Error processing PDF file:'', error);',
'    }',
'}',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex_disabled{opacity:1;}',
'',
'/* td[headers=image_width] img{',
'    width: 100px !important;',
'    height: 150px !important;',
'   border-radius: 4px;',
'',
'} */',
'',
'img{',
'    width:200px;',
'    height: 250px;',
'border-radius: 4px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17533805665987433)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17546067256364305)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(32866742071813925)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(20466298015942229)
,p_name=>'Download Report'
,p_template=>wwv_flow_imp.id(32923568116813951)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    UPLOAD_ID,',
'    FILENAME,',
'    FILE_MIMETYPE,',
'    PAGE_BLOB,',
'    DBMS_LOB.GETLENGTH(PAGE_BLOB) IMAGE,',
'    dbms_lob.getlength(PAGE_BLOB) file_size,',
'    dbms_lob.getlength(PAGE_BLOB) download',
'from PDF_PAGES',
'order by UPLOAD_ID desc',
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
 p_id=>wwv_flow_imp.id(21144537792414302)
,p_query_column_id=>1
,p_column_alias=>'UPLOAD_ID'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21144659457414303)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>30
,p_column_heading=>'Filename'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21144706603414304)
,p_query_column_id=>3
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>40
,p_column_heading=>'File Mimetype'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21144988881414306)
,p_query_column_id=>5
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>10
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:PDF_PAGES:PAGE_IMAGE:UPLOAD_ID::::::::'
,p_column_alignment=>'CENTER'
,p_report_column_width=>100
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21145084618414307)
,p_query_column_id=>6
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>60
,p_column_heading=>'File Size'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21145103253414308)
,p_query_column_id=>7
,p_column_alias=>'DOWNLOAD'
,p_column_display_sequence=>70
,p_column_heading=>'Download'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:PDF_PAGES:PAGE_BLOB:UPLOAD_ID::FILE_MIMETYPE:FILENAME:::attachment::'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20465951169942226)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(17546067256364305)
,p_button_name=>'PAGEDATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(33006525109813997)
,p_button_image_alt=>'Split My PDF into Individual Pages'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17303809611196536)
,p_name=>'P31_FILE_BLOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17546067256364305)
,p_prompt=>'File Blob'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'.pdf'
,p_attribute_12=>'DROPZONE_INLINE'
,p_attribute_13=>'Your File'
,p_attribute_14=>'Drop a PDF File'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17545933792364304)
,p_name=>'P31_PAGE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17546067256364305)
,p_prompt=>'Page Count'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20466029819942227)
,p_name=>'Call Library'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20465951169942226)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20466149312942228)
,p_event_id=>wwv_flow_imp.id(20466029819942227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function splitPDFpages() {',
'    const fileInput = document.getElementById(''P31_FILE_BLOB'');',
'    const file = fileInput.files[0];',
'    if (!file) {',
'        alert(''Please select a PDF file.'');',
'        return;',
'    }',
'     try {',
'        const fileArrayBuffer = await file.arrayBuffer();',
'        const pdfDoc = await PDFLib.PDFDocument.load(fileArrayBuffer);',
'        //Get total page count of file',
'        const pageCount = pdfDoc.getPageCount();',
'        //Diplay count to user',
'        apex.item("P31_PAGE_COUNT").setValue(pageCount);',
'        //get file base and extension',
'        const fileName = file.name;',
'        const baseName = fileName.slice(0, fileName.lastIndexOf(''.''));',
'        const extension = fileName.slice(fileName.lastIndexOf(''.''))',
'       //define pdf to base64clob functio',
'',
'         //loop through each page',
'        for (let i = 0; i < pageCount; i++) {',
'            const page = pdfDoc.getPage(i);',
'            //create new pdf document instance with single page',
'            const newPdfDoc = await PDFLib.PDFDocument.create();',
'            const [copiedPage] = await newPdfDoc.copyPages(pdfDoc, [i]);',
'            newPdfDoc.addPage(copiedPage);',
'            // serialize the pdf document to bytes',
'            const pageBytes = await newPdfDoc.save();',
'            //console.log(new Uint8Array(pageBytes));',
'            const base64String = await newPdfDoc.saveAsBase64()',
'            console.log(base64String);',
'            ',
'            const newFileName = `${baseName}_${i + 1}${extension}`;',
'',
'            console.log(`Page Number: ${i + 1}`);',
'            console.log(`Size of Base64 Data: ${base64String.length} characters`);',
'            console.log(`New File Name: ${newFileName}`);',
'            // Call the APEX AJAX process',
'            apex.server.process("AJAXCALL", {',
'                x01: i + 1,',
'                x02:newFileName,',
'                x03:file.type,',
'                p_clob_01: base64String, //send a clob',
'            }, {',
'                success: function(pData) {',
'                    console.log(`Page ${i + 1} sent successfully.`);',
'                },',
'                error: function(xhr, status, error) {',
'                    console.error(`Failed to send page ${i + 1}:`, error);',
'                }',
'            });',
'        }',
'    } catch (error) {',
'        console.error(''Error processing PDF file:'', error);',
'    }',
'}',
'splitPDFpages() //call above function',
''))
,p_build_option_id=>wwv_flow_imp.id(32829478949813884)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20932820060532318)
,p_event_id=>wwv_flow_imp.id(20466029819942227)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function splitPDFpages() {',
'    const fileInput = document.getElementById(''P31_FILE_BLOB'');',
'    const file = fileInput.files[0];',
'    if (!file) {',
'        alert(''Please select a PDF file.'');',
'        return;',
'    }',
'',
'    // Include the PDF.js library',
'    const pdfjsLib = window[''pdfjs-dist/build/pdf''];',
'     try {',
'        const fileArrayBuffer = await file.arrayBuffer();',
'        const pdfDoc = await PDFLib.PDFDocument.load(fileArrayBuffer);',
'        //Get total page count of file',
'        const pageCount = pdfDoc.getPageCount();',
'        //Diplay count to user',
'        apex.item("P31_PAGE_COUNT").setValue(pageCount);',
'        //get file base and extension',
'        const fileName = file.name;',
'        const baseName = fileName.slice(0, fileName.lastIndexOf(''.''));',
'        const extension = fileName.slice(fileName.lastIndexOf(''.''))',
'       //define pdf to base64clob functio',
'        const separator = ''---SEPARATOR---'';',
'         //loop through each page',
'        for (let i = 0; i < pageCount; i++) {',
'            const page = pdfDoc.getPage(i);',
'            //create new pdf document instance with single page',
'            const newPdfDoc = await PDFLib.PDFDocument.create();',
'            const [copiedPage] = await newPdfDoc.copyPages(pdfDoc, [i]);',
'            newPdfDoc.addPage(copiedPage);',
'            // serialize the pdf document to bytes',
'            const pageBytes = await newPdfDoc.save();',
'            //console.log(new Uint8Array(pageBytes));',
'            const base64String = await newPdfDoc.saveAsBase64()',
'            ',
'            const imageBase64 = await getPageThumbnail(fileArrayBuffer, i);',
'            //console.log(imageBase64);',
'            const newFileName = `${baseName}_${i + 1}${extension}`;',
'            const combinedClob = `${base64String}${separator}${imageBase64}`;',
'            //console.log(`Page Number: ${i + 1}`);',
'            //console.log(`Size of Base64 Data: ${base64String.length} characters`);',
'            //console.log(`New File Name: ${newFileName}`);',
'            // Call the APEX AJAX process',
'            apex.server.process("NewAJAX", {',
'                x01: i + 1,',
'                x02:newFileName,',
'                x03:file.type,',
'                p_clob_01: combinedClob, //send a clob',
'            }, {',
'                success: function(pData) {',
'                    console.log(`Page ${i + 1} sent successfully.`);',
'                },',
'                error: function(xhr, status, error) {',
'                    console.error(`Failed to send page ${i + 1}:`, error);',
'                }',
'            });',
'        }',
'    } catch (error) {',
'        console.error(''Error processing PDF file:'', error);',
'    }',
'}',
'',
'',
'',
'async function getPageThumbnail(pdfArrayBuffer, pageIndex) {',
'    const pdfjsLib = window[''pdfjs-dist/build/pdf''];',
'    const loadingTask = pdfjsLib.getDocument({ data: pdfArrayBuffer });',
'    const pdf = await loadingTask.promise;',
'    const page = await pdf.getPage(pageIndex + 1);',
'    const viewport = page.getViewport({ scale: 1.0 });',
'    const canvas = document.createElement(''canvas'');',
'    const context = canvas.getContext(''2d'');',
'    canvas.width = viewport.width;',
'    canvas.height = viewport.height;',
'    const renderContext = {',
'        canvasContext: context,',
'        viewport: viewport',
'    };',
'    await page.render(renderContext).promise;',
'    const imageBase64 = canvas.toDataURL(''image/png'').split('','')[1]; // Get base64 part',
'    return imageBase64;',
'}',
'',
'splitPDFpages() //call above function',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20465814347942225)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAXCALL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_page_number NUMBER := apex_application.g_x01;',
'    v_filename varchar2(512) :=apex_application.g_x02;',
'    v_file_mimetype varchar2(512) :=apex_application.g_x03;',
'    v_base64_clob CLOB;',
'    v_page_data   BLOB; ',
'   ',
'BEGIN',
'    APEX_DEBUG.ENABLE(apex_debug.c_log_level_info);',
'    v_base64_clob := apex_application.g_clob_01;',
'    apex_debug.message(''Page Number: '' || v_page_number);',
'    apex_debug.message(''Base64CLOB Length: '' || dbms_lob.getlength(v_base64_clob));',
'    -- Convert the base64 CLOB back to a BLOB',
'    v_page_data :=  apex_web_service.clobbase642blob(v_base64_clob);',
'    apex_debug.message(''BLOB Length: '' || dbms_lob.getlength(v_page_data));',
'    -- Insert values',
'    INSERT INTO pdf_pages (page_number,PAGE_BLOB, PAGE_DATA_CLOB,FILE_MIMETYPE,FILENAME)',
'    VALUES (v_page_number,v_page_data, v_base64_clob,v_file_mimetype,v_filename);',
'    -- Return a JSON response',
'    htp.p(''{"status":"success"}'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>20465814347942225
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20932723080532317)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NewAJAX'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_clob      CLOB;',
'    l_separator VARCHAR2(20) := ''---SEPARATOR---''; -- Unique separator',
'    l_pdf_base64 CLOB;',
'    l_image_base64 CLOB;',
'    l_pdf_blob   BLOB;',
'    l_image_blob BLOB;',
'    ',
'    v_page_number NUMBER := apex_application.g_x01;',
'    v_filename varchar2(512) :=apex_application.g_x02;',
'    v_file_mimetype varchar2(512) :=apex_application.g_x03;',
'    v_base64_clob CLOB;',
'    v_page_data   BLOB; ',
'',
'     v_separator_pos NUMBER;',
'    v_clob_length    NUMBER;',
'BEGIN',
'    -- Get the combined CLOB from the AJAX call',
'    l_clob := apex_application.g_clob_01;',
'     v_separator_pos := INSTR(l_clob, l_separator);',
'    ',
'    IF v_separator_pos > 0 THEN',
'        -- Extract PDF base64',
'        l_pdf_base64 := SUBSTR(l_clob, 1, v_separator_pos - 1);',
'',
'        -- Extract Image base64',
'        l_image_base64 := SUBSTR(l_clob, v_separator_pos + LENGTH(l_separator));',
'',
'        -- Convert base64 to BLOB for PDF',
'        l_pdf_blob := apex_web_service.clobbase642blob(l_pdf_base64);',
'',
'        -- Convert base64 to BLOB for Image',
'        l_image_blob := apex_web_service.clobbase642blob(l_image_base64);',
'    -- Split the combined CLOB into PDF and image parts',
'',
'',
'',
'    -- For example:',
'     INSERT INTO pdf_pages (page_number,PAGE_BLOB, PAGE_DATA_CLOB,FILE_MIMETYPE,FILENAME,PAGE_IMAGE)',
'    VALUES (v_page_number,l_pdf_blob, l_pdf_base64,v_file_mimetype,v_filename,l_image_blob);',
'      htp.p(''{"status":"success"}'');',
' ELSE',
'        RAISE_APPLICATION_ERROR(-20001, ''Separator not found in CLOB.'');',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        -- Handle errors',
'        RAISE;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>20932723080532317
);
wwv_flow_imp.component_end;
end;
/
