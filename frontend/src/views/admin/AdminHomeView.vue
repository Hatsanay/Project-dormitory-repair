<template>
  <div :class="['main-container', { 'sidebar-expanded': !isSidebarCollapsed }]">
    <AdminSidebarComponent :isCollapsed="isSidebarCollapsed" />
    <div class="content-wrapper">
      <NavbarComponent @toggleSidebar="toggleSidebar" :isSidebarCollapsed="isSidebarCollapsed" />
      <AdminHomeComponent />
      <FooterComponent />
    </div>
  </div>
</template>

<script>
import AdminSidebarComponent from '../../components/Admin/AdminSidebarComponent.vue';
import AdminHomeComponent from '../../components/Admin/home/AdminHomeComponent.vue';
import FooterComponent from '../../components/FooterComponent.vue';
import NavbarComponent from '../../components/NavbarComponent.vue';

export default {
  name: 'AdminHomeView',
  components: {
    AdminHomeComponent,
    AdminSidebarComponent,
    NavbarComponent,
    FooterComponent,
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
  flex-direction: row;
  max-height: 100vh;
  transition: margin-left 0.3s;
}

.content-wrapper {
    
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  transition: margin-left 0.3s;
  padding-top: 0; /* เพิ่มเพื่อชิดด้านบน */
  margin-top: 0; /* เพิ่มเพื่อชิดด้านบน */
}

.sidebar {
  flex: 0 0 25%;
  max-width: 40%;
  box-sizing: border-box;
  padding: 10px;
}

.sidebar-expanded .content-wrapper {
  margin-left: 200px;
}

.content-wrapper {
  width: 100%;
  margin-left: 30px;
}

@media only screen and (max-width: 600px) {
  .sidebar-expanded .content-wrapper {
    margin-left: 250px;
  }

  .content-wrapper {
    margin-left: 40px; 
  }
}


</style>
