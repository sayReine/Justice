<template>
    <Nav/>

    <div class="table">
       <h1>View the last reported crimes</h1>
    
    <br>
    <table border="0" cellspacing="2" v-if="sends.length > 0">
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Phone Number</th>
            <th>Email Address</th>
            <th>Crime Name</th>
            <th>Crime Scene</th>
            <th>Details</th>
        </tr>
        <tr v-for="(data, index) in sends" :key="index">
            <td>{{ data.id }}</td>
            <td>{{ data.fullName }}</td>
            <td>{{ data.phoneNumber }}</td>
            <td>{{ data.EmailAddress }}</td>
            <td>{{ data.crimeName }}</td>
            <td>{{ data.crimeScene }}</td>
            <td>{{ data.details }}</td>
        </tr>
    </table>
    <center v-else>
        <p>There are no messages</p>
    </center> 
    </div>
    
    <Footer/>
</template>

<script>
import Footer from '@/components/Footer.vue'
import Nav from '../components/Nav.vue'

export  default {
    data(){
        return{
            sends: [
                
            ]
        }
    },
    mounted(){
        fetch("http://localhost:3000/")
            .then(res => res.json())
            .then(data => this.sends = data)
    },
    components: {
        Footer,Nav
    }
}
</script>

<style>
th{
    background-color: rgb(27, 120, 182);
    color: white;
}

tr:nth-of-type(even){
    background-color: lightgray;
}

.table{
    position: relative;
    top: 100px;
    width: 95%;
    margin: 0 auto;
    padding: 20px 40px;
}

td{
    margin: 10px;
    padding: 10px;
}

</style>