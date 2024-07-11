<template>
  <form @submit.prevent="login">
    <div>
      <label for="username">Username</label>
      <input type="text" v-model="username" required>
    </div>
    <div>
      <label for="password">Password</label>
      <input type="password" v-model="password" required>
    </div>
    <button type="submit">Login</button>
  </form>
</template>

<script>
import axios from 'axios';

export default {
  name: 'LoginFormComponent',
  data() {
    return {
      username: '',
      password: ''
    };
  },
  methods: {
    login() {
      axios.post('/api/auth/login', {
        username: this.username,
        password: this.password
      })
      .then(response => {
        localStorage.setItem('token', response.data.token);
        axios.defaults.headers.common['Authorization'] = response.data.token;
        this.$router.push('/protected');
      })
      .catch(error => {
        console.error(error);
        alert('Login failed!');
      });
    }
  }
};
</script>
