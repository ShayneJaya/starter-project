prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_name=>'Ingest Formatted Excel FIle'
,p_alias=>'INGEST-FORMATTED-EXCEL-FILE'
,p_step_title=>'Ingest Formatted Excel FIle'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71763887600456341)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71060807631779607)
,p_button_sequence=>20
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71060702827779606)
,p_name=>'P28_FILE_UPLOAD'
,p_item_sequence=>10
,p_prompt=>'File Upload'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71060685061779605)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_blob      blob;',
'  v_filename  varchar2(4000) := :P28_FILE_UPLOAD; ',
'  v_file_id   number := null;                 ',
'  v_prev_sheet varchar2(4000) := null;',
'  v_prev_row   number := null;',
'',
'  ',
'  procedure log_msg(p_msg in varchar2) is',
'  begin',
'    begin',
'      apex_debug.message(p_msg);',
'    exception',
'      when others then',
'        dbms_output.put_line(p_msg);',
'    end;',
'  end;',
'',
'begin',
'  ',
'  begin',
'    ',
'    select blob_content',
'      into v_blob',
'      from apex_application_temp_files',
'     where name = v_filename',
'       and rownum = 1;',
'  exception',
'    when no_data_found then',
'      ',
'      if v_file_id is not null then',
'        select blob_content',
'          into v_blob',
'          from apex_application_temp_files',
'         where id = v_file_id;',
'      else',
'        log_msg(''ERROR: Uploaded file not found in APEX_APPLICATION_TEMP_FILES (name=''||nvl(v_filename,''NULL'')||'')'');',
'        return;',
'      end if;',
'  end;',
'',
'  log_msg(''=== Begin Excel debug output for file: ''||nvl(v_filename,''(unknown)'')||'' ==='');',
'',
'  ',
'  for c in (',
'    select * ',
'      from table(as_read_xlsx_clob.read(v_blob)) ',
'     order by sheet_nr, row_nr, col_nr',
'  )',
'  loop',
'    ',
'    if v_prev_sheet is null or v_prev_sheet != c.sheet_name then',
'      log_msg('' '');',
'      log_msg(''*** Sheet: '' || c.sheet_name || '' (index=''||c.sheet_nr||'') ***'');',
'      v_prev_sheet := c.sheet_name;',
'      v_prev_row := null;',
'    end if;',
'',
'    ',
'    if v_prev_row is null or v_prev_row != c.row_nr then',
'      log_msg(''  Row '' || to_char(c.row_nr) || '':'');',
'      v_prev_row := c.row_nr;',
'    end if;',
'',
'    ',
'    declare',
'      v_val varchar2(4000);',
'      v_str_clob clob := c.string_val;',
'    begin',
'      if c.cell_type = ''S'' then',
'        if v_str_clob is null then',
'          v_val := ''(null)'';',
'        else',
'          v_val := dbms_lob.substr(v_str_clob, 4000, 1);',
'          if dbms_lob.getlength(v_str_clob) > 4000 then',
'            v_val := v_val || ''... (clob truncated)'';',
'          end if;',
'        end if;',
'      elsif c.cell_type = ''N'' then',
'        v_val := case when c.number_val is null then ''(null)'' else to_char(c.number_val) end;',
'      elsif c.cell_type = ''D'' then',
'        v_val := case when c.date_val is null then ''(null)'' else to_char(c.date_val,''YYYY-MM-DD HH24:MI:SS'') end;',
'      else',
'        v_val := nvl(dbms_lob.substr(nvl(v_str_clob, to_char(c.number_val)),4000,1), ''(null)'');',
'      end if;',
'',
'      ',
'      if c.formula is not null then',
'        v_val := v_val || '' [formula=''|| c.formula ||'']'';',
'      end if;',
'',
'      ',
'      log_msg(''    '' || lpad(c.cell,6) || '' | type='' || c.cell_type || '' | '' || v_val );',
'    end;',
'  end loop;',
'',
'  log_msg(''=== End Excel debug output ==='');',
'',
'exception',
'  when others then',
'    log_msg(''ERROR reading/parsing file: '' || sqlerrm);',
'    raise;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>71060685061779605
);
wwv_flow_imp.component_end;
end;
/
