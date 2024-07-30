 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CAMPUS ACTIVITY PORTAL</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

html {
  scroll-behavior: smooth;
}

body {
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

header {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 5;
  width: 100%;
  display: flex;
  justify-content: center;
  background: #333;
}

.navbar {
  display: flex;
  padding: 0 10px;
  max-width: 1200px;
  width: 100%;
  align-items: center;
  justify-content: space-between;
}

.navbar input#menu-toggler {
  display: none;
}

.navbar #hamburger-btn {
  cursor: pointer;
  display: none;
}

.navbar .all-links {
  display: flex;
  align-items: center;
}

.navbar .all-links li {
  position: relative;
  list-style: none;
}

.navbar .logo a {
  display: flex;
  align-items: center;
  margin-left: 0;
}

header a, footer a {
  margin-left: 40px;
  text-decoration: none;
  color: #fff;
  height: 100%;
  padding: 20px 0;
  display: inline-block;
}

header a:hover, footer a:hover {
  color: #ddd;
}

.homepage {
  height: 100vh;
  width: 100%;
  position: relative;
  background-image: "https://img.studyclap.com/img/institute/college/original/9491/kcshkug-guntur-771b4c174c.jpg";
  background-position: center 65%;
  background-size: cover;
  background-attachment: fixed;
}

.homepage::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 100%;
  background: rgba(0, 0, 0, 0.2);
}

.homepage .content {
  display: flex;
  height: 85%;
  z-index: 3;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.homepage .content h1 {
  font-size: 60px;
  font-weight: 700;
  margin-bottom: 10px;
}

.homepage .content .text {
  margin-bottom: 50px;
  color: #fff;
  font-size: 20px;
  text-align: center;
  text-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
}

.content a {
  color: #000;
  display: block;
  text-transform: uppercase;
  font-size: 18px;
  margin: 0 10px;
  padding: 10px 30px;
  border-radius: 5px;
  background: #fff;
  border: 2px solid #fff;
  transition: 0.4s ease;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
  text-decoration: none;
}

.content a:hover {
  color: #fff;
  background: rgba(255,255,255,0.3);
}

section {
  display: flex;
  align-items: center;
  flex-direction: column;
  padding: 80px 0 0;
}

section h2 {
  font-size: 2rem;
}

section > p {
  text-align: center;
}

section .cards {
  display: flex;
  flex-wrap: wrap;
  max-width: 1200px;
  margin-top: 50px;
  padding: 0 10px;
  justify-content: space-between;
}

section.about {
  margin: 0 auto;
  max-width: 1200px;
}

.about .company-info {
  margin-top: 30px;
}

.about h3 {
  margin: 30px 0 10px;
}

.about .team {
  text-align: left;
  width: 100%;
}

.about .team ul {
  padding-left: 20px;
}

section .cards .card {
  background: #fff;
  padding: 40px 15px;
  list-style: none;
  border-radius: 5px;
  box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.04);
  margin-bottom: 40px;
  width: calc(100% / 3 - 30px);
  text-align: center;
}

.portfolio .cards .card {
  padding: 0 0 20px;
}

.services .card img {
  width: 120px;
  height: 120px;
  margin-bottom: 20px;
  border-radius: 100%;
  object-fit: cover;
}

.portfolio .card img {
  width: 100%;
  padding-bottom: 10px;
  aspect-ratio: 16 / 9;
  object-fit: cover;
  border-radius: 7px;
}

.cards .card p {
  padding: 0 15px;
  margin-top: 5px;
}

.about .row {
  padding: 0 10px;
}

.contact .row {
  margin: 60px 0 90px;
  display: flex;
  max-width: 1200px;
  width: 100%;
  align-items: center;
  justify-content: space-between;
}

.contact .row .col {
  padding: 0 10px;
  width: calc(100% / 2 - 50px);
}

.contact .col p {
  margin-bottom: 10px;
}

.contact .col p i {
  color: #7a7a7a;
  margin-right: 10px;
}

.contact form input {
  height: 45px;
  margin-bottom: 20px;
  padding: 10px;
  width: 100%;
  font-size: 16px;
  outline: none;
  border: 1px solid #bfbfbf;
}

