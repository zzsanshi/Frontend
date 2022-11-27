import {createApp} from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import axios from "axios";
import router from "./router/index"
import Elementplus from 'element-plus'
import 'element-plus/dist/index.css'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap/dist/js/bootstrap.min.js'


const app = createApp(App);
app.use(router);
app.use(Elementplus);
app.config.globalProperties.$axios = axios;
app.mount('#app');
