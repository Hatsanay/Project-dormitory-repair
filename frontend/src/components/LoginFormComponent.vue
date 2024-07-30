<template>
  <div class="body">
    <div class="containerlogin">
      <form @submit.prevent="login">
        <h1>Sign In</h1>
        <div class="input-group">
          <input placeholder="Username" type="text" v-model="username" required>
        </div>
        <div class="input-group">
          <input placeholder="Password" type="password" v-model="password" required>
        </div>
        <button type="submit">Login</button>
      </form>
      <router-link to="/register" class="register-link">Sign up</router-link>
    </div>
  </div>
</template>

<style>
  body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  .body {
    background: linear-gradient(to right, #ffa500, #2575fc);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'Poppins', sans-serif;
  }

  .containerlogin {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    width: 400px;
    text-align: center;
  }

  h1 {
    margin-bottom: 30px;
    color: #333;
    font-size: 28px;
    font-weight: 700;
  }

  .input-group {
    margin-bottom: 15px;
  }

  input {
    width: 100%;
    height: 40px;
    border: 1px solid #ddd;
    border-radius: 30px;
    box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.1);
    font-size: 16px;
  }

  button {
    cursor: pointer;
    margin-top: 20px;
    padding: 15px;
    width: 100%;
    background-color: #ffa500;
    border: none;
    color: white;
    font-size: 18px;
    font-weight: 700;
    border-radius: 30px;
    transition: background-color 0.3s ease;
  }

  button:hover {
    background-color: #ffa500;
  }

  .register-link {
    display: block;
    margin-top: 20px;
    color: #ffa500;
    text-decoration: none;
    font-weight: 600;
    transition: color 0.3s ease;
  }

  .register-link:hover {
    color: #1e60c7;
  }
</style>

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
        this.$router.push('/adminhome');
      })
      .catch(error => {
        console.error(error);
        alert('Login failed!');
      });
    },
  }
};
</script>
