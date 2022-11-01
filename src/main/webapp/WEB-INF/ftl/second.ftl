<#-- 引入布局指令的命名空间 -->
<#import "frame/frame-sidebar.ftl"  as frame /><#--这个是主要的菜单导航和内容显示的文件-->
<#-- 调用布局指令 -->
<@frame.htmlHead title="">
</@frame.htmlHead>
<@frame.layout>
<#-- 将下面这个main content嵌入到layout指令的nested块中 -->
</@frame.layout>