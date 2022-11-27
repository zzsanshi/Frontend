<template>
  <div >
    <el-menu default-active='1' mode='vertical' @select='handleSelect' class="el-menu-demo" background-color='black'
             text-color='white' active-text-color='pink' :collapse="false" :unique-opened='true'>
      <el-menu-item index='1'><i class='el-icon-view'></i>首页</el-menu-item>
      <el-submenu index='2'>
        <template slot='title'><i class='el-icon-view'></i>部门</template>
        <el-menu-item index='2-1'>开发部</el-menu-item>
        <el-menu-item index='2-2'>产业部</el-menu-item>
        <el-menu-item index='2-3'>人事部</el-menu-item>
      </el-submenu>
      <el-submenu index='3'>
        <template slot='title'><i class='el-icon-view'></i>窗口</template>
        <el-menu-item index='3-1'>奶茶</el-menu-item>
        <el-submenu index='3-2'>
          <template slot='title'>小炒</template>
          <el-menu-item-group index='3-2-1'>
            <template slot='title'>套餐一</template>
            <el-menu-item index='3-2-1-1'>土豆丝</el-menu-item>
            <el-menu-item index='3-2-1-2'>拉皮肉丝</el-menu-item>
          </el-menu-item-group>
          <el-menu-item-group index='3-2-2'>
            <template slot='title'>套餐二</template>
            <el-menu-item index='3-2-2-1'>土豆丝</el-menu-item>
            <el-menu-item index='3-2-2-1' disabled>尖椒炒蛋</el-menu-item>
          </el-menu-item-group>
        </el-submenu>
      </el-submenu>
    </el-menu>
  </div>
</template>

<script>
export default {
  name: "tech",
  methods: {
    handleSelect(index) {
      console.log(index)
    }
  }
}
</script>

<style scoped>

</style>
