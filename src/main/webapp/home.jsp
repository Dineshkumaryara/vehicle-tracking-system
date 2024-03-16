<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Vehicle Tracking System</title>
    <!--<link rel="stylesheet" type="text/css" href="styles.css">-->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <style type="text/css">
      @charset "UTF-8";
/* styles.css */

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

header {
    text-align: center;
    margin-bottom: 20px;
}
/* styles.css */

/* ... (existing styles) */

nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 20px;
}

.logo img {
    height: 50px; /* Adjust the height of the logo as needed */
}

.logo,
.website-name {
    display: flex;
    align-items: right;
}
.website-name h2 {
    margin: 0;
    padding: 0;
    font-size: 24px;
    position: relative;
    right: 145%;
    font-family: Montserrat, sans-serif;
}

nav ul {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    align-items: center;
}

nav li {
    margin-right: 20px;
}

nav a {
    color: #333;
    text-decoration: none;
    padding: 10px;
}

nav a:hover {
    background-color: #f9f9f9;
}

main {
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
}

.map-section {
    flex: 1;
    margin-right: 20px;
}

.info-section {
    flex: 1;
    background-color: #f9f9f9;
    padding: 20px;
}

footer {
    text-align: center;
    background-color: #333;
    color: #fff;
    padding: 10px 0;
}


/* Hero Section */
.hero {
    display: flex;
    flex-direction: column;
    align-items: center; /* Center the content horizontally */
    justify-content: center;
    
    padding: 50px 20px;
    text-align: center;
}

.hero h1 {
    font-size: 32px;
    margin-bottom: 20px;
}

.hero img {
    max-width: 100%;
    height: auto;
    margin-bottom: 20px;
}

.hero p {
    font-size: 18px;
    line-height: 1.6;
}

.hero .btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 20px;
}
.hero-content {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
}

.hero-text {
    flex: 1;
    text-align: left;
    max-width: 400px;
    margin-right: 20px;
}

.hero-image {
    flex: 1;
    text-align: center;
    margin-left: 20px;
}

@media (max-width: 768px) {
    .hero-content {
        flex-direction: column;
    }

    .hero-image {
        margin-top: 20px;
        margin-left: 0;
    }
}

/* Tracking Info Section */
.tracking-info {
    padding: 50px 20px;
    text-align: center;
}

.tracking-info h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.tracking-info img {
    max-width: 100%;
    height: auto;
    margin-bottom: 20px;
}

.tracking-info p {
    font-size: 16px;
    line-height: 1.6;
}
.tracking-content {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
}

.tracking-text {
    flex: 1;
    text-align: left;
    max-width: 400px;
    margin-right: 20px;
}

.tracking-image {
    flex: 1;
    text-align: left;
    margin-left: 20px;
}

@media (max-width: 768px) {
    .tracking-content {
        flex-direction: column;
    }

    .tracking-image {
        margin-top: 20px;
        margin-left: 0;
    }
}
/* ... (existing CSS styles) */

/* Benefits Section */
.benefits {
    padding: 50px 20px;
    text-align: center;
    background-color: #f0f0f0;
}

.benefits h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.benefits ul {
    list-style: none;
    padding: 0;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
}

