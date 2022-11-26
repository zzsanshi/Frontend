const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  devServer:{
    proxy:{
      '/qatools':{
        target:'http://192.168.2.196:8080/api',
        changeOrigin:true
      }
    }
  },
})
