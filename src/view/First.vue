<template>
<span>{{title}}</span><br/>
<button @click="reflect">click</button>
  <swiper>
    <swiper-slide>
      <img src="../assets/logo.png"/>
    </swiper-slide>
    <swiper-slide>
      <img src="../assets/logo.png"/>
    </swiper-slide>
    <swiper-slide>
      <img src="../assets/logo.png"/>
    </swiper-slide>
  </swiper>

</template>

<script>
import {Swiper,SwiperSlide} from "swiper/vue";
import 'swiper/css';
export default {
  name: "first",
  components:{
    Swiper,
    SwiperSlide,
  },
  data() {
    return {
      msg:'reflect',
    }
  },
  methods:{
    reflect(){
      this.$axios({
        method:"get",
        url:"",
        data: JSON.stringify({}),
      }).then(res=>{

      }).catch(error=>{

      });
      this.$emit("onEvent", this.reflect);
    },

  },
  props:{
    title:{
      type:String,
      default:"",
    },
    its:{
      type:Array,
      default: function (){
        return []
      }
    },
  }
}
</script>

<style scoped>

</style>
