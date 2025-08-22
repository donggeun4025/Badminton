<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fail</title>
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
	padding: 20px;
	text-align: center;
}

form {
	display: flex;
	justify-content: center;
}
section div{
		display: flex;
		justify-content: center;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2> 코트예약 정보가 존재하지 않습니다.</h2>
		<div>
		<input type="button" value="돌아가기" style="margin: 10px" onclick="window.location.href='resvlist.jsp'">
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>