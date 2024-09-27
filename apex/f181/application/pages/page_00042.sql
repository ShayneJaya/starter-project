prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'#20 How to find out which Items changed in APEX'
,p_alias=>'20-HOW-TO-FIND-OUT-WHICH-ITEMS-CHANGED-IN-APEX'
,p_step_title=>'#20 How to find out which Items changed in APEX'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22780234712266291)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22064992043579337)
,p_name=>'P42_NOTES'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'# Topic Title',
'',
'How to find out which Items changed in APEX',
'',
'## Objective',
'',
'',
'#### Summary:',
'In this episode of APEX Instant Tips, Hayden and Anton discuss a common issue in Oracle APEX where users may receive a generic "unsaved changes" warning when navigating away from a page without knowing exactly what was changed. The original problem w'
||'as the lack of clarity on which specific items had been modified, making it difficult for users to decide whether to save or discard their changes.',
'',
'#### Solution:',
'Anton introduced a solution involving JavaScript and Oracle APEX APIs to enhance the user experience. His script detects changes on specific items and provides a message indicating which items were altered. The key points of the solution include:',
'',
'JavaScript API: The script loops through the page items to track changes and provides feedback on which item has been modified.',
'Event Handling: It listens for the "on unload" event to detect when the user tries to navigate away from the page, and only shows the warning when changes are unsaved.',
'Selective Execution: By implementing this through dynamic actions and server-side conditions, the solution runs only on pages where the "Warn on Unsaved Changes" setting is enabled.',
'#### Tips & Tricks:',
'JavaScript in APEX: The JavaScript API in Oracle APEX is user-friendly and well-documented, making it easy to build custom enhancements like this.',
'Dynamic Actions: Instead of having the script run on every page, you can use a dynamic action on Page Zero with a server-side condition to run the code only on relevant pages.',
'Community Collaboration: This tip builds on earlier discussions and blog posts by other developers, such as Martin De Souza, highlighting the importance of contributing to ongoing conversations in the APEX community.',
'Overall, this episode provides a practical solution to a common problem and includes helpful suggestions on how to implement it efficiently.',
'',
'## Steps to Build Functionality',
'',
'List the key steps to implement the functionality, along with any relevant code snippets or examples.',
'',
'1. **Step 1:**',
'   - Description of what this step does.',
'   - Code snippet or example:',
'',
'   ```javascript',
'   // Example code',
'   //window.onbeforeunload = confirmExit;',
'    /* The below will not run unless the above is uncommented.',
'    * The recommendation is to run the above command in a',
'    * dynamic action on page load of Page 0 with the Server',
'    * Side Condition of ''Rows returned'' for the following query:',
'    * select 1',
'    *   from apex_application_pages',
'    *   where application_id = :APP_ID',
'    *   and page_id = :APP_PAGE_ID',
'    *   and warn_on_unsaved_changes = ''Yes''',
'    * This will have the result that the warning will respect the page',
'    * level attribute setting for ''Warn on Unsaved Changes''',
'    */',
'',
'    function warnOnItemLevel() {',
'    var errors = [];',
'',
'    allItems = apex.page.forEachPageItem;',
'    allItems(',
'        $("#wwvFlowForm"),',
'        function (el, name) {',
'        if (',
'            apex.item(name).isChanged() &&',
'            !apex.item(name).element[0].classList.value.includes("js-ignoreChange")',
'        ) {',
'            errors.push({',
'            message: "This item has unsaved changes", //consider using a substitution',
'            location: "inline",',
'            pageItem: name,',
'            });',
'        }',
'        },',
'        true',
'    );',
'',
'    apex.message.clearErrors();',
'    apex.message.showErrors(errors);',
'    }',
'',
'    function confirmExit() {',
'    var pageRequest = "request" + $v("pRequest");',
'    if (apex.page.isChanged() && pageRequest == "request") {',
'        warnOnItemLevel();',
'        pageRequest = null;',
'        return ""; //will not actually be shown',
'    } else {',
'        pageRequest = null;',
'    }',
'    }',
'',
'### **Resources**',
'https://gist.github.com/hhudson/c2d57dcbdbbc7e01021aada718fe4506#file-apex-detect-changed-items-js',
''))
,p_prompt=>'Notes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(33004073220813993)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_05=>'MARKDOWN'
);
wwv_flow_imp.component_end;
end;
/
