<!-- Home.jsp -->
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Home</title></head>
<body>
    <h2>Welcome to the Home Page</h2>
    <p>${message}</p>

    <form action="Logout" method="post">
        <button type="submit">Logout</button>
    </form>
</body>
</html>