.contact form textarea {
  padding: 10px;
  width: 100%;
  font-size: 16px;
  height: 150px;
  outline: none;
  resize: vertical;
  border: 1px solid #bfbfbf;
}

.contact form button {
  margin-top: 10px;
  padding: 10px 20px;
  font-size: 17px;
  color: #fff;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  background: #333;
  transition: 0.2s ease;
}

.contact form button:hover {
  background: #525252;
}

footer {
  width: 100%;
  display: flex;
  justify-content: center;
  background: #000;
  padding: 20px 0;
}

footer div {
  padding: 0 10px;
  max-width: 1200px;
  width: 100%;
  display: flex;
  justify-content: space-between;
}

footer span {
  color: #fff;
}

footer a {
  padding: 0;
}

@media screen and (max-width: 860px) {
  .navbar .all-links {
    position: fixed;
    left: -100%;
    width: 300px;
    display: block;
    height: 100vh;
    top: 75px;
    background: #333;
    transition: left 0.3s ease;
  }

  .navbar #menu-toggler:checked~.all-links {
    left: 0;
  }

  .navbar .all-links li {
    font-size: 18px;
  }

  .navbar #hamburger-btn {
    display: block;
  }

  section > p {
    text-align: center;
  }

  section .cards .card {
    width: calc(100% / 2 - 15px);
    margin-bottom: 30px;
  }

  .homepage .content h1 {
    font-size: 40px;
    font-weight: 700;
    margin-bottom: 10px;
  }

  .homepage .content .text {
    font-size: 17px;
  }

  .content a {
    font-size: 17px;
    padding: 9px 20px;
  }

  .contact .row {
    flex-direction: column;
  }

  .contact .row .col {
    width: 100%;
  }

  .contact .row .col:last-child {
    margin-top: 40px;
  }

  footer a {
    height: 0;
  }
}

