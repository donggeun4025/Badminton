<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 조회</title>
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

h2 {
	text-align: center;
	padding: 20px;
}

form {
	display: flex;
	justify-content: center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2>예약 조회</h2>
		<form action="resvlist_action.jsp" name="hi">
			<table border="1">
				<tr>
					<td>고객번호를 입력하세요.</td>
					<td><input type="text" name="cust_no"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
					<input type="button" value="관측 예약 조회" onclick="resv_go()">
					<input type="button" value="홈으로" onclick="window.location.href='index.jsp'"></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>
