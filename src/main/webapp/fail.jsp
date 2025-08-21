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
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2>코트예약</h2>
		<form action="action.jsp" name="frm">
			<table border="1">
				<tr>
					<td colspan="3" style="text-align: center;"><input
						type="button" value="다시쓰기" onclick="insert_no()"></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>