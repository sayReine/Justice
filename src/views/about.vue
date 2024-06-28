<template>
    <Nav/>
<section class="carding">
    <div class="crime">
        <h1>About CrimeWatchHub</h1>
        <p>Welcome to CrimeWatchHub, where technology meets community safety. Our mission is to provide a reliable platform for individuals to report crimes and collaborate with law enforcement agencies for prompt action and justice.</p>
    </div>
    
    <div class="card_nbr">
        <Card Title="Mission" Paragraph="At CrimeWatchHub, our mission is to empower individuals to contribute to safer communities by providing a secure and confidential platform for reporting crimes and collaborating with law enforcement agencies. We believe that by leveraging technology and community engagement, we can make a significant impact on crime prevention and justice.

"/>
        <Card Title="Our Vision" Paragraph="At CrimeWatchHub, we envision a society where every voice matters in combating crime. By empowering individuals with the tools to report incidents, we strive to create safer neighborhoods and foster a culture of accountability."/>
        <Card Title="Our Team" Paragraph="Meet the passionate individuals behind CrimeWatchHub who are dedicated to making a difference in community safety. Our team comprises experienced professionals in technology, law enforcement liaison, and community outreach, working together to enhance crime reporting and response mechanisms."/>
    </div>
    <div class="crime">
        <h1>About What We Do</h1>
        <p>Welcome to CrimeWatchHub, where technology meets community safety. Our mission is to provide a reliable platform for individuals to report crimes and collaborate with law enforcement agencies for prompt action and justice.</p>
    </div>
    <div class="cardi">
        <Card Title="Crime Reporting" Paragraph="Our platform allows users to securely document and report crimes they witness or experience. We ensure confidentiality and provide options for anonymous reporting to protect user privacy."/>
        <Card Title="Data Security" Paragraph="Your trust is paramount to us. We employ state-of-the-art security measures to safeguard your information and ensure secure data handling at every step."/>
        <Card Title="Partnerships with Law Enforcement" Paragraph=" We collaborate closely with law enforcement agencies to facilitate the swift transfer of reports and support investigations. Your reports are forwarded directly to the relevant authorities for action."/>
    </div>
    <div class="crime">
        <h1>Our Team</h1>
        <p>Meet the passionate individuals behind CrimeWatchHub who are dedicated to making a difference in community safety. Our team comprises experienced professionals in technology, law enforcement liaison, and community outreach, working together to enhance crime reporting and response mechanisms.</p>
    </div>
    
    </section>
    <div class="backgroundimage"></div>
    <Footer/>
</template>
<script>
import Card from '../components/Card.vue';
import Footer from '../components/Footer.vue';
import Nav from '../components/Nav.vue'

export default{
    components: {
        Card,Footer,Nav
    },
    props:[
        "Title", 
        "Paragraph"
    ]
}
</script>

<style>
.card_nbr,.cardi {
  
  display: flex;
}

.carding{
   position: relative;
  top: 70px; 
  margin-bottom: 60px;
}

.carding .crime {
    
    padding: 20px ;
}

.carding .crime h1{
    border-bottom: 1px solid blue;
    padding: 20px 0px ;
    width: 95%;
}

.carding .crime p{
    line-height: 1.5;
    position: relative;
    left: 19px;
}

.backgroundimage::before{
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* Adjust the opacity as needed */
    z-index: 1;
}

.backgroundimage {
    position: relative;
    background-image: url('../assets/army.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    /* width: 200px; */
    height: 100vh;
    background-attachment: fixed;
}
</style>
