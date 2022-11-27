<template>

  <div class="menu_page" >
    <el-menu default-active='1' mode='vertical' @select='handleSelect' class="el-menu-demo"
             text-color='white' active-text-color='pink' :collapse="false" :unique-opened='true'>
          <el-menu-item index='1'>
            <router-link active-class="active"  to="/movie/chinese">
            <span color="black">中文</span>
            </router-link>
          </el-menu-item>
          <el-menu-item   index='2'>
            <router-link  active-class="active"  to="/movie/west">
            <span>外文</span>
            </router-link>
          </el-menu-item>
<!--      <el-menu-item index="3">-->
<!--        <span>test</span>-->
<!--      </el-menu-item>-->
      </el-menu>
  </div>
    <router-view style="margin-left: 100px"/>
</template>
<script>
export default {
  name: "MovieMain",
  data() {
    return {
    }
  },
  methods: {
    handleSelect(index) {
      // console.log(index)
    }
  }
}
</script>

<style scoped>
.menu_page {
  position: fixed;
  top: 50px;
  left: 0;
  min-height: 100%;
  z-index: 99;
}

.el-menu {
  /*border: none;*/
  color: red;
}

.fa-margin {
  margin-right: 5px;
}

.el-menu-vertical-demo:not(.el-menu--collapse) {
  width: 100px;
  min-height: 400px;
}

.el-menu-vertical-demo {
  width: 35px;
  /*font:16px Arial, Helvetica, sans-serif;*/
}


.el-submenu .el-menu-item {
  min-width: 100px;
}

.hiddenDropdown,
.hiddenDropname {
  /*display: none;*/
}

a {
  text-decoration: none;
}
.active {
  color: #608bd2;
  pointer-events: none;
  opacity: 1;
}

</style>
