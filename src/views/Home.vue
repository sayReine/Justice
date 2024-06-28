<template>

    <div>
      <h1 class="login">LOGIN</h1>
      <form @submit.prevent="login">
        <label>Username:</label>
        <input type="text" v-model="username" />
        <br />
        <label>Password:</label>
        <input type="password" v-model="password" />
        <br />
        <p>if you don't have an account click on <router-link to="/register"> sign up</router-link></p>
        
        <button type="submit" @click="login()">Login</button>
      </form>
    </div>
  </template>
  
  <script> 
  import axios from 'axios';
  import Index from '../router/index.js';
  import Nav from '../components/Nav.vue'
  import Footer from '../components/Footer.vue'
import indexView from './indexView.vue';
import { createRouter, createWebHistory } from 'vue-router'
const router = createRouter({
  history: createWebHistory(),
  routes: [
    // { path: '/', name: 'login', component: Home },
    { path: '/', name: 'home', component: indexView },
    // other routes...
  ]
})

  
  export default {
    data() {
      return {
        username: '',
        password: ''
      }
    },
    
    methods: {
      async login() {
        try {
            const response = await axios.post('http://localhost:3000/login', {
  username: this.username,
  password: this.password
});
          if (response.data.success) {
            // Login successful, redirect to front page
            this.$router.push('/home');
          } else {
            // Login failed, display error message
            alert('Invalid credentials');
          }
        } catch (error) {
          console.error(error);
        }
      }
    }
  }
  </script>

  <style>
  button{
    border: none;
    padding: 15px;
    margin: 10px 30px;
    color:white;
    font-weight: bolder;
    background-color: red;
    font-size: 18px;
    border-radius: px;
    position: relative;
    left: -20px;
    cursor: pointer;

}
button:hover{
    background-color: green;
}

.login{
  position: relative;
  top: 20px;
  left: -70px;
}
  </style>