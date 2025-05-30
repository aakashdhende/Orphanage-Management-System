<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donate</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>Donate to "${donation.orphan.name}"</h2>
        <form action="/donate" method="post">
            <input type="hidden" name="orphan.id" value="${donation.orphan.id}"/>
            
            <label for="donorName">Donor Name:</label><br/>
            <input type="text" id="donorName" name="donorName" required/><br/>
            
            <label for="amount">Amount:</label><br/>
            <input type="number" id="amount" name="amount" step="0.01" required/><br/>
            
            <label for="message">Message:</label><br/>
            <textarea id="message" name="message"></textarea><br/>
            
            <input type="submit" value="Donate" class="submit-btn"/>
        </form>
        
        <div class="login-link">
            <a href="/orphans" class="back-link">Back to Orphan List</a>
        </div>
    </div>
</body>
</html>