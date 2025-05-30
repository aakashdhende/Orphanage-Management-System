<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adopted Orphans List</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>Adopted Orphans List</h2>
        
        <table>
            <thead>
                <tr>
                    <th>Orphan Name</th>
                    <th>Parent Name</th>
                    <th>Contact Info</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="adoption" items="${adoptions}">
                    <tr>
                        <td>${adoption.orphan.name}</td>
                        <td>${adoption.parentName}</td>
                        <td>${adoption.contactInfo}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <div class="login-link">
            <a href="/orphans" class="back-link">Back to Orphan List</a>
        </div>
    </div>
</body>
</html>