.benefits li {
    flex: 0 0 calc(33.333% - 40px); /* Adjust width to fit three benefits per row */
    max-width: 300px;
    margin-bottom: 30px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.benefits img {
    max-width: 100%;
    height: auto;
    margin-bottom: 20px;
}

.benefits p {
    font-size: 16px;
    line-height: 1.6;
}

/* How It Works Section */
.how-it-works {
    padding: 50px 20px;
    text-align: center;
}

.how-it-works h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.how-it-works img {
    max-width: 100%;
    height: auto;
    margin-bottom: 20px;
}

.how-it-works p {
    font-size: 16px;
    line-height: 1.6;
}

/* ... (existing CSS styles) */


/* Testimonials Section */
.testimonials {
    padding: 50px 20px;
    background-color: #f0f0f0;
}

.testimonials h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.testimonial {
    margin-bottom: 30px;
}

.testimonial p {
    font-size: 16px;
    line-height: 1.6;
}

.testimonial p:last-child {
    margin-top: 10px;
    font-style: italic;
}

      
    </style>
    
</head>
<body>
    <div class="container">
        <nav>
            <div class="logo">
                <img src="pin_map.svg" alt="Logo">
            </div>
            <div class="website-name">
                <h2>Vehicle Tracking</h2>
            </div>
            <ul>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="signin.jsp">Sign In</a></li>
                <li><a href="signup.jsp">Sign Up</a></li>
            </ul>
        </nav>
        <main>
           <div class="section-column">
            <section class="hero">
    <div class="hero-content">
        <div class="hero-text">
            <h1>Welcome to Our Vehicle Tracking System</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae luctus nulla, nec efficitur tellus.</p>
            <a href="#" class="btn">Learn More</a>
        </div>
        <div class="hero-image">
            <img src="tracking11.png" alt="Hero Image"/>
        </div>
    </div>
</section>

        <section class="tracking-info">
    <div class="tracking-content">
        <div class="tracking-image">
            <img src="v2.jpg" alt="Tracking Image"/>
        </div>
        <div class="tracking-text">
            <h2>Real-Time Vehicle Tracking</h2>
            <p>Our advanced vehicle tracking system allows you to monitor and track your fleet in real-time. With GPS technology and sophisticated software, you can access accurate location data, view historical routes, and receive alerts for events such as speeding or unauthorized vehicle usage.</p>
        </div>
    </div>
</section>

        <!-- Benefits Section -->
            <section class="benefits">
                <h2>Key Benefits of Our Vehicle Tracking System</h2>
                <ul>
                    <li>
                       <img src="b1.jpg" alt="Benefit 1"/>
                       <p>Real-time location tracking for your vehicles</p>
                    </li>
                    <li>
                     	<img src="b2.jpg" alt="Benefit 2"/>
            			<p>Improved fleet management and efficiency</p>
        			</li>
        			<li>
            			<img src="b3.jpg" alt="Benefit 3"/>
            			<p>Reduced fuel and maintenance costs</p>
        			</li>
        			<li>
            			<img src="b4.jpg" alt="Benefit 4"/>
            			<p>Enhanced security with anti-theft features</p>
        			</li>
        			<li>
            			<img src="b5.jpg" alt="Benefit 5"/>
            			<p>Customizable alerts and notifications</p>
        			</li>
        			<li>
            			<img src="b6.jpg" alt="Benefit 6"/>
            			<p>Detailed reports and analytics for data-driven decisions</p>
        			</li>
                </ul>
            </section>
            <!-- How It Works Section -->
            <section class="how-it-works">
                <h2>How Our Vehicle Tracking System Works</h2>
                <p>Our system utilizes state-of-the-art GPS technology to track the precise location of your vehicles in real-time. Here's how it works:</p>
                <img src="v3.jpg" alt="How It Works Image"/>
                <p>
                    GPS Tracking Devices: Each vehicle in your fleet is equipped with a GPS tracking device that continuously sends location data to our secure servers.<br/>
                    Web-Based Dashboard: You can access the tracking data through our user-friendly web-based dashboard from any device with internet access.<br>
                    Real-Time Monitoring: Monitor the movement of your vehicles on a live map, view routes, and receive instant alerts for important events.<br>
                    Analytics and Reporting: Our system provides detailed reports and analytics to help you analyze fleet performance and optimize operations.<br>
                </p>
            </section>
            <!-- Testimonials Section -->
            <section class="testimonials">
                <h2>What Our Customers Say</h2>
                <div class="testimonial">
                    <p>"We have been using the Vehicle Tracking System for our delivery fleet, and it has significantly improved our efficiency and customer service. Highly recommended!"</p>
                    <p>- John Smith, Logistics Manager</p>
                </div>
                <div class="testimonial">
                    <p>"The tracking system has helped us track our vehicles' routes and driver behavior, leading to cost savings and improved safety standards. A great investment for any business with a fleet."</p>
                    <p>- Jane Doe, Operations Director</p>
                </div>
            </section>
           </div> 
        </main>
        <footer>
            <p>&copy; 2023 Your Vehicle Tracking Company. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>