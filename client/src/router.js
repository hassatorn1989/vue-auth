import { createRouter, createWebHistory } from 'vue-router';
import Login from './views/Login.vue';
import About from './views/About.vue';
import Dashboard from './views/Dashboard.vue';
const routes = [
    {
        path: '/',
        name: 'Login',
        component: Login
    },
    {
        path: '/dashboard',
        name: 'Dashboard',
        component: Dashboard
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

router.beforeEach((to, from, next) => {
    const publicPages = ['/'];
    const authRequired = !publicPages.includes(to.path);
    const loggedIn = localStorage.getItem('user');

    // trying to access a restricted page + not logged in
    // redirect to login page
    if (authRequired && !loggedIn) {
        next('/');
    } else {
        next();
    }
});

export default router;