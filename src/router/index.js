import { createRouter, createWebHistory } from "vue-router";

const routes = [
  {
    path: "/",
    name: "Home",
    component: () => import(/* webpackChunkName: "Home" */ '@/pages/HomePage')
  },
  // {
  //   path: "/thread/:id",
  //   name: "ThreadShow",
  //   component: () => import('@/components/ThreadList.vue'),
  //   props: true
  // },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "about" */ "../pages/AboutPage"),
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
