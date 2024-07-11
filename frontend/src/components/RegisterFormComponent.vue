<template>
    <form @submit.prevent="register">
      <div>
        <label for="username">Username</label>
        <input type="text" v-model="username" required>
      </div>
      <div>
        <label for="password">Password</label>
        <input type="password" v-model="password" required>
      </div>
      <button type="submit">Register</button>
      <p v-if="error">{{ error }}</p> <!-- แสดงข้อความข้อผิดพลาด -->
    </form>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    name: 'RegisterFormComponent',
    data() {
      return {
        username: '',
        password: '',
        error: '' // เพิ่มตัวแปรสำหรับเก็บข้อความข้อผิดพลาด
      };
    },
    methods: {
      register() {
        axios.post('/api/auth/register', {
          username: this.username,
          password: this.password
        })
        .then(response => {
          console.log(response.data); // ใช้งาน response ในการแสดงผลข้อมูลการตอบกลับ
          alert('Registration successful!');
          this.$router.push('/login');
        })
        .catch(error => {
          console.error(error);
          this.error = error.response.data.error || 'Registration failed!'; // แสดงข้อความข้อผิดพลาด
        });
      }
    }
  };
  </script>
  