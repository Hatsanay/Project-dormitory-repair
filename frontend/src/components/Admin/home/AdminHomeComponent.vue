<template>
  <div class="content">
    <div class="container">
      <h1>hatsanai</h1>
    </div>
  </div>
</template>

<script>

export default {
  name: 'AdminHomeComponent',
  components: {
  }
};
</script>

<style>
.content {
  width: 100%;
  height: 100vh;
  background-color: #ffffff;
  transition: margin-left 0.3s;
  display: flex;
  flex-direction: column;
}

.container {
  padding-left: 3%;
  width: 100%;
  height: 100%;
  box-sizing: border-box;
  flex: 1;
}

@media only screen and (max-width: 600px) {
  .content {
    margin-left: 70px;
    width: calc(100% - 70px);
    background-color: #ffffff;
    height: 100vh;
  }
}
</style>
