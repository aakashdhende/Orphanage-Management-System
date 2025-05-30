<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Orphan</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <header>Add New Orphan</header>
    <div class="container">
        <form action="AddOrphan" method="post">
            <label for="name">Name:</label><br>
            <input type="text" name="name" required><br><br>

            <label for="age">Age:</label><br>
            <input type="number" name="age" required><br><br>

            <label for="gender">Gender:</label><br>
            <select name="gender" required>
                <option value="">--Select--</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select><br><br>

            <button type="submit">Save Orphan</button>
        </form>
        <br>
        <a href="OrphanList">View All Orphans</a>
    </div>
</body>
</html>