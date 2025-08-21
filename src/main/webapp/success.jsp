<%@page import="java.util.Set"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성공</title>
<style>
* {
	padding: 0;
	margin: 0;
}

section {
	width: 100%;
	height: calc(100vh - 160px);
	background: #FFDAB9
}
h2{
padding: 20px;
text-align: center;
}
form{
display: flex;
justify-content: center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<%
	request.setCharacterEncoding("utf-8");
	
	String cust_no = request.getParameter("cust_no");
	%>
	<section>
		<h2>고객번호:<%=cust_no%>님의 예약 조회</h2>
		<div>
		<table border="1">
		<tr>
			<td>고객번호</td>
			<td>이름</td>
			<td>코트사용일자</td>
			<td>코트번호</td>
		</tr>
		<%
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try{
			String sql ="select cu.cust_no, cu.cust_name, re.resv_date, re.court_no " +
						"from tbl_resv_202301 re, tbl_cust_202301 cu " +
						"where cu.cust_no = re.cust_no and cu.cust_no =? ";

			psmt = con.prepareStatement(sql);
			
			psmt.setString(1, cust_no);
			
			rs=psmt.executeQuery();
			
			
			
			while (rs.next()) {
				String resv_date = rs.getString(3);
				String newresv_date = resv_date.substring(0, 4) + "년" + resv_date.substring(4, 6) + "월" + resv_date.substring(6, 8) + "일";
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=newresv_date %></td>
				<td><%=rs.getString(4) %></td>
			</tr>
		<%
			}}catch(Exception e){
			e.printStackTrace();
			}
		%>
		</table>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript"src="script.js"></script>