import axios from 'axios';
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';

// Import FontAwesome icons
import { library } from '@fortawesome/fontawesome-svg-core';
import { faChartLine, faChevronLeft, faChevronRight, faCog, faHome, faSignOutAlt } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';

library.add(faChevronLeft, faChevronRight, faHome, faChartLine, faCog, faSignOutAlt);

axios.defaults.baseURL = 'http://localhost:3000';

const token = localStorage.getItem('token');
if (token) {
  axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
}

const app = createApp(App);

// Register FontAwesome component
app.component('font-awesome-icon', FontAwesomeIcon);

// Use router
app.use(router);

router.beforeEach((to, from, next) => {
  const token = localStorage.getItem('token');
  if (token) {
    const payload = JSON.parse(atob(token.split('.')[1]));
    const exp = payload.exp * 1000; 
    if (Date.now() >= exp) {
      localStorage.removeItem('token');
      delete axios.defaults.headers.common['Authorization'];
      return next('/login');
    }
  }
  next();
});

app.mount('#app');
