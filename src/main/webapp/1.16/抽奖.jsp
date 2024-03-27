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
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>提交结果</title>
</head>
<body>

<h2>您选择的个人爱好：</h2>
<ul>
   <c:forEach var="hobby" items="${paramValues.hobby}">
      <li>${hobby}</li>
   </c:forEach>
</ul>

<h2>表单提交时间：</h2>
<%
   java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd");
   String currentDate = dateFormat.format(new java.util.Date());
   out.print(currentDate);
%>

</body>
</html>
</body>
</html>