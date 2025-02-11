<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Details</title>
</head>
<body>
<h1> Update page</h1>
 
     <%
       ResultSet rs= (ResultSet) request.getAttribute("rs");
       %>
 <form action ="update">
 Id: <input type ="number" name ="id" value ="<%=rs.getInt(1)  %>" readonly="readonly" placeholder ="Enter id here"> <br><br>
    Name: <input type ="text" name ="name" value = "<%= rs.getString(2)%>" placeholder ="Enter name here"><br><br>
    Email: <input type ="text" name ="email" value ="<%=rs.getString(3) %>" placeholder ="Enter email here"><br><br>
     Phone:<input type ="number" name ="phone" value ="<%=rs.getString(4) %>" placeholder ="Enter phone here"><br><br>
      Password:<input type ="password" name ="password" value ="<%=rs.getString(5) %>" placeholder ="Enter password here"><br><br>

      <button type="submit"> Submit</button>
</form>
</body>
</html>