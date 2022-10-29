
<#-- 引入布局指令的命名空间 -->
<#import "frame/mainsite.ftl"  as frame /><#--这个是主要的菜单导航和内容显示的文件-->
<#-- 调用布局指令 -->
<@frame.htmlHead title="first">
</@frame.htmlHead>
<@frame.layout>
<#-- 将下面这个main content嵌入到layout指令的nested块中 -->
    <div id="app">
        <div>{{message}}</div>
    </div>
    <script>
        new Vue({
            el: '#app',
            data: {
                message: '<h1>菜鸟教程</h1>'
            }
        })
    </script>
</@frame.layout>



