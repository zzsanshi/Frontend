const { defineConfig } = require('@vue/cli-service')
const webpack = require("webpack")
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
  chainWebpack: (config) => {
    config.plugin('provide').use(webpack.ProvidePlugin, [{
      $: 'jquery',
      jquery: 'jquery',
      jQuery: 'jquery',
      'window.jQuery': 'jquery'
    }])
  },
  css: {
    sourceMap: true
  }

})
