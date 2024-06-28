<template>
  <body>
    <div class="wrapper">
        <main>
            <!-- Your main content here -->
        </main>
        <footer>
            <div class="footer-container">
                <div class="footer-left">
                    <h3>Contact Us</h3>
                    <p>Email: sayinzogae@gmail.com</p>
                    <p>Phone: +250 780 545 732</p>
                </div>
                <div class="footer-right">
                    <h3>Follow Us</h3>
                    <ul>
                        <li><a href="#">Facebook</a></li>
                        <li><a href="#">Twitter</a></li>
                        <li><a href="#">Instagram</a></li>
                    </ul>
                    <router-link class="link" to="/">Logout</router-link>
                </div>
            </div>
                          <div class="copyright">
                <p>&copy; 2024 Your Website. All Rights Reserved.</p>
            </div>
        </footer>
    </div>
</body>
</template>

<script>
export default {

}
</script>

<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex; /* Add flex display to the body */
    flex-direction: column; /* Ensure vertical stacking of children */
    min-height: 100vh; /* Ensure the body covers the entire viewport */
}

.wrapper {
    flex: 1; /* Let the wrapper grow to fill remaining space */
    display: flex;
    flex-direction: column;
    width: 100%;
}

main {
    flex: 1; /* Let the main content area grow to fill remaining space */
}

footer {
    background-color: #333;
    color: #fff;
    padding: 30px 0;
    width: 100%;
}

.footer-container {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.footer-left h3,
.footer-right h3 {
    font-size: 1.2em;
    margin-bottom: 10px;
}

.footer-left p,
.footer-right ul {
    margin: 0;
    line-height: 2;
}

.footer-right ul {
    list-style-type: none;
    padding: 0;
}

.footer-right ul li {
    margin-bottom: 5px;
}

.footer-right a {
    color: #fff;
    text-decoration: none;
}

.footer-right a:hover {
    text-decoration: underline;
}

/* Remove the position:relative and bottom:-30px from the copyright */
.copyright {
    text-align: center;
    background-color: #222;
    padding: 8px 0;
    position: relative;
    bottom: -30px;
}

/* Ensure the copyright text is not overlapped by the footer */
.footer-container + .copyright {
    margin-top: auto;
}


</style>