<template>
  <router-link to="/" >home</router-link>
  <router-view/>
</template>

<script>
import HelloWorld from './view/HelloWorld.vue'
import First from './view/First.vue'
import second from './view/Second.vue'

export default {
  name: 'App',
  components: {
    HelloWorld,
    First,
    second
  },
  data(){
    return{
      text:'who'
    }
  },
  methods:{
    getData(data){

    }
  }
}
</script>

<style>

</style>
