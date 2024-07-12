<template>
<div class="body">
  <center>
    <div class="container">
      <form @submit.prevent="login">
        <h1>Sign In</h1>
        <div>
          <!-- <label for="username">Username</label> -->
          <input type="text" v-model="username" required>
        </div>
        <div>
          <!-- <label for="password">Password</label> -->
          <input type="password" v-model="password" required>
        </div>
        <button type="submit">Login</button>
      </form>
    </div>
  </center>
</div>
</template>

<style>
  .container{
    margin-top: 8%;
    background-color: white;
    border: solid 1px black;
    border-radius: 3px;
    width: 300px;
    height: 500px;
  }
  body{
    background-color: antiquewhite;
    background-repeat: no-repeat;
    background-size:cover;
    background-attachment: fixed;
    background-position: center;
    font-family: 'SourceSansPro-Regular',sans-serif;
  }
input{
  margin: 2px;
  height: 30px;
  width: 200px;
  border-radius: 4px;
  box-shadow: 3px black;
}

button{
  margin-top: 4px;
  height: 40px;
  width: 150px;
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
        this.$router.push('/');
      })
      .catch(error => {
        console.error(error);
        alert('Login failed!');
      });
    }
  }
};
</script>
