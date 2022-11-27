<template>
  <div class="header">
  <router-link to="/anime">动画</router-link>
  <router-link to="/movie">电影</router-link>
  <router-link to="/tech">科技</router-link>
  </div>
  <router-view/>
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <button class="btn btn-primary">测试按钮</button>
      </div>
    </div>
    <el-button>text</el-button>
  </div>
</template>

<script>
export default {
  name: 'App',
}
</script>

<style>

</style>
