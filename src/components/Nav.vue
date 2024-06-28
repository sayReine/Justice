<template>
     <header>
        <nav>
            <div class="nav_content">
                <div class="logo"><router-link class="link"  to="/">CrimeWatchHub</router-link ></div>
                <label for="check" class="checkbox">
                    <i class="ri-menu-line"></i>
                </label>
                    <input type="checkbox" name=" check" id="check">
                <ul>
                    <li><router-link class="link" to="/home">Home</router-link></li>
                    <li><router-link class="link" to="/about">About us</router-link></li>
                    <li><router-link class="link" to="/team">FAQs</router-link></li>
                    <li><router-link class="link" to="/report">Report a crime</router-link></li>
                    <li><router-link class="link" to="/admin">View reports</router-link></li>
                    
                    
                    
                </ul>
            </div>
        </nav>
    </header>
</template>

<script>
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Platypi:ital,wght@0,300..800;1,300..800&display=swap');

:root{
    --primary-color: #a855f7;
    --primary-color-dark: #9333ea;
    --secondary-color: #ca8a04;
    --text-dark: #1f2937;
    --text-light: #6b7280;
    --max-width: 1200px;
}

*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

a{
    text-decoration: none;
}

body{
    font-family: "Platypi", serif;
}

nav{
    width: 100%;
    position: fixed;
    top: 0;
    left: 0;
    background-color: #ffffff;
    z-index: 99;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    z-index: 1000;
}

.nav_content{
    max-width: var(--max-width);
    margin: auto;
    padding: 1.5rem 1rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

nav .logo .link{
    font-size: 1.5rem;
    font-weight: 600;
    color: var(--primary-color);
    transition: 0.3s;

}
nav .logo .link:hover{
    color: var(--primary-color-dark);
}
nav .checkbox{
    display: none;
}

nav input{
    display: none;
}

nav .checkbox i{
    font-size: 2rem;
    color: var(--primary-color);
    cursor: pointer;

}

ul{
    display: flex;
    align-items: center;
    gap: 1rem;
    list-style: none;
    transition: left 0.3s;
}

ul li .link{
    padding: 0.5rem 1rem;
    border: 2px solid transparent;
    text-decoration: none;
    font-weight: 600;
    color: var(--text-dark);
    transition: 0.3s;
}

ul li .link:hover{
    border-top-color: var(--secondary-color);
    border-bottom-color: var(--secondary-color);
    color: var(--secondary-color);
}

@media screen and (max-width: 768px) {
    .link {
        display: flex;
        flex-direction: column;
        /* align-items: flex-start; */
        width: 50%;
    }

    ul {
        /* display: none; */
        width: 100%;
        padding-left: 0;
    }

    li {
        margin-bottom: 10px;
        display: block;
    }

    .checkbox {
        display: block;
        cursor: pointer;
    }

    input[type="checkbox"] {
        display: none;
    }

    input[type="checkbox"]:checked + ul {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 100%;
    }
}
</style>