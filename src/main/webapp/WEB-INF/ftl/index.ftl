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
    <el-table
            class="table"
            :data="tableData"
            border
            highlight-current-row
            style="width: 100%"
    >
        <el-table-column prop="id" label="ID" width="180" sortable></el-table-column>

        <el-table-column prop="amount5" sortable label="amount5" show-overflow-tooltip></el-table-column>
        <el-table-column  sortable label="amount6">
            <template slot-scope="scope">
                <a :href="scope.row.u">{{scope.row.name1}}</a><br/>
                <span > {{scope.row.amount6}}</span>
            </template>
        </el-table-column>

    </el-table>

</div>


<script type="text/javascript">
    //创建Vue实例

    new Vue({
        el: '#root', //el用于指定当前Vue实例与哪个容器绑定，此处绑定id值为root的容器
        data: { //data中用于存储数据，数据供el所指定的容器去使用
            name: '周杰伦',
            address: '台北',
            totalCount:"",
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
                    u: 'https://www.baidu.com'
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
            goto :function(scope) {
                this.$router.push({
                            path: scope.row.u,

                       });
            }
        }
    })
</script>
</body>
</html>