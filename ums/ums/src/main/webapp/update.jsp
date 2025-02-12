<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input:focus {
            border-color: #2575fc;
            outline: none;
        }
        button {
            width: 100%;
            padding: 10px;
            background: #2575fc;
            border: none;
            color: white;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: 0.3s;
        }
        button:hover {
            background: #1a5ed8;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update User</h1>
        <%
            ResultSet rs = (ResultSet) request.getAttribute("rs");
        %>
        <form action="update" method="post">
            <input type="number" name="id" value="<%= rs.getInt(1) %>" readonly placeholder="Enter ID">
            <input type="text" name="name" value="<%= rs.getString(2) %>" placeholder="Enter Name">
            <input type="email" name="email" value="<%= rs.getString(3) %>" placeholder="Enter Email">
            <input type="tel" name="phone" value="<%= rs.getString(4) %>" placeholder="Enter Phone Number">
            <input type="password" name="password" value="<%= rs.getString(5) %>" placeholder="Enter Password">
            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
