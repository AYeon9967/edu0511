<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String memo = request.getParameter("memo");

	String url = "jdbc:mysql://localhost/ayeon?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "root";
	String passwd = "hello1248";
	Connection con = null;
	String sql = "insert into oneline(memo) values(?)";
	PreparedStatement pstmt = null;
	
	Class.forName("com.mysql.cj.jdbc.Driver"); 
	con = DriverManager.getConnection(url, user, passwd);
	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, memo);
	pstmt.executeUpdate();
	pstmt.close();	
	con.close();
	out.println("메모 작성 성공");
%>

</body>
</html>