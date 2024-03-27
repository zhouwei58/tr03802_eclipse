<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册结果</title>
</head>
<body>
    <h1>用户注册结果：</h1>
    <ul>
        <li>用户名: <%= request.getParameter("username") %></li>
        <li>密码: <%= request.getParameter("password") %></li>
        <li>性别: <%= request.getParameter("gender") %></li>
        <li>爱好: <%= Arrays.toString(request.getParameterValues("hobbies")) %></li>
        <li>学历: <%= request.getParameter("education") %></li>
        <li>自我介绍: <%= request.getParameter("introduction") %></li>
    </ul>
</body>
</html>