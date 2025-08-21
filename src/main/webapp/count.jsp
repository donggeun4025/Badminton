<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용일수 집계</title>
<style>
	*{
		margin : 0;
		padding : 0;
	}
	section{
		width: 100%;
		height: calc(100vh - 160px);
		background: #8FBC8F;
	}
	section h2{
		text-align: center;
		padding: 20px;
	}
	section div{
		display: flex;
		justify-content: center;
	}
	td{
		text-align:center;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2> 이용일수 집계 </h2>
		<div>
			<table border="1">
				<tr>
					<td>고객번호</td>
					<td>이름</td>
					<td>이용일수</td>
				</tr>
				<%
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					try{
						String sql = "select cu.cust_no, cu.cust_name, count(*) " +
								"from tbl_cust_202301 cu, tbl_resv_202301 re " +
								"where cu.cust_no = re.cust_no " +
								"group by cu.cust_no, cu.cust_name " +
								"order by cu.cust_no ";
						
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while(rs.next()){
				%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
				</tr>
				<%
						}
					}catch(Exception e){
						e.printStackTrace();
					}
				%>
			</table>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>
