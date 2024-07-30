<template>
  <div :class="['main-container', { 'sidebar-expanded': !isSidebarCollapsed }]">
    <AdminSidebarComponent :isCollapsed="isSidebarCollapsed" />
    <div class="content-wrapper">
      <NavbarComponent @toggleSidebar="toggleSidebar" :isSidebarCollapsed="isSidebarCollapsed" />
      <AdminHomeComponent />
    </div>
  </div>
</template>

<script>
import AdminSidebarComponent from '../../components/Admin/AdminSidebarComponent.vue';
import AdminHomeComponent from '../../components/Admin/home/AdminHomeComponent.vue';
import NavbarComponent from '../../components/NavbarComponent.vue';

export default {
  name: 'AdminHomeView',
  components: {
    AdminHomeComponent,
    AdminSidebarComponent,
    NavbarComponent,
  },
  data() {
    return {
      isSidebarCollapsed: true
    };
  },
  methods: {
    toggleSidebar() {
      this.isSidebarCollapsed = !this.isSidebarCollapsed;
    }
  }
};
</script>

<style scoped>
.main-container {
  display: flex;
  transition: margin-left 0.3s;
}

.sidebar-expanded .content-wrapper {
  margin-left: 200px;
}

.content-wrapper {
  width: 100%;
  margin-left: 60px;
  transition: margin-left 0.3s;
}

@media only screen and (max-width: 600px) {
  .sidebar-expanded .content-wrapper {
    margin-left: 160px; 
  }

  .content-wrapper {
    margin-left: 60px;
  }
}
</style>
