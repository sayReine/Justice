<template>
    <div class="cards">
       <div class="card_title">
        <h1>{{ Title }}</h1>
        <p>{{ Paragraph }}</p>
     </div> 
    </div>
    
</template>
<script>
export default{
    
    props:[
        "Title", 
        "Paragraph"
    ]
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Platypi:ital,wght@0,300..800;1,300..800&display=swap');


.cards{
    display: flex;
    width: 100%;
    margin: 40px;
    box-shadow: 0px 0px 5px rgba(0,0,0,0.5);
    padding: 20px;
    border-radius: 10px;
}

 .cards .card_title{
    font-family: "Platypi", serif;

}

.cards .card_title p{
    line-height: 2;
}
</style>
