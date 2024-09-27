prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_name=>'Dynamic Content'
,p_alias=>'DYNAMIC-CONTENT'
,p_step_title=>'Dynamic Content'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18659268344533417)
,p_plug_name=>'Basic Dynamic Content'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>30
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_result CLOB := ''<h4>My Table:</h4>'';',
'BEGIN',
'    l_result := l_result || ''<table border="1" cellspacing="0" cellpadding="5">'';',
'    l_result := l_result || ''<tr><th>Customer First Name</th><th>Customer Last Name</th><th>Customer Email</th></tr>'';',
'',
'    FOR rec IN (SELECT CUST_FIRST_NAME, CUST_LAST_NAME, CUST_EMAIL ',
'                FROM OEHR_CUSTOMERS',
'                WHERE ROWNUM <= 4)',
'    LOOP',
'        l_result := l_result || ''<tr>'' ||',
'                     ''<td>'' || apex_escape.html(rec.CUST_FIRST_NAME) || ''</td>'' ||',
'                     ''<td>'' || apex_escape.html(rec.CUST_LAST_NAME) || ''</td>'' ||',
'                     ''<td>'' || apex_escape.html(rec.CUST_EMAIL) || ''</td>'' ||',
'                     ''</tr>'';',
'    END LOOP;',
'',
'    l_result := l_result || ''</table>'';',
'',
'    RETURN l_result;',
'END;',
''))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18746382426774675)
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
 p_id=>wwv_flow_imp.id(19009370110309744)
