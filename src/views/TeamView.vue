<template>
   <Nav/>
<section class="carding">
    <div class="crime">
        <h1>General Questions</h1>
        <p></p>
    </div>
    
    <div class="card_nbr">
        <Card Title="How do I report a crime through CrimeWatchHub?" Paragraph="To report a crime, simply navigate to our 'Report a Crime' page and fill out the necessary details, including the crime name, scene of the crime and any relevant information or evidence you have.

"/>
        <Card Title="Can I report a crime on CrimeWatchHub?" Paragraph="Yes, you can choose to trust us  reporting a crime through CrimeWatchHub. We prioritize your privacy and provide options to protect your identity without making you take too much risks with your life"/>
        <Card Title="What types of crimes can I report?" Paragraph="You can report various types of crimes, including theft, vandalism, assault, harassment, and more. Our platform is designed to handle a wide range of incidents."/>
    </div>
    <div class="crime">
        <h1></h1>
    </div>
    <div class="cardi">
        <Card Title="How does CrimeWatchHub ensure data security and privacy?" Paragraph="We use advanced encryption and security measures to safeguard your data. Your personal information and reported crime details are treated with the utmost confidentiality."/>
        <Card Title="What happens after I submit a crime report?" Paragraph="Once you submit a crime report, our team reviews the information and forwards it to the relevant law enforcement agencies. You can track the progress of your report through our platform."/>
        <Card Title="Is there a fee for using CrimeWatchHub?" Paragraph=" No, using CrimeWatchHub to report crimes and collaborate with law enforcement is completely free of charge. Our goal is to provide a valuable public service."/>
    </div>
    <div class="crime">
        <h1></h1>
       
    </div>
    <div class="cardi">
        <Card Title="Can I contact CrimeWatchHub for support or additional assistance?" Paragraph="Yes, we have dedicated channels for technical support, general inquiries, and partnerships. Feel free to reach out to us via email, phone, or our feedback form."/>
        <Card Title="Are my reports confidential?   " Paragraph="Yes, your reports are treated with strict confidentiality. We only share information with law enforcement agencies as necessary for investigation and response."/>
    </div>

    <h1>TYPES OF CRIMES WHICH ARE COMMITTED AND THEIR NAMES</h1>

    <div class="crime">
        <h1>Violent Crimes</h1>
    </div>
    <div class="cardi">
        <Card Title="Assault" Paragraph=" Intentionally causing physical harm or injury to another person without their consent. Example:  Punching someone during an argument."/>
        <Card Title="Homicide" Paragraph=" Unlawfully causing the death of another person.
Example: Murder or manslaughter."/>
        <Card Title="Robbery" Paragraph="  Taking property from someone else through force, threat, or intimidation.
Example: Using a weapon to steal money from a bank."/>
        <Card Title="Sexual Assault" Paragraph="Non-consensual sexual contact or behavior.
Example: Rape or sexual harassment."/>
    </div>
    <div class="crime">
        <h1>Property Crimes</h1>
    </div>
    <div class="cardi">
        <Card Title="Burglary" Paragraph="Illegally entering a building or property with the intent to commit a crime, typically theft.
Example: Breaking into a house to steal valuables."/>
        <Card Title="Theft" Paragraph="Taking someone else's property without permission with the intent to deprive the owner of it permanently.
Example: Shoplifting from a store."/>
        <Card Title="Vandalism" Paragraph=" Willfully damaging or destroying property belonging to others.
Example: Graffiti on public or private buildings."/>
        <Card Title="Arson" Paragraph="Intentionally setting fire to property.
Example: Burning down a house for malicious purposes."/>
    </div>

    <div class="crime">
        <h1>Financial Crimes</h1>
    </div>
    <div class="cardi">
        <Card Title="Fraud" Paragraph="Deceiving someone for personal or financial gain.
Example: Identity theft or credit card fraud."/>
        <Card Title="Embezzlement" Paragraph="Misappropriating funds or property entrusted to one's care.
Example: Stealing money from an employer's account."/>
        <Card Title="Money Laundering" Paragraph=" Concealing the origins of illegally obtained money.
Example: Funneling drug money through legitimate businesses."/>
        <Card Title="Forgery" Paragraph="Falsifying documents or signatures with the intent to deceive.
Example: Forgery of checks or legal contracts."/>
    </div>
    
    <div class="crime">
        <h1>Cyber Crimes</h1>
    </div>
    <div class="cardi">
        <Card Title="Hacking" Paragraph=" Unauthorized access to computer systems or networks.
Example: Breaking into a company's database to steal sensitive information."/>
        <Card Title="Phishing" Paragraph="Obtaining sensitive information by posing as a trustworthy entity.
Example: Sending fake emails claiming to be from a bank and asking for account details.."/>
        <Card Title="Cyberbullying" Paragraph="  Harassment or intimidation using electronic communication.
Example: Posting malicious or hurtful messages on social media."/>
        <Card Title="Online Fraud" Paragraph="Deceiving individuals or companies through online platforms.
Example: Selling fake products on an e-commerce website."/>
    </div>
    
    
    </section>
    <div class="backgroundimage"></div>
    <Footer/>

</template>

<script>
import Nav from '../components/Nav.vue';
import Footer from '../components/Footer.vue';
import Card from '../components/Card.vue';
export default {
    // components: {ProfileCard}
    props: ['id'],
    data(){
        return {
            
        }
    },
    components: {
        Nav,Footer,Card
    }
}
</script>

<style>

</style>