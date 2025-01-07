<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
    <style>
        .error-container {
            width: 50%;
            margin: 50px auto;
            text-align: center;
            padding: 20px;
            border: 1px solid #ff0000;
            border-radius: 5px;
        }
        .error-message {
            color: #ff0000;
            margin: 20px 0;
        }
        .back-link {
            color: #4CAF50;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="error-container">
    <h2>An Error Occurred</h2>
    <div class="error-message">
        <%= exception.getMessage() %>
    </div>
    <a href="index.jsp" class="back-link">Back to Home</a>
</div>
</body>
</html>
Last edited il y a 40 minutes