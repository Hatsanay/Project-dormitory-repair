import axios from 'axios';
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';

axios.defaults.baseURL = 'http://localhost:3000';
const token = localStorage.getItem('token');
if (token) {
  axios.defaults.headers.common['Authorization'] = token;
}

const app = createApp(App);
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
