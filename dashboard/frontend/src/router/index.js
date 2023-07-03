import { h, resolveComponent } from 'vue'
import { createRouter, createWebHashHistory } from 'vue-router'

import DefaultLayout from '@/layouts/DefaultLayout'

const routes = [
    {
        path: '/',
        name: 'Home',
        component: DefaultLayout,
        redirect: '/dashboard',
        children: [
            {
                path: '/dashboard',
                name: 'Dashboard',
                // route level code-splitting
                // this generates a separate chunck (about.[hash].js) for this route
                // which is lazy-loaded when the route is visited.
                component: () =>
                    import(/* webpackChunckName: "dashboard" */ '@/views/Dashboard.vue'),
            },
            {
                path: '/rates',
                name: 'Rates',
                component: {
                    render() {
                        return h(resolveComponent('router-view'))
                    },
                },
                redirect: '/rates/euribor3M',
                children: [
                    {
                        path: '/rates/euribor3M',
                        name: 'Euribor3M',
                        component: () => import('@/views/rates/euribor3M'),
                    },
                    {
                        path: '/rates/euribor6M',
                        name: 'Euribor6M',
                        compoent: () => import('@/views/rates/euribor6M'),
                    },
                ],
            },
            {
                path: '/market/equities',
                name: 'Equities',
                component: () => import('@/views/market/equities.vue'),
            },
            {
                path: '/market/commodities',
                name: 'Commodities',
                component: () => import('@/views/market/commodities.vue'),
            },
            {
                path: '/market/index',
                name: 'Index',
                component: () => import('@/views/market/index.vue'),
            },
        ],
    },
]

const router = createRouter({
    history: createWebHashHistory(process.env.BASE_URL),
    routes,
    scrollBehavior() {
        // always scroll to top
        return { top: 0 }
    },
})

export default router
