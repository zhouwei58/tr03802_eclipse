<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="randomNumber" value="${(int)(Math.random() * 100) + 1}" />
	
<c:choose>
    <c:when test="${randomNumber % 8 == 0}">
        <p>中一等奖</p>
    </c:when>
    <c:when test="${randomNumber % 6 == 0}">
        <p>中二等奖</p>
    </c:when>
    <c:when test="${randomNumber % 4 == 0}">
        <p>中三等奖</p>
    </c:when>
    <c:otherwise>
        <p>谢谢惠顾</p>
    </c:otherwise>
</c:choose>
</body>
</html>