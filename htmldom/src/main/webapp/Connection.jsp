<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, org.json.simple.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet result = null;
	JSONArray list = new JSONArray();
	JSONObject resData = new JSONObject();
	try {
	
		
		Class.forName("com.mysql.cj.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3307/employees?characterEncoding=utf8&serverTimezone=UTC";
		conn = DriverManager.getConnection(url, "root", "bit");


	} catch (Exception e) {
		System.out.println("error - " + e);
	} finally {
		try {
			if (result != null)	result.close();
			if (conn != null)	conn.close();
			if (pstmt != null)	pstmt.close();
		} catch (SQLException e) {
			System.out.println("error-" + e);
		}
	
	}
	%>
<script>
</script>
</head>
<body>

</body>