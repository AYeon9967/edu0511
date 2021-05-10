<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Name</title>
</head>
<%
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
%>
<body>
First name : <%= fname %><br>
Last name : <%= lname %><br>
</body>
</html>