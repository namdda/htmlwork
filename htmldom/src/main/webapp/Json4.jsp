<%@page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.JSONArray" %> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>

  <%
  //<h1> DB데이터를 불러와서 JSON형태로 변경 출력 </h1>
    // 1. 드라이버로드
     String DRIVER = "com.mysql.cj.jdbc.Driver";
	 String DBURL = "jdbc:mysql://localhost:3306/webdb?characterEncoding=utf8&serverTimezone=UTC"; //사용할DB이름
	 String DBID = "webdb";
	 String DBPW = "webdb";
	
	//2. DB연결
		Class.forName(DRIVER);
		System.out.println("드라이버 로드 성공!");
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println("DB 연결 성공!"+con);
	//3.sql & pstmt
		String sql = "select * from board";
		PreparedStatement pstmt = con.prepareStatement(sql);	
	//4.실행
		ResultSet rs = pstmt.executeQuery();
	//5.
		//기존방식: 행 1줄을 자바빈객체에 저장해서 ArrayList 한 칸에 저장
		//json이용한 방식: 행 1줄을 jsonObject객체에 저장해서 JsonArray 한 칸에 저장
		
		//5-2.JSONArray 생성
		JSONArray arr = new JSONArray();
		
		//5-1.while문
		while(rs.next()){
			//json object 생성 (import json-simple패키지해야함)
			JSONObject obj = new JSONObject();
			obj.put("no", rs.getString("no"));
			obj.put("user_no", rs.getString("user_no"));
			obj.put("title", rs.getString("title"));
			obj.put("group_no", rs.getString("group_no"));
			obj.put("order_no", rs.getString("order_no"));
			obj.put("depth", rs.getString("depth"));
			obj.put("contents", rs.getString("contents"));
			obj.put("reg_date", rs.getDate("reg_date"));
			obj.put("cnt", rs.getString("cnt"));
			
			//5-3.배열한칸에 객체 하나를 저장
			arr.put(obj);
		}
  %>

  <%=arr%>