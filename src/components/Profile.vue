<template>
    
    <div class="card">
        <div class="card_title">
            <img :src="image" alt="our image">
            <h1>{{ProfileName}}</h1>
            <p>{{ name }}</p>
            <p class="description">Lorem, ipsum elit. Porro, assumenda! Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus, earum?</p>
        </div>
    </div>
</template>

<script>
export default{
    props: [
    "ProfileName",
    'name',
    'description',
    "image"
]
}

</script>

<style>
.card{
    display: flex;
    /* flex-direction: row; */
    align-items: center;
    justify-content: center;
    padding: 1rem;
    border-radius: 10px;
    background: #000;
    color: white;
    max-width: 300px;
    text-align: center;
    margin: 1rem;
    
}
p{
    line-height: 1;
    margin: 20px 0;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    font-weight: 200;
}
.description{
    line-height: 2;
    font-weight: 300;
}
img{
    width: 50%;
    border-radius: 100px;
    margin: 10px;
}

h1{
    font-size: 22px;
    font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
}

</style>