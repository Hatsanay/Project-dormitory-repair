<template>
  <div>
    <NavbarComponent />
    <ProtectedContentComponent />
  </div>
</template>

<script>
import NavbarComponent from '../components/NavbarComponent.vue';
import ProtectedContentComponent from '../components/ProtectedContentComponent.vue';

export default {
  name: 'ProtectedView',
  components: {
    NavbarComponent,
    ProtectedContentComponent
  }
};
</script>
