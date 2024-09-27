prompt --application/shared_components/files/loading_js
begin
--   Manifest
--     APP STATIC FILES: 181
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>181
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2063726561746557616974696E67416E696D6174696F6E2829207B0A20202020636F6E737420616E696D31203D206C6F747469652E6C6F6164416E696D6174696F6E287B0A20202020636F6E7461696E65723A20646F63756D656E74';
wwv_flow_imp.g_varchar2_table(2) := '2E676574456C656D656E7442794964282757616974696E67416E696D6174696F6E3127292C0A20202020706174683A206068747470733A2F2F617373657473322E6C6F7474696566696C65732E636F6D2F7061636B616765732F6C6632305F6C6E6B3979';
wwv_flow_imp.g_varchar2_table(3) := '7870372E6A736F6E602C0A2020202072656E64657265723A2027737667272C0A202020206C6F6F703A20747275652C0A202020206175746F706C61793A20747275652C0A202020207D293B0A207D3B0A200A200A2066756E6374696F6E20637265617465';
wwv_flow_imp.g_varchar2_table(4) := '53756363657373416E696D6174696F6E2829207B0A20202020646F63756D656E742E676574456C656D656E7442794964282253756363657373416E696D6174696F6E3122292E696E6E657248544D4C203D2022223B0A20202020636F6E737420616E696D';
wwv_flow_imp.g_varchar2_table(5) := '32203D206C6F747469652E6C6F6164416E696D6174696F6E287B0A2020202020202020636F6E7461696E65723A20646F63756D656E742E676574456C656D656E7442794964282753756363657373416E696D6174696F6E3127292C0A2020202020202020';
wwv_flow_imp.g_varchar2_table(6) := '706174683A206068747470733A2F2F617373657473372E6C6F7474696566696C65732E636F6D2F7061636B616765732F6C6632305F7734646767616A642E6A736F6E602C0A202020202020202072656E64657265723A2027737667272C0A202020202020';
wwv_flow_imp.g_varchar2_table(7) := '20206C6F6F703A2066616C73652C0A20202020202020206175746F706C61793A20747275652C0A20202020202020207D293B0A207D3B0A200A2066756E6374696F6E206372656174654E6F44617461466F756E64416E696D6174696F6E2870696429207B';
wwv_flow_imp.g_varchar2_table(8) := '0A20202020766172206E6466446976203D2024282723272B7069642E6964292E66696E6428272E612D4952522D6E6F446174614D736727293B0A202020206E64664469762E6174747228227374796C65222C20226865696768743A333030707822293B0A';
wwv_flow_imp.g_varchar2_table(9) := '202020206C6F747469652E6C6F6164416E696D6174696F6E287B0A20202020636F6E7461696E65723A206E64664469765B305D2C0A20202020706174683A206068747470733A2F2F61737365747331302E6C6F7474696566696C65732E636F6D2F706163';
wwv_flow_imp.g_varchar2_table(10) := '6B616765732F6C6632305F563279756F4B2E6A736F6E602C0A2020202072656E64657265723A2027737667272C0A202020206C6F6F703A20747275652C0A202020206175746F706C61793A20747275652C0A202020207D293B0A207D0A200A2061706578';
wwv_flow_imp.g_varchar2_table(11) := '2E6A517565727928646F63756D656E74292E72656164792866756E6374696F6E2829207B0A2020200A2020202063726561746557616974696E67416E696D6174696F6E28293B0A200A202020202428272E742D4952522D726567696F6E27292E65616368';
wwv_flow_imp.g_varchar2_table(12) := '2866756E6374696F6E2829207B0A20202020202020206372656174654E6F44617461466F756E64416E696D6174696F6E2874686973293B0A202020207D293B0A200A20202020617065782E6D6573736167652E7365745468656D65486F6F6B73287B0A20';
wwv_flow_imp.g_varchar2_table(13) := '202020202020206265666F726553686F773A2066756E6374696F6E2820704D7367547970652C2070456C656D656E742420297B0A2020202020202020202020206966202820704D736754797065203D3D3D20617065782E6D6573736167652E545950452E';
wwv_flow_imp.g_varchar2_table(14) := '4552524F522029207B0A2020202020202020202020202428272357616974696E67416E696D6174696F6E3127292E6869646528293B20202020202020202020202020200A2020202020202020202020207D0A20202020202020207D0A202020207D293B0A';
wwv_flow_imp.g_varchar2_table(15) := '207D293B';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(39163155926190974)
,p_file_name=>'loading.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/