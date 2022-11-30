import {createApp} from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import axios from "axios";
import router from "./router/index"
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap/dist/js/bootstrap.bundle.js'
import 'font-awesome/css/font-awesome.min.css'
import * as echarts from 'echarts'


const app = createApp(App);
app.use(router);
app.use(ElementPlus);
app.config.globalProperties.$axios = axios;
app.config.globalProperties.$echarts = echarts;
app.mount('#app');
