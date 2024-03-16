<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <!--<link rel="stylesheet" type="text/css" href="signup.css">-->
    <style>
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
    background-color: #2196F3;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px;
    cursor: pointer;
}

button:hover {
    background-color: #0D47A1;
}

p.signin-link {
    text-align: center;
    margin-top: 20px;
}

p.signin-link a {
    color: #007BFF;
    text-decoration: none;
}

p.signin-link a:hover {
    text-decoration: underline;
}

.error-message {
    color: #f44336;
    margin-top: 10px;
}
      
    </style>
</head>
<body>
    <div class="container">
        <h1>Sign Up</h1>
        <form action="signup" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="confirm-password">Confirm Password:</label>
            <input type="password" id="confirm-password" name="confirmPassword" required>

            <button type="submit">Sign Up</button>
        </form>
        <p class="signin-link">Already have an account? <a href="signin.jsp">Sign In</a></p>
    </div>
</body>
</html>