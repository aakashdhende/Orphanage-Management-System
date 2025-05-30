<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Orphanage Management System</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <p>Welcome back to the Orphanage Management System! Log in to manage records, donate, or support adoptions.</p>
        
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <form action="/login" method="post">
            <label for="username">Username:</label><br/>
            <input type="text" id="username" name="username" required/><br/>
            
            <label for="password">Password:</label><br/>
            <input type="password" id="password" name="password" required/><br/>
            
            <input type="submit" value="Login" class="submit-btn"/>
        </form>

        <div class="login-link">
            <a href="/register" class="btn-link">Don't have an account? Register here</a>
        </div>
    </div>
</body>
</html>