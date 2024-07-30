<template>
  <div :class="['sidebar', { 'sidebar-collapsed': isCollapsed }]">
    <div class="menu">
      <router-link to="/adminhome" class="menu-link" active-class="router-link-active">
        <font-awesome-icon class="icon" icon="home" />
        <span v-if="!isCollapsed">Dashboard</span>
      </router-link>
      <router-link to="/activity" class="menu-link" active-class="router-link-active">
        <font-awesome-icon class="icon" icon="chart-line" />
        <span v-if="!isCollapsed">Activity</span>
      </router-link>
      <router-link to="/settings" class="menu-link" active-class="router-link-active">
        <font-awesome-icon class="icon" icon="cog" />
        <span v-if="!isCollapsed">Settings</span>
      </router-link>
      <router-link to="/" class="menu-link" active-class="router-link-active">
        <font-awesome-icon class="icon" icon="sign-out-alt" />
        <span v-if="!isCollapsed">Log out</span>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    isCollapsed: {
      type: Boolean,
      default: true
    }
  }
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
  transition: width 0.3s;
}

.sidebar-collapsed {
  width: 60px;
}

.menu {
  display: flex;
  flex-direction: column;
}

.menu-link {
  color: rgb(96, 96, 96);
  margin-bottom: 10px;
  padding: 8px;
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
  border-radius: 5px;
  width: calc(100% - 16px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.icon {
  margin-right: 10px;
}

.sidebar .menu-link span {
  display: none;
}

.sidebar:not(.sidebar-collapsed) .menu-link span {
  display: inline;
}

.sidebar .menu-link {
  justify-content: center;
}

.sidebar:not(.sidebar-collapsed) .menu-link {
  justify-content: flex-start;
}

@media only screen and (max-width: 600px) {
  .sidebar {
    width: 60px;
  }
  .sidebar:not(.sidebar-collapsed) {
    width: 160px; 
  }
}
</style>
