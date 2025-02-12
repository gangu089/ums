<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            text-align: center;
            color: white;
            margin: 0;
            padding: 20px;
        }
        h1 {
            margin-bottom: 20px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }
        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background: white;
            color: black;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background: #2575fc;
            color: white;
        }
        tr:nth-child(even) {
            background: #f2f2f2;
        }
        tr:hover {
            background: #ddd;
        }
        button {
            padding: 8px 15px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            transition: 0.3s;
        }
        .delete-btn {
            background: red;
            color: white;
        }
        .delete-btn:hover {
            background: darkred;
        }
        .update-btn {
            background: green;
            color: white;
        }
        .update-btn:hover {
            background: darkgreen;
        }
    </style>
</head>
<body>
    <h1>All Users Details</h1>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Password</th>
            <th colspan="2">Action</th>
        </tr>  
        <%
            ResultSet rs = (ResultSet) request.getAttribute("rs");
            while(rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
            <td><%= rs.getString(5) %></td>
            <td><a href="delete?id=<%= rs.getInt(1) %>"><button class="delete-btn">Delete</button></a></td>
            <td><a href="updatepage?id=<%= rs.getInt(1) %>"><button class="update-btn">Update</button></a></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
