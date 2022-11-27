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
  // 配置插件参数
  configureWebpack: {
    plugins: [
      // 配置 jQuery 插件的参数
      new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        'window.jQuery': 'jquery',
        Popper: ['popper.js', 'default']
      })
    ]
  }
})
