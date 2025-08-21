<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈</title>
<style>
*{
padding: 0;
margin: 0;
}
section{
width: 100%;
height: calc(100vh - 160px);
background: #8FBC8F;
}
section h2{
padding: 10px;
text-align: center;
}
p{
padding: 10px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h2>우주관광</h2>
<p>
우주관광 예약 시스템입니다.  
천문대 관측 세션을 예약하고, 별빛 가이드를 만나보세요.
</p>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
