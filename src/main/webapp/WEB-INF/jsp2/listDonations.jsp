<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donation List</title>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body>
    <div class="container">
        <h2>List of Donations</h2>

        <table>
            <thead>
                <tr>
                    <th>Donor Name</th>
                    <th>Amount</th>
                    <th>Message</th>
                    <th>Orphan Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="donation" items="${donations}">
                    <tr>
                        <td>${donation.donorName}</td>
                        <td>${donation.amount}</td>
                        <td>${donation.message}</td>
                        <td>${donation.orphan.name}</td>
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