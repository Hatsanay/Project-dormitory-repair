<template>
  <nav>
    <router-link to="/">Home</router-link>
    <router-link to="/login">Login</router-link>
    <router-link to="/protected">Protected</router-link>
    <router-link to="/register">register</router-link>
  </nav>
</template>

<script>
export default {
  name: 'NavbarComponent'
};
</script>

<style scoped>
nav {
  background-color: #333;
  padding: 10px;
}
nav a {
  color: white;
  margin-right: 10px;
  text-decoration: none;
}
nav a:hover {
  text-decoration: underline;
}
</style>
