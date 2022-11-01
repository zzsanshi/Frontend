
<#-- 引入布局指令的命名空间 -->
<#import "frame/frame.ftl"  as frame /><#--这个是主要的菜单导航和内容显示的文件-->
<#-- 调用布局指令 -->
<@frame.htmlHead title="first">
</@frame.htmlHead>
<@frame.layout>
        <div id="tabBox" class="tabBox">
            <div style=" float:left;width:10%; height:100%; "  >
                <#include "tab.ftl">
            </div>
            <div style="float:left ; width:90%; height:100%;"><label @click="handleClick">ss</label>
            </div>

        </div>

    <script>
        new Vue({
            el:'#tabBox',
            data:{
                    activeName:"first",
            },
            methods:{
                handleClick(){
                    let self=this;
                    self.$message.success('s');
                }
            }
        })


    </script>

</@frame.layout>



