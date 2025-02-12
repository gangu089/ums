<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Account</title>
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
        h2 {
            color: #333;
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
        <h2>Create Account</h2>
        <form action="create" method="post">
            <input type="number" name="id" placeholder="Enter ID" required><br>
            <input type="text" name="name" placeholder="Enter Name" required><br>
            <input type="email" name="email" placeholder="Enter Email" required><br>
            <input type="tel" name="phone" placeholder="Enter Phone Number" required><br>
            <input type="password" name="password" placeholder="Enter Password" required><br>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
