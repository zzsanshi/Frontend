import {createRouter, createWebHistory} from "vue-router"
import Anime from "../view/Anime"
import Movie from "../view/movie/MovieMain"
import West from "../view/movie/West"
import Chinese from "../view/movie/Chinese"


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
        component: Movie,
        meta: {
            title: "movie"
        },
        redirect: '/movie/west',
        children: [
            {
                path: 'chinese',
                name: 'Chinese',
                component: Chinese,
                meta: {
                    title: "chinese"
                }
            }, {
                path: 'west',
                name: 'West',
                component: West,
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
