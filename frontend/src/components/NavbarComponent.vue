<template>
  <nav>
    <font-awesome-icon @click="toggleSidebar" class="toggle-icon" :icon="isSidebarCollapsed ? 'chevron-right' : 'chevron-left'" />
    <div class="nav-links">
      <router-link to="/">Home</router-link>
      <router-link to="/register">Register</router-link>
    </div>
  </nav>
</template>

<script>
export default {
  name: 'NavbarComponent',
  props: {
    isSidebarCollapsed: {
      type: Boolean,
      default: true
    }
  },
  methods: {
    toggleSidebar() {
      this.$emit('toggleSidebar');
    }
  }
};
</script>

<style scoped>
nav {
  background-color: #ffa500;
  padding: 10px;
  padding-left: 3%;
  display: flex;
  align-items: center;
}
.nav-links {
  display: flex;
  align-items: center;
}
nav a {
  color: white;
  margin-right: 10px;
  text-decoration: none;
}
nav a:hover {
  text-decoration: underline;
}
.toggle-icon {
  margin-right: 20px;
  cursor: pointer;
  color: white;
  font-size: 1.5em; 
}

@media only screen and (max-width: 600px) {
  nav {
    padding-left: 20%;
  }
  .toggle-icon {
    font-size: 1.2em; 
  }
  nav a {
    margin-right: 5px;
    font-size: 0.9em; 
  }
}
</style>
