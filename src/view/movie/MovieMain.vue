<template>
<span>main</span>
  <router-link to="/movie/chinese">中文</router-link>
  <router-link to="/movie/west">外语</router-link>
  <router-view/>
</template>
<script>
export default {
  name: "MovieMain"
}
</script>

<style scoped>

</style>
