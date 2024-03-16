<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Vehicle Tracking Dashboard</title>
    <!--<link rel="stylesheet" type="text/css" href="dash.css">-->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    
    <style>
     @charset "UTF-8";
/* styles.css */

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f2f2;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

h1 {
    text-align: center;
    margin-bottom: 30px;
    color: #333;
}

/* Navbar Styles */
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
    align-items: left;
}
.website-name h2 {
    margin: 0;
    padding: 0;
    font-size: 24px;
    position: relative;
    right: 170%;
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

.map-container {
    width: 100%;
    max-width: 800px;
    margin: 0 auto;
    border: 1px solid #ccc;
    border-radius: 8px;
    overflow: hidden;
}

.map-container img {
    width: 100%;
    height: auto;
    display: block;
}

.vehicle-info {
    margin-top: 30px;
}

.vehicle-info h2 {
    color: #333;
}

.vehicle-info table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}

.vehicle-info th, .vehicle-info td {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: left;
}

.vehicle-info th {
    background-color: #f2f2f2;
}

.actions {
    margin-top: 30px;
}

.actions h2 {
    color: #333;
}

.actions button {
    background-color: #2196F3;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px 15px;
    margin-right: 10px;
    cursor: pointer;
}

.actions button:hover {
    background-color: #0D47A1;
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
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="logout.jsp">Logout</a></li> 
            </ul>
        </nav>
        <!-- Greeting -->
    <div class="greeting">
        <h2>Welcome, ${param.username}!</h2>
    </div>
        <h1>Welcome to the Vehicle Tracking Dashboard</h1>
        <div class="map-container">
            <!-- Display the map with real-time vehicle locations here -->
            <img src="d2.jpg" alt="Map with vehicle locations">
        </div>
        <div class="actions">
            <h2>Actions</h2>
            <button onclick="getLocation()">Track New Vehicle</button>
            <script>
    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(sendPositionToServer, showError);
        } else {
            alert("Geolocation is not supported by this browser.");
        }
    }

    function sendPositionToServer(position) {
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;

        // Send the latitude and longitude to the server using AJAX
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "storelocation", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4) {
                if (xhr.status === 200) {
                    alert("Location sent successfully!");
                } else {
                    alert("Failed to send location data to the server.");
                }
            }
        };
        xhr.send("latitude=" + latitude + "&longitude=" + longitude);
    }

    function showError(error) {
        switch (error.code) {
            case error.PERMISSION_DENIED:
                alert("User denied the request for Geolocation.");
                break;
            case error.POSITION_UNAVAILABLE:
                alert("Location information is unavailable.");
                break;
            case error.TIMEOUT:
                alert("The request to get user location timed out.");
                break;
            case error.UNKNOWN_ERROR:
                alert("An unknown error occurred.");
                break;
        }
    }
    function viewVehicleHistory() {
        // Example AJAX code with jQuery to retrieve vehicle history data
        $.ajax({
            url: '/getVehicleHistory', // Replace with your server-side endpoint
            type: 'GET',
            success: function(response) {
                // Process the vehicle history data and display it
                displayVehicleHistory(response);
            },
            error: function(error) {
                console.error("Failed to retrieve vehicle history.");
            }
        });
    }

    function displayVehicleHistory(historyData) {
        // Example: Assuming historyData is an array of objects with location information
        var historyTable = "<h2>Vehicle History</h2><table>" +
            "<tr><th>Date/Time</th><th>Latitude</th><th>Longitude</th></tr>";

        for (var i = 0; i < historyData.length; i++) {
            historyTable += "<tr>" +
                "<td>" + historyData[i].dateTime + "</td>" +
                "<td>" + historyData[i].latitude + "</td>" +
                "<td>" + historyData[i].longitude + "</td>" +
                "</tr>";
        }

        historyTable += "</table>";

        // Display the history data on the page
        document.getElementById("history-container").innerHTML = historyTable;
    }
</script>
            <div id="history-container"></div>
    <button onclick="viewVehicleHistory()">View Vehicle History</button>
            <!-- Add more buttons for other actions -->
        </div>
    </div>
    <div id="map-container" style="height: 400px;"></div>
    <button onclick="getLocation()">Get My Location</button>

    <!-- Include Leaflet.js JavaScript -->
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script>
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }

        function showPosition(position) {
            var latitude = position.coords.latitude;
            var longitude = position.coords.longitude;

            // Create a map centered at the user's location
            var map = L.map('map-container').setView([latitude, longitude], 15);

            // Add a tile layer (you can use any tile provider you like)
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

            // Add a marker at the user's location
            L.marker([latitude, longitude]).addTo(map).bindPopup("You are here!").openPopup();
        }
    </script>
</body>
</html>
