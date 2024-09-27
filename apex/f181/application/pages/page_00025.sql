prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>'Sample Stock Chart'
,p_alias=>'SAMPLE-STOCK-CHART'
,p_step_title=>'Sample Stock Chart'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19009821093309749)
,p_plug_name=>'demo.html'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(32933336533813955)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <html lang="en-us" style="height:100%;" dir="ltr">',
'    <head>',
'      <title>Stock Chart - Basic</title>',
'      <meta charset="UTF-8">',
'      <meta http-equiv="x-ua-compatible" content="IE=edge">',
'      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">',
'      <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'      <!-- <link rel="icon" type="image/x-icon" href="../css/images/JET-Favicon-Red-32x32.png">',
'      <link rel="apple-touch-icon-precomposed" href="../css/images/touchicon.png"> -->',
'      <meta name="apple-mobile-web-app-title" content="Oracle JET">',
'      <link rel="stylesheet" id="altacss" href="https://www.oracle.com/webfolder/technetwork/jet/css/libs/oj/16.1.0/alta/oj-alta-min.css">',
'      <!-- <link rel="stylesheet" href="../css/demo.css"> -->',
'      <script>',
'        // The "oj_whenReady" global variable enables a strategy that the busy context whenReady,',
'        // will implicitly add a busy state, until the application calls applicationBootstrapComplete',
'        // on the busy state context.',
'        window["oj_whenReady"] = true;',
'      </script>',
'      <script src="https://www.oracle.com/webfolder/technetwork/jet/js/libs/require/require.js"></script>',
'      <!-- RequireJS bootstrap file -->',
'      <script src="#APP_IMAGES#main.js"></script>',
'        <script src="#APP_IMAGES#demo.js"></script> ',
'      <!-- <link rel="stylesheet" href="../css/samples/cookbook/demo-icon-charts.css" type="text/css" /> -->',
'    ',
'  <script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"false","rua.upre":"false","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"","rua.cook":"false","rua.ims":"false"'
||',"rua.ufprl":"false","rua.cfprl":"false","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>',
'                                <script>!function(e){var n="https://s.go-mpulse.net/boomerang/";if("False"=="True")e.BOOMR_config=e.BOOMR_config||{},e.BOOMR_config.PageParams=e.BOOMR_config.PageParams||{},e.BOOMR_config.PageParams.pci=!0,n="https://s'
||'2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="DXNLE-YBWWY-AR74T-WMD99-77VRA",function(){function e(){if(!o){var e=document.createElement("script");e.id="boomr-scr-as",e.src=window.BOOMR.url,e.async=!0,i.parentNode.appendChild(e),o=!0}}function'
||' t(e){o=!0;var n,t,a,r,d=document,O=window;if(window.BOOMR.snippetMethod=e?"if":"i",t=function(e,n){var t=d.createElement("script");t.id=n||"boomr-if-as",t.src=window.BOOMR.url,BOOMR_lstart=(new Date).getTime(),e=e||d.body,e.appendChild(t)},!window.a'
||'ddEventListener&&window.attachEvent&&navigator.userAgent.match(/MSIE [67]\./))return window.BOOMR.snippetMethod="s",void t(i.parentNode,"boomr-async");a=document.createElement("IFRAME"),a.src="about:blank",a.title="",a.role="presentation",a.loading="'
||'eager",r=(a.frameElement||a).style,r.width=0,r.height=0,r.border=0,r.display="none",i.parentNode.appendChild(a);try{O=a.contentWindow,d=O.document.open()}catch(_){n=document.domain,a.src="javascript:var d=document.open();d.domain=''"+n+"'';void(0);",O='
||'a.contentWindow,d=O.document.open()}if(n)d._boomrl=function(){this.domain=n,t()},d.write("<bo"+"dy onload=''document._boomrl();''>");else if(O._boomrl=function(){t()},O.addEventListener)O.addEventListener("load",O._boomrl,!1);else if(O.attachEvent)O.at'
||'tachEvent("onload",O._boomrl);d.close()}function a(e){window.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!window.BOOMR||!window.BOOMR.version&&!window.BOOMR.snippetExecuted){window.BOOMR=window.BOOMR||{},window.BOOMR.snippetStart=(new Date).'
||'getTime(),window.BOOMR.snippetExecuted=!0,window.BOOMR.snippetVersion=12,window.BOOMR.url=n+"DXNLE-YBWWY-AR74T-WMD99-77VRA";var i=document.currentScript||document.getElementsByTagName("script")[0],o=!1,r=document.createElement("link");if(r.relList&&"'
||'function"==typeof r.relList.supports&&r.relList.supports("preload")&&"as"in r)window.BOOMR.snippetMethod="p",r.href=window.BOOMR.url,r.rel="preload",r.as="script",r.addEventListener("load",e),r.addEventListener("error",function(){t(!0)}),setTimeout(f'
||'unction(){if(!o)t(!0)},3e3),BOOMR_lstart=(new Date).getTime(),i.parentNode.appendChild(r);else t(!1);if(window.addEventListener)window.addEventListener("load",a,!1);else if(window.attachEvent)window.attachEvent("onload",a)}}(),"".length>0)if(e&&"perf'
||'ormance"in e&&e.performance&&"function"==typeof e.performance.setResourceTimingBufferSize)e.performance.setResourceTimingBufferSize();!function(){if(BOOMR=e.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var n=""=="true"?1:0,t="cookiepr'
||'esent",a="eyaboaazoafgajqacqcauaaftjtlw6de-f-4d778955e-clienttons-s.akamaihd.net",i="false"=="true"?2:1,o={"ak.v":"37","ak.cp":"82485","ak.ai":parseInt("604074",10),"ak.ol":"0","ak.cr":29,"ak.ipv":6,"ak.proto":"h2","ak.rid":"1138ba46","ak.r":48112,"a'
||'k.a2":n,"ak.m":"dscx","ak.n":"essl","ak.bpcip":"2600:1700:1970:a60::","ak.cport":63396,"ak.gh":"23.211.247.198","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1723562084","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==iGR+3M3oCCB3a'
||'FiLf+hkxik98YIGTo3njPbpmA97yZv0J7Hjhyr1izefSunyT1HciO7VcXajSzfKR9pYQnzpiGIsGHF/KrPsg+MmUMzDQlxzAoCjPch7sOj1gKjPtv/nlGXfGGCZpm3/nzXG1r5TY0+Gr1rUG0TJDwpGEpH49riyiZ8TODGOhkm9raDxh02ynmEswr3Wqr8ZJS4MFnP4SB94F9IHFewgRj09DoMWpxWM1XYEQMW32Npyh25tBulpm801e6b'
||'qlQ+XI4Sj3ITMy5Edfu3nIk3rY/KL9IM7Utp0FO8buxDNn56rQzVUc/sQQ275OVi+e2ohyPnqDdlU/DJuzPZu/aagsFpLaKDQV7pkfSDncirchXqIgZmDXPW3v0PpBDKO/xyWYaMLgxTZ/XZv36RYWLXhQmNx4h05vjw=","ak.pv":"481","ak.dpoabenc":"","ak.tf":i};if(""!==t)o["ak.ruds"]=t;var r={i:!1,av:f'
||'unction(n){var t="http.initiator";if(n&&(!n[t]||"spa_hard"===n[t]))o["ak.feo"]=void 0!==e.aFeoApplied?1:0,BOOMR.addVar(o)},rv:function(){var e=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.t'
||'lsv","ak.0rtt","ak.r","ak.acc","ak.t","ak.tf"];BOOMR.removeVar(e)}};BOOMR.plugins.AK={akVars:o,akDNSPreFetchDomain:a,init:function(){if(!r.i){var e=BOOMR.subscribe;e("before_beacon",r.av,null,null),e("onbeacon",r.rv,null,null),r.i=!0}return this},is_'
||'complete:function(){return!0}}}}()}(window);</script></head>',
'    <body class="demo-disable-bg-image">',
'      <div id="sampleDemo" class="demo-padding demo-container">',
'        <div id="componentDemoContent" style="width: 1px; min-width: 100%;">',
'                  ',
'          <div id="chart-container">',
'            <div class="oj-typography-heading-md oj-helper-text-align-center">',
'              Fake Corporation (NYSE:FAKE)',
'            </div>',
'            <div class="oj-flex oj-sm-flex-items-initial oj-sm-margin-4x-bottom oj-sm-align-items-center">',
'              <demo-radioset-enum',
'                direction="row"',
'                label-hint="Time Period"',
'                id="radioButtonset"',
'                aria-controls="stockChart"',
'                value="{{intervalValue}}"',
'                on-value-changed="[[intervalValueChange]]"',
'                class="oj-flex-item"',
'                enum-values=''["1 Week", "1 Month", "3 Month", "Max"]''></demo-radioset-enum>',
'              <div class="oj-helper-margin-start-auto oj-flex oj-flex-item oj-sm-align-items-center">',
'                <span class="oj-typography-bold oj-flex-item oj-sm-padding-2x-end">',
'                  <oj-bind-text value="[[currentText]]"></oj-bind-text>',
'                </span>',
'                <span',
'                  class="oj-typography-bold oj-flex-item oj-sm-padding-2x-end"',
'                  :style.color="[[trendColor]]">',
'                  <oj-bind-text value="[[percentChange]]"></oj-bind-text>',
'                </span>',
'                <span',
'                  :class="[[(ledRotation() === 0 ? ''oj-ux-ico-triangle-up-s'' : ''oj-ux-ico-triangle-down-s'') + '' oj-typography-body-xl'']]"',
'                  :style.color="[[trendColor]]"></span>',
'              </div>',
'            </div>',
'          ',
'            <oj-chart',
'              id="stockChart"',
'              type="stock"',
'              data="[[dataProvider]]"',
'              zoom-and-scroll="live"',
'              overview.rendered="on"',
'              x-axis="[[xAxis]]"',
'              y-axis.tick-label="[[yAxisConverter]]"',
'              legend.rendered="off"',
'              hide-and-show-behavior="withRescale"',
'              data-cursor="on"',
'              on-oj-viewport-change="[[viewportChange]]"',
'              class="oj-sm-width-full">',
'              <template slot="itemTemplate" data-oj-as="item">',
'                <oj-chart-item',
'                  open="[[item.data.open]]"',
'                  close="[[item.data.close]]"',
'                  high="[[item.data.high]]"',
'                  low="[[item.data.low]]"',
'                  volume="[[item.data.volume]]"',
'                  group-id="[[ [item.data.group] ]]"',
'                  series-id="[[item.data.series]]"></oj-chart-item>',
'              </template>',
'              <template slot="seriesTemplate" data-oj-as="series">',
'                <oj-chart-series type="[[seriesTypeValue]]"></oj-chart-series>',
'              </template>',
'            </oj-chart>',
'          ',
'            <demo-radioset-enum',
'              id="basicSelect"',
'              direction="row"',
'              label-hint="Series Type"',
'              aria-controls="stockChart"',
'              value="{{seriesTypeValue}}"',
'              class="oj-sm-margin-4x-top"',
'              enum-values=''["auto", "area", "bar", "candlestick", "line", "lineWithArea"]''></demo-radioset-enum>',
'          </div>',
'          ',
'          ',
'          ',
'        </div>',
'      </div>',
'    </body>',
'  </html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19701542310025316)
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
wwv_flow_imp.component_end;
end;
/
