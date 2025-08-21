<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="db.jsp"%>
<%
request.setCharacterEncoding("utf-8");

String resv_no = request.getParameter("resv_no");
String cust_no = request.getParameter("cust_no");
String resv_date = request.getParameter("resv_date");
String court_no = request.getParameter("court_no");

PreparedStatement psmt = null;

try{
	String sql = "insert into TBL_RESV_202301 values(?,?,?,?)";
	
	psmt = con.prepareStatement(sql);
	psmt.setString(1, resv_no);
	psmt.setString(2, resv_date);
	psmt.setString(3, court_no);
	psmt.setString(4, cust_no);
	
	psmt.executeUpdate();
	
	response.sendRedirect("insert.jsp");
}catch(Exception e){
	e.printStackTrace();
}

%>
