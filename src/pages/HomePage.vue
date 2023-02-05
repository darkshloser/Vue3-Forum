<template>
  <div class="content">
    <img alt="Vue logo" src="../assets/logo.png" />
    <HomeContent/>
  </div>
</template>

<script>
// @ is an alias to /src
import HomeContent from '@/components/HomeContent';
export default {
  name: "HomeView",
  components: {
    HomeContent
  },
};
</script>
