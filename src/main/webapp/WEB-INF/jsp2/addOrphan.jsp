<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Orphan</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>Add Orphan</h2>
        
        <form action="/addOrphan" method="post">
            <label for="name">Name:</label><br/>
            <input type="text" id="name" name="name" required/><br/>
            
            <label for="age">Age:</label><br/>
            <input type="number" id="age" name="age" required/><br/>
            
            <label for="gender">Gender:</label><br/>
            <select id="gender" name="gender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select><br/>
            
            <input type="submit" value="Add Orphan" class="submit-btn"/>
        </form>

        <div class="login-link">
            <a href="/orphans" class="back-link">Back to Orphan List</a>
        </div>
    </div>
</body>
</html>