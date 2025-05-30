<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - Orphanage Management System</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <p>Join our Orphanage Management System to make a difference! Register now to access features like donation, adoption, or managing records.</p>
        
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <form action="/register" method="post">
            <label for="username">Username:</label><br/>
            <input type="text" id="username" name="username" value="${user.username}" required/><br/>
            
            <label for="password">Password:</label><br/>
            <input type="password" id="password" name="password" required/><br/>
            
            <input type="submit" value="Register" class="submit-btn"/>
        </form>

        <div class="login-link">
            <a href="/login" class="btn-link">Already have an account? Login here</a>
        </div>
    </div>
</body>
</html>