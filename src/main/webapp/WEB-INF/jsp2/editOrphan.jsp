<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Orphan</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>Edit Orphan</h2>
        <form action="/updateOrphan" method="post">
            <input type="hidden" name="id" value="${orphan.id}"/>
            
            <label for="name">Name:</label><br/>
            <input type="text" id="name" name="name" value="${orphan.name}" required/><br/>
            
            <label for="age">Age:</label><br/>
            <input type="number" id="age" name="age" value="${orphan.age}" required/><br/>
            
            <label for="gender">Gender:</label><br/>
            <input type="text" id="gender" name="gender" value="${orphan.gender}" required/><br/>
            
            <input type="submit" value="Update Orphan" class="submit-btn"/>
        </form>

        <div class="login-link">
            <a href="/orphans" class="back-link">Back to Orphan List</a>
        </div>
    </div>
</body>
</html>