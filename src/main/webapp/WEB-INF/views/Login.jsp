<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Login</title></head>
<body>
    <h2>Login</h2>
    <form action="Login" method="post">
        Email: <input type="email" name="email" required><br>
        Password: <input type="password" name="password" required><br>
        <button type="submit">Login</button>
    </form>
    <p style="color:red">${error}</p>
    <p style="color:green">${message}</p>
    <p>Don't have an account? <a href="Register.jsp">Register here</a></p>
</body>
</html>
