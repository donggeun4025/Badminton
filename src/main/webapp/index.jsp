<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
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
<h2>배드민턴</h2>
<p>
배드민턴을 만들었습니다. 배드민턴~~ 배드민턴을 만들었습니다. 배드민턴~~ 배드민턴을 만들었습니다. 배드민턴~~ 배드민턴을 만들었습니다. 배드민턴~~
</p>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>