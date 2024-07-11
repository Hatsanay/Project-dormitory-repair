<template>
  <div>
    <NavbarComponent />
    <h1>Home</h1>
    <p>Welcome to the Home page!</p>
  </div>
</template>

<script>
import NavbarComponent from '../components/NavbarComponent.vue';

export default {
  name: 'HomeView',
  components: {
    NavbarComponent
  }
};
</script>
