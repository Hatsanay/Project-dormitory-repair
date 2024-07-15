<template>
    <div>
      <!-- <NavbarComponent /> -->
      <!-- <h1>Register</h1> -->
      <RegisterFormComponent />
    </div>
  </template>
  
  <script>
  // import NavbarComponent from '../components/NavbarComponent.vue';
import RegisterFormComponent from '../components/RegisterFormComponent.vue';
  
  export default {
    name: 'RegisterView',
    components: {
      // NavbarComponent,
      RegisterFormComponent
    }
  };
  </script>
  