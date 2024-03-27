<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<c:out value="10"></c:out>
	<c:choose>
		<c:when test="${param.age <=12}">你是小朋友</c:when>
		<c:when test="${param.age <18}">你是成年人</c:when>
		<c:when test="${param.age>=18 && param.age <60}">你是中年人</c:when>
		<c:otherwise>
			老年人
		</c:otherwise>
	</c:choose>
	</div>
</body>
</html>