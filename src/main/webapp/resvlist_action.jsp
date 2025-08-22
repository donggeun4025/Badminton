<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="db.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String cust_no = request.getParameter("cust_no");
	
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	try{
		String sql = "select * from TBL_RESV_202301 where cust_no=?";
		
		psmt = con.prepareStatement(sql);
		
		psmt.setString(1, cust_no);
		
		rs=psmt.executeQuery();
		
		if(rs.next()){
			System.out.println("성공!");
			%>
			<jsp:forward page="success.jsp"></jsp:forward>
			<%
		}else{
			System.out.println("실패!");
			%>
			<jsp:forward page="fail.jsp"></jsp:forward>
			<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>