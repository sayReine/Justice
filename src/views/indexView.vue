<template>
    <body>
        
    
    <NavBar/>
    <section class="container">
        <div class="background-image"></div>
        <div class="words">
          <h1>Crime Watch Hub</h1>
        <p>At Crime Watch Hub, we are dedicated to empowering individuals to report crimes and
             contribute to safer communities. Our platform provides a secure and confidential
              way for you to document incidents and share crucial information with law enforcement
             to report crimes and contribute to safer communities. Our platform
              provides a secure and confidential way for you to document incidents
               and share crucial information with law enforcement agencies. </p>
                </div>
    </section>

    <section class="logo">
        <img src="../assets/rwanda.png" alt="">
        <img src="../assets/policeLogo.jpeg" alt="">
        <img src="../assets/rib.png" alt="">
        <img src="../assets/rdf.jpg" alt="">

    </section>

    <section class="ourFeatures">
        <h1>Our Features</h1>
        <div class="image">
            <img src="../assets/people2.jpg" alt="">
            <div class="featuresParagraph">
                <h1 class="we">WE...</h1>
                <ol>
                    <li> Protect your identity while providing vital information about crimes.</li>
                    <li> Easily record details, upload evidence, and submit reports with just a few clicks.</li>
                    <li> Your privacy and data security are our top priorities. We use advanced encryption and security measures to safeguard your information.</li>
                    <li> Reports are promptly forwarded to relevant law enforcement authorities for swift action.</li>
                    <li>Join forces with others in your community to create a safer environment for everyone.</li>
                </ol>
            </div>
        </div>
    </section>
    <section class="working">
        <h1>How it works</h1>

    <div class="content">
        <div class="image">
        <img src="../assets/people1.jpg" alt="">
        <img src="../assets/wallpaper.jpeg" alt="">
        </div>
        <div class="workwords">
            <ol type="I">
                <li> <span>Record:</span> First documenting the details of the crime you've witnessed or experienced. Include relevant information such as location, time, descriptions of individuals involved, and any supporting evidence like photos or videos.</li>
                <li><span>Submit:</span>  Once your report is complete, submit it through our secure platform. You can choose to remain anonymous if you prefer.</li>
                <li><span>Action:</span>  Our team ensures that your report reaches the appropriate law enforcement agencies. They will take the necessary steps to investigate and address the incident.</li>
                <li><span>Track Progress:</span>  Stay informed about the progress of your report and any updates from law enforcement through our platform.</li>
            </ol>
        </div>
    </div>
    </section>
    <Footer/>
    <RouterView/>
</body>
</template>

<script>
import Footer from '@/components/Footer.vue';
import NavBar from '@/components/Nav.vue';
import { RouterLink, RouterView } from 'vue-router'


export default{
    data() {
    return {
      role: ''
    }
  },
  
  mounted() {
    // Get the role from the login response
    this.role = this.$route.query.role;
  },
    components: {
        Footer,NavBar
    }
}
</script>

<style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Platypi", serif;
            
        }
       

        .background-image {
    position: relative;
    background-image: url('../assets/wallpaper.jpeg');
    background-size: cover;
    background-repeat: no-repeat;
    /* width: 200px; */
    height: 100vh;
    background-attachment: fixed;
}

.background-image::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* Adjust the opacity as needed */
    z-index: 1; /* Ensure the overlay is above the background image */
}


.container{
    position: relative;
}

.words { 
    color: rgb(255, 255, 255);
    position: absolute;
    top: 200px;
    left: 20px; 
    z-index: 2; 
    width: 50%;
}


.words h1{
    font-size: 42px;
    font-family: serif;
    color: white;
}

.words p{
    font-weight: 500;
    font-size: 24px;
    line-height: 1.5;
}

.watch{
    position: relative;
    top: 20px;
    padding: 10px 20px;
}

.watch h1{
    font-size: 26px;
    font-weight: 300;
    border-bottom: 1px solid blue;
    padding: 20px 0;
}

.watch p{
    line-height: 1.6;
    width: 95%;
    margin: 20px;
    font-family: "Platypi", serif;
    font-size: 17px;
}

.logo{
    display: flex;
    justify-content: space-around;
}

.logo img{
    width: 200px;
    object-fit: cover;
}

.ourFeatures{
    position: relative;
    top: 20px;
    padding: 10px 20px;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 10;
        transform: translateY(0);
    }
}

.ourFeatures {
    opacity: 0; /* Initially hidden */
    animation: fadeIn 1s ease forwards; /* Apply the animation */
}

.ourFeatures h1{
    font-size: 26px;
    font-weight: 300;
    border-bottom: 1px solid blue;
    padding: 20px 0;
    margin-bottom: 50px;
}

.ourFeatures .we{
    font-size: 26px;
    font-weight: 300;
    border-bottom: 1px solid blue;
    padding: 20px 0;
    margin-bottom: 50px;
    position: relative;
    left: -20px;
}

.ourFeatures .image {
    display: flex;
    width: 80%;
    margin: 0 auto;
}

.ourFeatures .image img{
    width: 40%;
    height: 450px;
    border-radius: 5px;
    object-fit: cover;
}



.ourFeatures .image .featuresParagraph{
    width: 50%;
    position: relative;
    left: 100px;
    font-size: 18px;
    font-weight: 300;
    line-height: 1.5;
}

.working{
    position: relative;
    top: 20px;
    padding: 10px 20px;
    
}

.content {
    width: 80%;
    margin: 0 auto;
}

.working h1{
    font-size: 26px;
    font-weight: 300;
    border-bottom: 1px solid blue;
    padding: 20px 0;
    margin-bottom: 50px;
}

.working .image{
    display: flex;
}

.working  img{
    width: 70%;
    height: 300px;
    border-radius: 1px;
    background-attachment: fixed scroll;
    object-fit: cover;
    position: relative;
    left: -50px;
}

.working .workwords{
    width: 70%;
    position: absolute;
    left: 10%;
    top: 530px;
    line-height: 1.7;
    font-size: 20px;
    font-weight: 300;
    
}

.working .workwords span{
    font-size: 20px;
    font-weight: 600;
}



</style>