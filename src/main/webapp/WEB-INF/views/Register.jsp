<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Register</title></head>
<body>
    <h2>Register User</h2>
    <form action="Register" method="post">
        Name: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Password: <input type="password" name="password" required><br>
        <button type="submit">Register</button>
    </form>
    <p style="color:green">${message}</p>
    <p>Already have an account? <a href="Login">Login here</a></p>
</body>
</html>
