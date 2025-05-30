<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of Orphans</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>List of Orphans</h2>
        
        <c:if test="${not empty message}">
            <p class="success">${message}</p>
        </c:if>
        
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        
        <a href="/addOrphan" class="add-link">+ Add New Orphan</a>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="orphan" items="${orphans}">
                    <tr>
                        <td>${orphan.id}</td>
                        <td>${orphan.name}</td>
                        <td>${orphan.age}</td>
                        <td>${orphan.gender}</td>
                        <td>
                            <a href="/editOrphan/${orphan.id}">Edit</a> |
                            <a href="/deleteOrphan/${orphan.id}" onclick="return confirm('Are you sure you want to delete this orphan?')">Delete</a> |
                            <a href="/donate/${orphan.id}">Donate</a> |
                            <c:choose>
                                <c:when test="${adoptedOrphanIds.contains(orphan.id)}">
                                    <span class="adopted-label">Adopted</span>
                                </c:when>
                                <c:otherwise>
                                    <a href="/adopt/${orphan.id}">Adopt</a>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <div class="footer-links">
            <a href="/donations">View Donations</a> |
            <a href="/adoptedList">View Adopted Orphans</a>
        </div>
    </div>
</body>
</html>