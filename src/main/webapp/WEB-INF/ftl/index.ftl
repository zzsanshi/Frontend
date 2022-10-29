<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
    <title>Vue</title>
    <!-- 引入Vue -->
    <script type="text/javascript" src="/static/js/vue.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <!-- 引入组件库 -->
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
</head>

<body>
<!-- 准备好一个容器 -->
<div id="root">


    <div id="sb-site">
        <#include "mainsite.ftl" /><#--这个是主要的菜单导航和内容显示的文件-->
    </div>

    <el-table
            class="table"
            :data="tableData.slice((currentPage-1)*pageSize,currentPage*pageSize)"
            border
            highlight-current-row
            style="width: 100%">
        <el-table-column prop="id" label="ID" width="180"></el-table-column>
        <el-table-column prop="name1" label="姓名1" width="100"></el-table-column>
        <el-table-column prop="name2" label="姓名2" width="100"></el-table-column>
        <el-table-column prop="name3" label="姓名3" width="100"></el-table-column>
        <el-table-column prop="address1" label="地址1" width="180" show-overflow-tooltip></el-table-column>
        <el-table-column prop="address2" label="地址2" width="180" show-overflow-tooltip></el-table-column>
        <el-table-column prop="address3" label="地址3" width="180" show-overflow-tooltip></el-table-column>
        <el-table-column prop="amount1" sortable label="数值1"></el-table-column>
        <el-table-column prop="amount2" sortable label="数值2"></el-table-column>
        <el-table-column prop="amount3" sortable label="数值3"></el-table-column>
        <el-table-column prop="amount4" sortable label="数值4"></el-table-column>
        <el-table-column prop="amount5" sortable label="数值5"></el-table-column>
        <el-table-column prop="amount6" sortable label="数值6">
            <template slot-scope="scope">
                <span>{{(scope.row.amount1, scope.row.amount2)}}</span>
            </template>
        </el-table-column>
        <el-table-column prop="amount7" sortable label="数值7">
            <template slot-scope="scope">
                <span>{{(scope.row.amount1, scope.row.amount3)}}</span>
            </template>
        </el-table-column>
        <el-table-column prop="amount8" sortable label="数值8">
            <template slot-scope="scope">
                <span>{{(scope.row.amount1, scope.row.amount4)}}</span>

            </template>
        </el-table-column>
        <el-table-column prop="amount9" sortable label="数值9">
            <template slot-scope="scope">
                <span>{{(scope.row.amount1, scope.row.amount5)}}</span>

            </template>
        </el-table-column>
        <el-table-column prop="amount10" sortable label="数值10">
            <template slot-scope="scope">
                <span>{{(scope.row.amount1, scope.row.amount2)}}</span>
            </template>
        </el-table-column>
        <el-table-column prop="amount11" sortable label="数值11">
            <template slot-scope="scope">
                <span>{{(scope.row.amount1, scope.row.amount3)}}</span>

            </template>
        </el-table-column>
        <el-table-column prop="amount12" sortable label="数值12">
            <template slot-scope="scope">
                <span>{{(scope.row.amount1, scope.row.amount4)}}</span>
            </template>
        </el-table-column>
        <el-table-column prop="amount13" sortable label="数值13">
            <template slot-scope="scope">
                <span>{{(scope.row.amount1, scope.row.amount5)}}</span>
            </template>
        </el-table-column>
</el-table>
    <div>
    <el-pagination
<#--            hide-on-single-page-->
            @size-change="handleSizeChange"
            @current-change="handleCurrentChange"
            :current-page="currentPage"
            :page-sizes="[2,5]"
            :page-size="pageSize"
            layout="total, sizes, prev, pager, next, jumper"
            :total="tableData.length">
    </el-pagination>
    </div>
</div>
<script type="text/javascript">
    //创建Vue实例
    new Vue({
        el: '#root', //el用于指定当前Vue实例与哪个容器绑定，此处绑定id值为root的容器
        data: { //data中用于存储数据，数据供el所指定的容器去使用
            name: '周杰伦',
            address: '台北',
            currentPage: 1,

            pageSize: 2,
            tableData: [
                {
                    id: "12987122",
                    name1: "王小虎",
                    name2: "王小虎",
                    name3: "王小虎",
                    address1: "上海市普陀区金沙江路 1518 弄",
                    address2: "上海市普陀区金沙江路 1518 弄",
                    address3: "上海市普陀区金沙江路 1518 弄",
                    amount1: "234",
                    amount2: "3.2",
                    amount3: 10,
                    amount4: "4.43",
                    amount5: 12,
                    amount6: 15,
                },
                {
                    id: "12987123",
                    name1: "王小虎",
                    name2: "王小虎",
                    name3: "王小虎",
                    address1: "上海市普陀区金沙江路 1518 弄",
                    address2: "上海市普陀区金沙江路 1518 弄",
                    address3: "上海市普陀区金沙江路 1518 弄",
                    amount1: "165",
                    amount2: "4.43",
                    amount3: 12,
                    amount4: "4.43",
                    amount5: 12
                },
                {
                    id: "12987124",
                    name1: "王小虎",
                    name2: "王小虎",
                    name3: "王小虎",
                    address1: "上海市普陀区金沙江路 1518 弄",
                    address2: "上海市普陀区金沙江路 1518 弄",
                    address3: "上海市普陀区金沙江路 1518 弄",
                    amount1: "324",
                    amount2: "1.9",
                    amount3: 9,
                    amount4: "4.43",
                    amount5: 12
                },
                {
                    id: "12987125",
                    name1: "王小虎",
                    name2: "王小虎",
                    name3: "王小虎",
                    address1: "上海市普陀区金沙江路 1518 弄",
                    address2: "上海市普陀区金沙江路 1518 弄",
                    address3: "上海市普陀区金沙江路 1518 弄",
                    amount1: "621",
                    amount2: "2.2",
                    amount3: 17,
                    amount4: "4.43",
                    amount5: 12
                },
                {
                    id: "12987126",
                    name1: "王小虎",
                    name2: "王小虎",
                    name3: "王小虎",
                    address1: "上海市普陀区金沙江路 1518 弄",
                    address2: "上海市普陀区金沙江路 1518 弄",
                    address3: "上海市普陀区金沙江路 1518 弄",
                    amount1: "539",
                    amount2: "4.1",
                    amount3: 15,
                    amount4: "4.43",
                    amount5: 12
                }
            ],
        },
        methods: {
            handleSizeChange(val) {
                this.pageSize = val;
            },
            handleCurrentChange(val) {
                this.currentPage= val;
            },
        }
    })
</script>
</body>
</html>