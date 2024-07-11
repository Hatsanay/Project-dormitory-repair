<template>
  <div>
    <NavbarComponent />
    <h1>Login</h1>
    <LoginFormComponent />
  </div>
</template>

<script>
import LoginFormComponent from '../components/LoginFormComponent.vue';
import NavbarComponent from '../components/NavbarComponent.vue';

export default {
  name: 'LoginView',
  components: {
    NavbarComponent,
    LoginFormComponent
  }
};
</script>
