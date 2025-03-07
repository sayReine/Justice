import { createRouter, createWebHistory } from 'vue-router'
import indexView from '@/views/indexView.vue'
import aboutView from '@/views/about.vue';
import contactView from '../views/Contact.vue'
import TeamView from '../views/TeamView.vue'
import Report from '../views/Report.vue';
import Home from '@/views/Home.vue';
import  Register from '../views/Register.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    // {
    //   path: '/',
    //   name:  'login',
    //   component: Home
    // },
    {
      path: '/',
      name: 'home',
      component: indexView,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: '/about',
      component: aboutView,
    },
    {
      path: '/admin',
      component: contactView,
    },
    {
      path: '/team',
      component: TeamView
    },
    {
      path: '/report',
      component: Report
    },
    {
      path:'/register',
      component: Register
    }
  ]
})

export default router
