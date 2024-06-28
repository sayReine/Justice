<script >
import { RouterLink, RouterView } from 'vue-router'
import NavBar from './components/Nav.vue'
import Footer from './components/Footer.vue';

export default {
  components: {
    NavBar,Footer
  }
}
</script>
 
<template>
  <!-- <NavBar/>   -->
  <RouterView />
  <!-- <Footer/> -->
</template>

<style >

</style>
