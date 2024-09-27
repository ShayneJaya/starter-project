prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>'#9: Getting User Data from Social Sign-On'
,p_alias=>'9-GETTING-USER-DATA-FROM-SOCIAL-SIGN-ON'
,p_step_title=>'#9: Getting User Data from Social Sign-On'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(299935551401105930)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<style>',
'        ',
'        .code-block {',
'            ',
'            border: 1px solid #ccc;',
'            padding: 15px;',
'            margin-bottom: 20px;',
'            overflow: auto;',
'        }',
'        .code-block pre {',
'            margin: 0;',
'        }',
'        h2 {',
'            font-size: 1.5em;',
'            margin-bottom: 10px;',
'        }',
'        ul {',
'            list-style-type: disc; /* Default bullet style */',
'            padding-left: 20px;',
'        }',
'        li {',
'            margin-bottom: 10px; /* Space between bullet points */',
'        }',
'    </style>',
'<body>',
'    <ul>',
'        <li>Examine Payload from Single Sign on to see what information is being passed.</li>',
'        <li>Use JSON payload information to set global items upon login to the session.</li>',
'        <li>Start a new session, and use the Monitor Activity -> Active Session for Authentication Callback</li>',
'        <li>Add these attributes to addtion user attributes</li>',
'    </ul>',
'    <div class="code-block">',
'        <h2>Exmple Payload</h2>',
'        <pre>',
'            {',
'  "user_tz": "America/Chicago",',
'  "client_ocid": "ocid1.*********************zqwgija",',
'  "at_hash": "Pem3*********************bKOmmTtQ",',
'  "sub": "shayne.jayawardene@oracle.com",',
'  "user_locale": "en",',
'  "idp_name": "UserNamePassword",',
'  "sidle": 480,',
'  "idp_guid": "UserNamePassword",',
'  "amr": [',
'    "USERNAME_PASSWORD"',
'  ],',
'  "iss": "https://identity.oraclecloud.com/",',
'  "ca_ocid": "ocid1.tenancy.oc*********************7ybflk5utmt5cwwtdukuphkmise4h3hq",',
'  "user_tenantname": "idcs-f899*********************5c90fe2f",',
'  "client_id": "69c78173*********************f12c",',
'  "sid": "aa4dcd1a9f244*********************806c3",',
'  "domain_id": "ocid1.domain.oc1..aaaaaaa*********************tehwyq*********************zca",',
'  "authn_strength": "2",',
'  "azp": "69c781731538*********************3f12c",',
'  "auth_time": 1717622013,',
'  "user_ocid": "ocid1.user.oc1..aaaaa*********************zclxiesf3mrthapxdq",',
'  "session_exp": 1717650813,',
'  "client_tenantname": "idcs-f899*********************b435c90fe2f",',
'  "region_name": "us-phoenix-idcs-2~,p_iss=>,p_aud=>69c78*********************04b4fc9cc*********************12c,p_leeway_seconds=>60,c_now=>1717622017"',
'}',
'        </pre>',
'    </div>',
'</body>',
'</html>',
'',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