@media screen and (max-width: 560px) {
  section .cards .card {
    width: 100%;
    margin-bottom: 30px;
  }
}


    </style>
  </head>
  <body>
  
    <header>
      <nav class="navbar">
        <h2 class="logo"><a href="index.jsp">KL University</a></h2>
        <input type="checkbox" id="menu-toggler">
        <label for="menu-toggler" id="hamburger-btn">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="24px" height="24px">
            <path d="M0 0h24v24H0z" fill="none"/>
            <path d="M3 18h18v-2H3v2zm0-5h18V11H3v2zm0-7v2h18V6H3z"/>
          </svg>
        </label>
        <ul class="all-links">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="#highlights">Highlights</a></li>
          <li><a href="#activities">Activities</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#contact">Contact Us</a></li>
		  <li><a href="login.jsp">User Login</a></li>
          <li><a href="adminlogin.jsp">Admin Login</a></li> 
          <li><a href="registration.jsp">Register</a></li>
        </ul>
      </nav>
    </header>
    <section class="homepage" id="home">
      <div class="content">
        <div class="text">
          <h1>KL University </h1>
          <p>
            Building the brave leaders of tomorrow</p>
        </div>
        <a href="#activities">Our Activities</a>
      </div>
    </section>

    <section class="services" id="activities">
      <h2>Our Activities</h2>
      <p>Explore our university clubs.</p>
      <ul class="cards">
        <li class="card">
		<img class="logo" src="images/megha.png" alt="Logo Here"/>
          <h3>Megha</h3>
          <p>Cloud and Edge Computing</p>
        </li>
        <li class="card">
		<img class="logo" src="images/kog_club.png" alt="Logo Here"/>
          <h3>Kognitiv</h3>
          <p>AI</p>
        </li>
        <li class="card">
          <img src="images/narth_club.png" alt="img">
          <h3>Narthana</h3>
          <p>Dancing Club</p>
        </li>
        <li class="card">
          <img src="images/sac_club.png" alt="img">
          <h3>SAC</h3>
          
        </li>
        <li class="card">
          <img src="images/chair.jpg" alt="img">
          <h3>Club 5</h3>
          <p>Game Development</p>
        </li>
        <li class="card">
          <img src="images/light.jpg" alt="img">
          <h3>Club 6 </h3>
          <p>Software Modelling and DevOps</p>
        </li>
      </ul>
    </section>
    

    <section class="portfolio" id="highlights">
      <h2>Highlights</h2>
      <p>Take a look at our university highlights</p>
      <ul class="cards">
      
        <li class="card">
          <img class="logo" src="images/megha_high.png"  alt="Logo Here" width="350" height="500"/>
          <a href="eventreg.jsp">Register here</a>
          <h3>We are Recruting!!! </h3>
          
        </li>
        
        <li class="card">
          <img src="images/camping-2.jpg" alt="img">
          <h3>Highlight2</h3>
          <p>Enjoy a tranquil camping experience by the serene shores of picturesque lakes.</p>
        </li>
        
        <li class="card">
          <img src="images/camping-3.jpg" alt="img">
          <h3>Highlight3</h3>
          <p>Escape to sandy beaches and camp under the starry sky by the crashing waves.</p>
        </li>
        
        <li class="card">
          <img src="images/camping-4.jpg" alt="img">
          <h3>Highlight4</h3>
          <p>Discover the wonders of lush forests and immerse yourself in nature's beauty.</p>
        </li>
        <li class="card">
          <img src="images/camping-5.jpg" alt="img">
          <h3>Highlight5</h3>
          <p>Experience the freedom of road trips and camping adventures with our RV rentals.</p>
        </li>
        
        <li class="card">
          <img src="images/camping-6.jpg" alt="img">
          <h3>Highlight6</h3>
          <p>Embark on a unique desert camping experience and witness stunning landscapes.</p>
        </li>
        
      </ul>
    </section>

    <section class="about" id="about">
      <h2>About Us</h2>
      <p>KL University</p>
      <div class="row company-info">
        <h3>Academics:</h3>
        <p>Experience the excellence of our camping gear and services, where we have been offering high-quality camping essentials and gear for outdoor enthusiasts for over a decade. Our commitment to quality and customer satisfaction ensures that every adventurer can rely on us for their camping needs.</p>
      </div>
      <div class="row mission-vision">
        <h3>Our Mission</h3>
        <p>KL University offers a wide range of undergraduate, postgraduate, and doctoral programs across various disciplines. These include engineering, sciences, humanities, commerce, business administration, law, and computer applications, among others. The university places a strong emphasis on practical learning and provides state-of-the-art facilities for its students. The faculty members are highly qualified and experienced, dedicated to imparting quality education and nurturing the students' talents.</p>
        
        <h3>Campus:</h3>
        <p>The KL University campus is situated in a sprawling area, providing a serene and conducive environment for learning. The infrastructure is modern and well-equipped, comprising well-designed classrooms, laboratories, libraries, and sports facilities. The campus also accommodates separate hostels for boys and girls, ensuring a comfortable stay for students from different parts of the country.</p>
      </div>
      <div class="row team">
        <h3>Our Team</h3>
        <ul>
          <li>John Doe - Founder and CEO</li>
          <li>Jane Smith - Gear Specialist</li>
          <li>Mark Johnson - Customer Representative</li>
          <li>Sarah Brown - Operations Manager</li>
        </ul>
      </div>
    </section>

    <section class="contact" id="contact">
      <h2>Contact Us</h2>
      <p>Reach out to us for any inquiries or feedback.</p>
      <div class="row">
        <div class="col information">
          <div class="contact-details">
            <p><i class="fas fa-map-marker-alt"></i> KL University</p>
            <p><i class="fas fa-envelope"></i> www.kluniversity.com</p>
            <p><i class="fas fa-phone"></i>6303175635  </p>
            <p><i class="fas fa-clock"></i> Vaddeswaram</p>
            <p><i class="fas fa-clock"></i> Guntur</p>
            <p><i class="fas fa-clock"></i> Andhra Pradesh</p>
          </div>          
        </div>
        <div class="col form">
          <form method = "post" action = "feedback.jsp">
            <input type="text" placeholder="Name*" required>
            <input type="email" placeholder="Email*" required>
            <textarea placeholder="Message*" required></textarea>
            <button id="submit" type="submit">Send Message</button>
          </form>
        </div>
      </div>
    </section>

    <footer>
      <div>
        <span>Copyright © 2023 All Rights Reserved</span>
        <span class="link">
            <a href="#">Home</a>
            <a href="#contact">Contact</a>
        </span>
      </div>
    </footer>

  </body>
</html>