<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Employee</title>
    <style>
        .form-container {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Edit Employee</h2>
    <form action="editEmployee" method="post">
        <input type="hidden" name="id" value="${employee.id}">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${employee.name}" required>
        </div>
        <div class="form-group">
            <label for="department">Department:</label>
            <input type="text" id="department" name="department" value="${employee.department}" required>
        </div>
        <div class="form-group">
            <label for="salary">Salary:</label>
            <input type="number" id="salary" name="salary" step="0.01" value="${employee.salary}" required>
        </div>
        <button type="submit">Update Employee</button>
    </form>
</div>
</body>
</html>