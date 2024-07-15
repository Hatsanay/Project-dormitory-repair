<template>
  <div class="main-container">
    <AdminSidebarComponent />
    <NavbarComponent />    <AdminHomeComponent />
  </div>
</template>

<script>
import AdminHomeComponent from '../../components/Admin/home/AdminHomeComponent.vue';
import AdminSidebarComponent from '../../components/Admin/AdminSidebarComponent.vue';

export default {
  name: 'AdminHomeView',
  components: {
    AdminHomeComponent,
    AdminSidebarComponent,
  }
};
</script>

<style scoped>
.main-container {
  display: flex;
}
</style>
