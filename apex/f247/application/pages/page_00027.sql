prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_name=>'CREATE_VCN'
,p_alias=>'CREATE-VCN'
,p_step_title=>'CREATE_VCN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71756153138719766)
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
 p_id=>wwv_flow_imp.id(71060442112779603)
,p_button_sequence=>10
,p_button_name=>'Create_VCN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Vcn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71060512178779604)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create VCN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response   clob;',
'    l_body           CLOB := q''|{',
'    "cidrBlock":"10.0.0.0/16",',
'    "compartmentId":"ocid1.compartment.oc1..aaaaaaaa2lqxwzcdrjv53inyxhsdnxhlh2x55slnoolx4il5lungswoqf57a",',
'    "displayName":"MyVcn"',
'  }|'';',
'  l_body_raw       RAW(32767);',
'  l_digest_raw     RAW(32);',
'  l_b64_raw        RAW(32767);',
'  l_content_sha256 VARCHAR2(4000);',
'  l_content_len    INTEGER;',
'  l_date_rfc1123   VARCHAR2(200);',
'    l_url        varchar2(4000) := ''https://iaas.us-ashburn-1.oraclecloud.com/20160918/vncs'';',
'begin',
'',
'    -- 1) Convert to raw bytes AL32UTF8',
'  l_body_raw := UTL_I18N.STRING_TO_RAW(l_body, ''AL32UTF8'');',
'',
'  -- 2) SHA-256 digest of the raw bytes',
'  l_digest_raw := DBMS_CRYPTO.HASH(l_body_raw, DBMS_CRYPTO.HASH_SH256);',
'',
'  -- 3) Base64 encode the digest for x-content-sha256',
'  l_b64_raw := UTL_ENCODE.BASE64_ENCODE(l_digest_raw);',
'  l_content_sha256 := RTRIM(UTL_RAW.CAST_TO_VARCHAR2(l_b64_raw)); -- remove any newline',
'',
'  -- 4) content-length in bytes',
'  l_content_len := UTL_RAW.LENGTH(l_body_raw);',
'',
'  -- 5) Date in RFC-1123 (example: Fri, 31 Oct 2025 17:53:50 GMT)',
'  l_date_rfc1123 := TO_CHAR(SYS_EXTRACT_UTC(SYSTIMESTAMP),',
'     ''Dy, DD Mon YYYY HH24:MI:SS "GMT"'', ''NLS_DATE_LANGUAGE=AMERICAN'');',
'',
'',
'    apex_web_service.set_request_headers(',
'        p_name_01        => ''Content-Type'',',
'        p_value_01       => ''application/json'',',
'        p_name_02        => ''User-Agent'',',
'        p_value_02       => ''APEX'' ,',
'        p_name_03        => ''Date'',',
'        p_value_03       => l_date_rfc1123,',
'        p_name_04        => ''Authorization'',',
'        p_value_04       => ''Signature version="1",keyId="ocid1.tenancy.oc1..aaaaaaaapox4qeg75qpeqjruuqxe7ybflk5utmt5cwwtdukuphkmise4h3hq/ocid1.user.oc1..aaaaaaaaeleuxa2pwft55tgsb4vpcri4qsnldyv3tnzclxiesf3mrthapxdq/40:bc:ef:7a:f2:c0:84:96:46:cb:b2:6d'
||':4e:cf:b8:52",algorithm="rsa-sha256",headers="(request-target) date host x-content-sha256 content-type content-length",signature="LWYZPV1tLtqlg7Y/yAawd9W8hRI+2De1HLw9Cc/2ez8ZKGMWYUQ09gA0VRImh13Gg8AStdBN2drrYljOpurQUZnPDwNN2/X4TmRzBCESDHIFKV+YUSfKL8F9'
||'pxvbH23PX22RhDakUHoEDDBQLlIGnGbnpBZlXZ19m7nxwhoJc+5tthXucG0zPTNXNFNQgPQX/LUyZzXrYZe7WwL0DeNCL+ZxVjiY8+g1cUSLtKmUjpLXqydPOBW5q3ZaMuodXKqtYdJOTVxTILZoueXulhDtuMjGNuSC5fUk6FSFG/y0eqPLfW21Ipsc1AdXH38guc/9lz8QdjMQOoUkfSTnzyqfgQ=="'',',
'        p_name_05        => ''x-content-sha256'',',
'        p_value_05       => l_content_sha256);',
'',
'    -- make the REST API call with POST method and payload',
'    l_response := apex_web_service.make_rest_request(',
'        p_url         => l_url,',
'        p_http_method => ''POST'',',
'        p_body        => l_body,',
'        p_credential_static_id => ''oci_credentials_gen_ai''',
'    );',
'',
'    -- output the response to debug menu',
'    apex_debug.message(''API Response: '' || l_response);',
'',
'exception',
'    when others then',
'        apex_debug.error(''Error in API call: '' || sqlerrm);',
'        raise;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>71060512178779604
);
wwv_flow_imp.component_end;
end;
/