,p_plug_name=>'My Customer'
,p_region_name=>'DC'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>40
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_result CLOB;',
'BEGIN',
'    ',
'    l_result := ''<div style="border: 1px solid #ccc; border-radius: 10px; padding: 15px; max-width: 400px; margin: 0 auto; background-color: #f9f9f9; color: #2c3e50; font-family: Arial, sans-serif;">'';',
'',
'    ',
'    l_result := l_result || ''<div style="text-align: center; margin-bottom: 15px;">'' ||',
'                            ''<img src="https://mma.prnewswire.com/media/467598/Oracle_Logo.jpg?p=facebook" alt="Customer Icon" style="border-radius: 50%; width: 100px; height: 100px;">'' ||',
'                            ''</div>'';',
'',
'    ',
'    FOR rec IN (SELECT CUSTOMER_ID, CUST_FIRST_NAME, CUST_LAST_NAME, STREET_ADDRESS, ',
'                       POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID, PHONE_NUMBER, ',
'                       CUST_EMAIL, CREDIT_LIMIT',
'                  FROM OEHR_CUSTOMERS',
'                 WHERE CUSTOMER_ID = :P27_CUSTOMER_ID) ',
'    LOOP',
'        ',
'        l_result := l_result || ''<h2 style="text-align: center; margin-bottom: 10px;">'' || ',
'                                apex_escape.html(rec.CUST_FIRST_NAME) || '' '' || ',
'                                apex_escape.html(rec.CUST_LAST_NAME) || ',
'                                ''</h2>'';',
'',
'        ',
'        l_result := l_result || ''<p style="margin-bottom: 10px;"><strong>Email:</strong> '' || ',
'                                apex_escape.html(rec.CUST_EMAIL) || ''<br>'' || ',
'                                ''<strong>Phone:</strong> '' || apex_escape.html(rec.PHONE_NUMBER) || ',
'                                ''</p>'';',
'',
'        ',
'        l_result := l_result || ''<p style="margin-bottom: 10px;"><strong>Address:</strong> '' || ',
'                                apex_escape.html(rec.STREET_ADDRESS) || '', '' || ',
'                                apex_escape.html(rec.CITY) || '', '' || apex_escape.html(rec.STATE_PROVINCE) || ',
'                                '', '' || apex_escape.html(rec.POSTAL_CODE) || '', '' || ',
'                                apex_escape.html(rec.COUNTRY_ID) || ',
'                                ''</p>'';',
'',
'        ',
'        l_result := l_result || ''<p style="margin-top: 15px; font-size: 14px;"><strong>Credit Limit:</strong> $'' || ',
'                                TO_CHAR(rec.CREDIT_LIMIT, ''999,999.99'') || ',
'                                ''</p>'';',
'    END LOOP;',
'',
'    ',
'    l_result := l_result || ''</div>'';',
'',
'    ',
'    RETURN l_result;',
'END;',
''))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P27_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19009780813309748)
,p_plug_name=>'Orders'
,p_region_name=>'DC2'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>50
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_result CLOB;',
'BEGIN',
'    -- Initialize the HTML structure for a modern table layout',
'    l_result := ''<style>',
'                    /* Table styling */',
'                    .order-table {',
'                        width: 100%;',
'                        border-collapse: collapse;',
'                        font-family: Arial, sans-serif;',
'                    }',
'                    .order-table th, .order-table td {',
'                        padding: 12px 15px;',
'                        text-align: left;',
'                        border-bottom: 1px solid #ddd;',
'                    }',
'                    .order-table th {',
'                        background-color: #2c3e50;',
'                        color: white;',
'                        text-transform: uppercase;',
'                    }',
'                    .order-table tr:hover {',
'                        background-color: #f1f1f1;',
'                    }',
'                    /* Hover effect using JavaScript */',
'                    .order-info {',
'                        font-size: 14px;',
'                        color: #34495e;',
'                        cursor: pointer;',
'                        transition: background-color 0.3s ease;',
'                    }',
'                    .order-info:hover {',
'                        background-color: #e74c3c;',
'                        color: white;',
'                    }',
'                </style>'';',
'',
'    -- Start table',
'    l_result := l_result || ''<table class="order-table">',
'                                <thead>',
'                                    <tr>',
'                                        <th>Order ID</th>',
'                                        <th>Order Date</th>',
'                                        <th>Order Mode</th>',
'                                        <th>Order Status</th>',
'                                        <th>Order Total</th>',
'                                    </tr>',
'                                </thead>',
'                                <tbody>'';',
'',
'    -- Query to get order information',
'    FOR rec IN (SELECT ORDER_ID, TO_CHAR(ORDER_DATE, ''DD-Mon-YYYY'') AS ORDER_DATE, ',
'                       ORDER_MODE, ORDER_STATUS, ',
'                       TO_CHAR(ORDER_TOTAL, ''999,999.99'') AS ORDER_TOTAL',
'                  FROM OEHR_ORDERS o',
'                  Join OEHR_CUSTOMERS c on c.CUSTOMER_ID= o.CUSTOMER_ID',
'                 WHERE c.CUSTOMER_ID = :P27_CUSTOMER_ID -- Replace :P1_CUSTOMER_ID with the actual item for the Customer ID',
'                 ORDER BY ORDER_DATE DESC) ',
'    LOOP',
'        -- Add rows with hover effect',
'        l_result := l_result || ''<tr class="order-info">',
'                                    <td>'' || apex_escape.html(rec.ORDER_ID) || ''</td>',
'                                    <td>'' || apex_escape.html(rec.ORDER_DATE) || ''</td>',
'                                    <td>'' || apex_escape.html(rec.ORDER_MODE) || ''</td>',
'                                    <td>'' || apex_escape.html(rec.ORDER_STATUS) || ''</td>',
'                                    <td>$'' || apex_escape.html(rec.ORDER_TOTAL) || ''</td>',
'                                </tr>'';',
'    END LOOP;',
'',
'    -- Close table structure',
'    l_result := l_result || ''</tbody></table>'';',
'',
'    -- JavaScript for additional interactivity (e.g., displaying more details on hover)',
'    l_result := l_result || ''<script>',
'                                document.querySelectorAll(".order-info").forEach(function(row) {',
'                                    row.addEventListener("mouseover", function() {',
'                                        row.style.backgroundColor = "#3498db";',
'                                        row.style.color = "#fff";',
'                                    });',
'                                    row.addEventListener("mouseout", function() {',
'                                        row.style.backgroundColor = "";',
'                                        row.style.color = "";',
'                                    });',
'                                });',
'                             </script>'';',
'',
'    -- Return the generated CLOB content',
'    RETURN l_result;',
'END;',
''))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P27_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19009437261309745)
,p_name=>'P27_CUSTOMER_ID'
,p_item_sequence=>10
,p_prompt=>'Customer Id'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.CUST_FIRST_NAME || '' '' || c.CUST_LAST_NAME AS d, ',
'       c.CUSTOMER_ID AS r',
'FROM OEHR_CUSTOMERS c',
'INNER JOIN OEHR_ORDERS o',
'ON c.CUSTOMER_ID = o.CUSTOMER_ID'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19009588090309746)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CUSTOMER_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19009636440309747)
,p_event_id=>wwv_flow_imp.id(19009588090309746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("DC").refresh();',
'apex.region("DC2").refresh();'))
);
wwv_flow_imp.component_end;
end;
/
