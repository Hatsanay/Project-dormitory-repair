<template>
<div class="body">
  <center>
    <div class="container">
      <form @submit.prevent="login">
        <h1>Sign In</h1>
        <div>
          <!-- <label for="username">Username</label> -->
          <input placeholder="username" type="text" v-model="username" required>
        </div>
        <div>
          <!-- <label for="password">Password</label> -->
          <input placeholder="password" type="password" v-model="password" required>
        </div>
        <button type="submit">Login</button>
      </form>
      <router-link to="/register" class="register-link">Sign up</router-link>
    </div>
  </center>
</div>
</template>

<style>
  .container{
    padding: auto;
    margin-top:7%;
    background-color: white;
    border: none;
    border-radius: 3px;
    width: 300px;
    height: 500px;
  }
  body{
    background-repeat: no-repeat;
    background-size:cover;
    background-attachment: fixed;
    background-position: center;
    font-family: 'SourceSansPro-Regular',sans-serif;
  }

  h1{
    margin-bottom: 30%;
  }
input{
  margin: 8px;
  height: 40px;
  width: 200px;
  border: none;
  border-radius: 4px;
  box-shadow: 0px 0px 2px 1px rgb(0 0 0 / 20%);
}

button{
  cursor: pointer;
  margin-top: 40px;
  height: 40px;
  width: 200px;
  background-color: orange;
  border: none;
  box-shadow: 3px black;
  border-radius: 20px;
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
