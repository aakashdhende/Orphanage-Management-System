<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Orphan List</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <header>Orphan List</header>
    <div class="container">
        <table border="1" cellpadding="10">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
            </tr>
            <c:forEach var="orphan" items="${orphans}">
                <tr>
                    <td>${orphan.id}</td>
                    <td>${orphan.name}</td>
                    <td>${orphan.age}</td>
                    <td>${orphan.gender}</td>
                    <td>
                    	<a href="editOrphan?id=${orphan.id}">Edit</a>
                    	<a href="deleteOrphan?id=${orphan.id}" onclick="return confirm('Are you sure to delete?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <a href="AddOrphan">Add New Orphan</a>
        <a href="Home">Go To Home</a>
    </div>
</body>
</html>
