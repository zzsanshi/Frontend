<#macro htmlHead title >
<html>
<head>
    <title>${title}</title>
    <!-- 引入Vue -->
    <script type="text/javascript" src="/static/js/vue.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <!-- 引入组件库 -->
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    <#nested>
</head>
</#macro >
<#macro layout>
<body>
<div >
    <div class="header" style="text-align:center; font-size:30px;">
        <#include "header.ftl">
    </div>

    <#-- 在这里嵌入main content -->
    <div id="right" style="float:left ; width:90%; height:100%;">
        <#nested>
    </div>
    <#--        <#include "footer.ftl">-->
</div>
</body>
</html>
</#macro>
