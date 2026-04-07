prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 215
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.14'
,p_default_workspace_id=>10135125799703166
,p_default_application_id=>215
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CIDEV'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000000E449444154584763D4DBBFE73FC30002C651078C86C068080C9910D0656367D0E5E6C659626CB97D9BE12D230303ABB03049A5';
wwv_flow_imp.g_varchar2_table(2) := '0AD1E54094A01043BCAA1A4EC3738E1F05CB5DFBF081244750D501BAD2320C979F3E21C9115473C0BAC78F19F63D79040E854B77EF3270AAE10E2DE460A49A03900D5D78FB16C3B2F7EF884A0B1439E0E2FBF70CFA82821816D1C501204B40009430616C';
wwv_flow_imp.g_varchar2_table(3) := '031151B08368EA00986530CB4134BA184D1D00B21057D0C3E282E60E2094BAE8E680D144082B9A4713217AA2A4492224541DA314C5776E135D23125D1413CA7AE4CA8F3A603404464360C04300005F96DA21210D96AA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(46294718117376347)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
