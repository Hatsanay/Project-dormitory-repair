<template>
  <div>
    <!-- <NavbarComponent/> -->
    <LoginFormComponent/>
    
  </div>
</template>

<script>
import LoginFormComponent from '@/components/LoginFormComponent.vue';

// import NavbarComponent from '../components/NavbarComponent.vue';

export default {
  name: 'HomeView',
  components: {
    LoginFormComponent
}
};
</script>
