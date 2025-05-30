<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adopt Orphan</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>Adopt an Orphan</h2>
        <form action="/adopt" method="post">
            <input type="hidden" name="orphan.id" value="${adoption.orphan.id}"/>
            
            <label for="parentName">Parent Name:</label><br/>
            <input type="text" id="parentName" name="parentName" required/><br/>
            
            <label for="contactInfo">Contact Info:</label><br/>
            <input type="text" id="contactInfo" name="contactInfo" required/><br/>
            
            <input type="submit" value="Adopt" class="submit-btn"/>
        </form>
        
        <div class="login-link">
            <a href="/orphans" class="back-link">Back to Orphan List</a>
            <a href="/adoptedList" class="back-link">View Adopted Orphans List</a>
        </div>
    </div>
</body>
</html>