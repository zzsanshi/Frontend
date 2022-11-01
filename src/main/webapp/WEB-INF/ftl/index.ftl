<#import "frame/frame-sidebar.ftl"  as frame /><#--这个是主要的菜单导航和内容显示的文件-->
<@frame.htmlHead title="index">

</@frame.htmlHead>
<#-- 调用布局指令 -->
<@frame.layout>
    <h1>ss</h1>

    <div id="root">
        <span @click="clickTest">test</span>
        <button @click="clickTest">search</button>
        <el-table
                class="table"
                :data="tableData.slice((currentPage-1)*pageSize,currentPage*pageSize)"
                border
                highlight-current-row
        >
            <el-table-column prop="id" label="ID" width="180"></el-table-column>
            <el-table-column prop="address1" label="地址1" width="180" show-overflow-tooltip></el-table-column>
            <el-table-column prop="amount1" sortable label="数值1"></el-table-column>
            <el-table-column prop="amount6" sortable label="数值6">
                <template slot-scope="scope">
                    <span>{{(scope.row.amount1, scope.row.amount2)}}</span>
                </template>
            </el-table-column>
        </el-table>
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

    <script type="text/javascript">
        //创建Vue实例
        new Vue({
            el: '#root', //el用于指定当前Vue实例与哪个容器绑定，此处绑定id值为root的容器
            data: { //data中用于存储数据，数据供el所指定的容器去使用
                name: '周杰伦',
                address: '台北',
                currentPage: 1,
                pageSize: 5,
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
                    this.currentPage = val;
                },
                clickTest(){
                    // console.log("ss");
                    this.$message.success("success");
                    this.$message.error("errror");
                },
            }
        })
    </script>

</@frame.layout>
