<template>
  <div class="sidebar">
    <router-link to="/adminhome" class="menu-link">
      <font-awesome-icon class="icon" icon="home" /> Home
    </router-link>
    <router-link to="/protected" class="menu-link">
      <font-awesome-icon class="icon" icon="question-circle" /> Protected
    </router-link>
    <router-link to="/" class="menu-link">
      <font-awesome-icon class="icon" icon="sign-out-alt" /> Logout
    </router-link>
    <!--
    <router-link to="/adminusers" class="menu-link">
      <font-awesome-icon class="icon" icon="users" /> Users
    </router-link>
    <router-link to="/adminreports" class="menu-link">
      <font-awesome-icon class="icon" icon="chart-line" /> Reports
    </router-link>
    <router-link to="/adminhelp" class="menu-link">
      <font-awesome-icon class="icon" icon="question-circle" /> Help
    </router-link>
   
    -->
  </div>
</template>

<script>
export default {
  name: 'AdminSidebarComponent'
};
</script>

<style scoped>
.sidebar {
  box-shadow: 1px 1px 10px 2px #888888;
  height: 100vh;
  width: 200px;
  position: fixed;
  top: 0;
  left: 0;
  background-color: #ffffff;
  padding: 20px;
  display: flex;
  flex-direction: column;
}

.menu-link {
  color: rgb(96, 96, 96);
  margin-bottom: 10px;
  padding:  8px;
  padding-right: 1%;
  border-radius: 5px;
  text-decoration: none;
  display: flex;
  align-items: center;
  transition: background-color 0.3s, color 0.3s;
}

.menu-link:hover {
  background-color: #f0f0f0;
  color: #000000; 
}

.menu-link.router-link-active {
  background-color: #ffa500; 
  color: #ffffff; 
  font-weight: bold;
  display: flex;
  border-radius: 5px;
  width: 100%;
}

.icon {
  margin-right: 10px;
}

@media only screen and (max-width: 600px) {
  .sidebar {
    width: 60px;
    padding: 10px;

  }

  .menu-link {
    color: transparent;
    justify-content: center;
  }

  .menu-link:hover {
    color: transparent;
  }

  .icon {
    color: #000000;
    margin-left: 35px;
    visibility: visible;
  }
  .sidebar a {
    visibility: hidden;
  }

  .menu-link.router-link-active .icon{
    visibility: directives;
    background-color: #ffa500;
    border-radius: 5px;
    padding: 10px;
    margin: 0;
    width: 80%;
    color: #ffffff;
  }
}
</style>
