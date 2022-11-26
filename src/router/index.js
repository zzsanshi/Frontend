import {createRouter, createWebHistory} from "vue-router"
import HomeView from "../view/HomePage"

const routes = [
    {
        path: "/",
        component: HomeView,
        meta:{
            title:"base"
        }

    },
    // {
    //     path: "/page",
    //     component: ()=>import("../view/FirstPage")
    // }
]
const router = createRouter({
    history: createWebHistory(),
    routes
})
router.beforeEach(async (to) => {
    if (to.meta.title) { // 判断是否有标题
        document.title = to.meta.title;
    }
});
export default router;
