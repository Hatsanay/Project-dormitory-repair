<template>
  <div class="content">
    <!-- <h1>Admin Home</h1> -->
    <p>Welcome to the Admin Home Page.</p>
    <p>Welcome to the Admin Home Page.</p>
    <p>Welcome to the Admin Home Page.</p>
    <p>Welcome to the Admin Home Page.</p>
  </div>
</template>

<script>
export default {
  name: 'AdminHomeComponent'
};
</script>

<style scoped>
.content {
  margin-left: 250px;
  width: 100%;
  background-color: #ffffff;
  height: 100vh;
}

@media only screen and (max-width: 600px) {
  .content {
    margin-left: 100px;
    width: 100%;
    background-color: #ffffff;
    height: 100vh;
  }
}
</style>
