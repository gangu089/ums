<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: white;
            text-align: center;
        }
        h1 {
            margin-bottom: 20px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }
        .btn-container {
            display: flex;
            gap: 20px;
        }
        button {
            background: white;
            color: #2575fc;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s ease-in-out;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
        button:hover {
            background: #2575fc;
            color: white;
        }
    </style>
</head>
<body>
    <h1>User Management System</h1>
    <div class="btn-container">
        <a href="create.jsp"><button>Create User</button></a>
        <a href="fetch"><button>View All Users</button></a>
    </div>
</body>
</html>
