export default [
    {
        component: 'CNavItem',
        name: 'Dashboard',
        to: '/dashboard',
        icon: 'cil-speedometer',
    },
    {
        component: 'CNavTitle',
        name: 'Global Rates',
    },
    {
        component: 'CNavGroup',
        name: 'Rates',
        to: '/rates',
        icon: 'cil-chart-line',
        items: [
            {
                component: 'CNavItem',
                name: 'Euribor',
                to: '/rates/euribor',
            },
            {
                component: 'CNavItem',
                name: 'Libor',
                to: '/rates/libor',
            },
        ],
    },
    {
        component: 'CNavItem',
        name: 'Inflation',
        to: '/inflation',
        icon: 'cil-cash',
    },
    {
        component: 'CNavTitle',
        name: 'Markets',
    },
    {
        component: 'CNavItem',
        name: 'Equities',
        to: '/market/equities',
        icon: 'icn-stock-market',
    },
    {
        component: 'CNavItem',
        name: 'Commodities',
        to: '/market/commodities',
        icon: 'icn-commodity',
    },
    {
        component: 'CNavItem',
        name: 'Index',
        to: '/market/index',
        icon: 'icn-index',
    },
]
