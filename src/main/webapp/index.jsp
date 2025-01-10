<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Management System</title>
    <style>
        .container {
            width: 50%;
            margin: 50px auto;
            text-align: center;
        }
        .menu-item {
            margin: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            display: inline-block;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Employee Management System</h1>
    <div>
        <a href="listEmployees" class="menu-item">View All Employees</a>
        <a href="addEmployee.jsp" class="menu-item">Add New Employee</a>
    </div>
</div>
</body>
</html>