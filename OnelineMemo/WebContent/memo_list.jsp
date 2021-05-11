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
	String url = "jdbc:mysql://localhost/ayeon?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "root";
	String passwd = "hello1248";
	Connection con = null;
	String sql = "select * from oneline";
	PreparedStatement pstmt = null;
	
	Class.forName("com.mysql.cj.jdbc.Driver"); 
	con = DriverManager.getConnection(url, user, passwd);
	
	pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {
		int no = rs.getInt(1);
		String memo = rs.getString(2);
		String wdate = rs.getString(3);
		
		out.println(no + ": " + memo + "(" + wdate + ") <br>");
	}
	pstmt.executeQuery();
	
	con.close();
	pstmt.close();
%>

<form method="post" action="memo_form.html">
<input type="submit" value="작성"></input>
</form>

</body>
</html>