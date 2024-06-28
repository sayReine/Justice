<template>
   
    <form action="">
      <h1>Register</h1>
      <label for="">Name</label>
      <input type="text" v-model="sends.Name" />
      <label for="">username</label>
      <input type="text" v-model="sends.username" />
      <label for="">Password</label>
      <input type="password" v-model="sends.password" >
      <label for="">Email address</label>
      <input type="email"  v-model="sends.email" />
      <button class="report" @click="register()">Sign up</button> <!-- Call sendReport method -->
      <button class="cancel"><router-link class="router" to="/">Sign in</router-link></button>
    </form>
  </template>
  
  <script>
import Nav from '../components/Nav.vue'
// import HomeVue from './Home.vue'
import Home from './Home.vue'

  export default {
    data() {
  return {
    sends: {
      Name:"",
      username: "",
      password: "",
      email: "",
      
      
    }
  }
},
      components: {
        Nav
      },
      methods: {
          register() { // Method to send the report
            fetch("http://localhost:3000/person", {
  method: "POST",
  headers: {
    'Content-Type': 'application/json'
  },
  body: JSON.stringify(this.sends)
})
              .then(res => res.json())
              .then(data => {
                  console.log(data); // Log the response data if needed
                  // Optionally, you can perform actions after sending the report
              })
              .catch(err => console.log('ERROR', err));
          }
      }
  }
  </script>
  
  <style>
  *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

form{
    background-color: #f4f4f4;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    width: 50%;
    padding: 20px 30px;
    position: absolute;
    top: 100px;
    left: 280px;
    margin-bottom: 1030px;
    border-radius: 10px;
    z-index: 100;
}
h1{
    margin: 20px;
    text-align: center;
}

 label{
    display: block;
    padding: 10px 0;
}

input,textarea{
    border: none;
    padding: 10px;
    width: 100%;
    border-bottom: 1px solid black;
    border-radius: 5px;
    background: rgb(253, 245, 245);
}
.report{
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

}
.report:hover{
    background-color: green;
}
.cancel{
    border: none;
    padding: 15px;
    margin: 10px 10px;
    background-color: green;

}
.cancel:hover{
    background: white;
    border:1 px solid green;
    color: blue;
}
 .cancel .router{
    color:white;
    font-size: 14px;
    font-weight:bolder ;
}
.cancel .router:hover{
    color: blue;
    /* background-color: #f4f4f4; */
    padding: 15px 20px;
    border-radius: 10px;
}
  </style>
  