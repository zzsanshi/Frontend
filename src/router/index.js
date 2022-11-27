import {createRouter, createWebHistory} from "vue-router"
import Anime from "../view/Anime"

const routes = [
    //homepage
    {
        path: "/",
        name: "Home",
        redirect: '/anime'
    },
    //anime
    {
        path: "/anime",
        name: "Anime",
        component: Anime,
        meta: {
            title: "anime"
        }
    },
    //movie
    {
        path: "/movie",
        name: "Movie",
        component: () => import("../view/movie/MovieMain"),
        meta: {
            title: "movie"
        },
        redirect: '/movie/west',
        children: [
            {
                path: 'chinese',
                name: 'Chinese',
                component: () => import("../view/movie/Chinese"),
                meta: {
                    title: "chinese"
                }
            }, {
                path: 'west',
                name: 'West',
                component: () => import("../view/movie/West"),
                meta: {
                    title: "west"
                }
            },
        ]
    },
    //tech
    {
        path: "/tech",
        component: () => import("../view/Tech"),
        meta: {
            title: "tech"
        }
    },

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
