import { createRouter, createWebHistory } from 'vue-router';
import AdminHomeView from '../views/admin/AdminHomeView.vue';
import HomeView from '../views/HomeView.vue';
import LoginView from '../views/LoginView.vue';
import ProtectedView from '../views/ProtectedView.vue';
import RegisterView from '../views/RegisterView.vue'; // นำเข้า RegisterView
import ResidentsHomeView from '../views/Residents/ResidentsHomeView.vue';
const routes = [
  {
    path: '/',
    name: 'HomeView',
    component: HomeView
  },
  {
    path: '/login',
    name: 'LoginView',
    component: LoginView
  },
  {
    path: '/register',
    name: 'RegisterView',
    component: RegisterView // กำหนดเส้นทางสำหรับ RegisterView
  },
  {
    path: '/protected',
    name: 'ProtectedView',
    component: ProtectedView,
    meta: { requiresAuth: true }
  },
  {
    path: '/adminhome',
    name: 'AdminHomeView',
    component: AdminHomeView,
    meta: { requiresAuth: true }
  },
  {
    path: '/residentsHome',
    name: 'ResidentsHomeView',
    component: ResidentsHomeView,
    meta: { requiresAuth: true }
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
});

// Navigation guard สำหรับตรวจสอบการยืนยันตัวตนก่อนเข้าถึงเส้นทางที่ต้องการการยืนยันตัวตน
router.beforeEach((to, from, next) => {
  const requiresAuth = to.matched.some(record => record.meta.requiresAuth);
  const isAuthenticated = localStorage.getItem('token');

  if (requiresAuth && !isAuthenticated) {
    next('/login');
  } else {
    next();
  }
});

export default router;
