<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign In</title>
    <!--<link rel="stylesheet" type="text/css" href="signin.css">-->
    <style type="text/css">
       @charset "UTF-8";
/* styles.css */

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f2f2f2;
}

.container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 320px;
}

h1 {
    text-align: center;
    margin-bottom: 30px;
    color: #333;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 5px;
    color: #555;
}

input {
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 10px;
    margin-bottom: 15px;
}

button {
    background-color: #2196F3; /* Blue color */
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px;
    cursor: pointer;
}

button:hover {
    background-color: #0D47A1; /* Darker blue color on hover */
}

.error-message {
    color: #f44336;
    margin-top: 10px;
}
       
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome Back!</h1>
        <form action="signin" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Sign In</button>
        </form>
        <p class="signup-link">Don't have an account? <a href="signup.jsp">Sign Up</a></p>
    </div>
</body>
</html>
