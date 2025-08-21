<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관측 예약</title>
<style>
* {
	padding: 0;
	margin: 0;
}
section {
	width: 100%;
	height: calc(100vh - 160px);
	background: #8FBC8F;
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
<section>
	<h2>관측 예약</h2>
	<form action="action.jsp" name="frm">
		<table border="1">
			<tr>
				<td>예약번호</td>
				<td><input type="text" name="resv_no"></td>
				<td>예)20250001</td>
			</tr>
			<tr>
				<td>고객번호</td>
				<td><input type="text" name="cust_no"></td>
				<td>예)1001</td>
			</tr>
			<tr>
				<td>예약일자</td>
				<td><input type="text" name="resv_date"></td>
				<td>예)20250821</td>
			</tr>
			<tr>
				<td>관측소 번호</td>
				<td><input type="text" name="observatory_no"></td>
				<td>예)O001~O009</td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: center;">
				<input type="button" value="예약하기" onclick="insert_ok()">
				<input type="button" value="다시쓰기" onclick="insert_no()"></td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="script.js"></script>
</body>
</html>
