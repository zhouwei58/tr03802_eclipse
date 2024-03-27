<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
</head>
<body>
    <h1>用户注册</h1>
    <form action="register" method="post">
        <label>用户名:</label>
        <input type="text" name="username" required><br>
        <label>密码:</label>
        <input type="password" name="password" required><br>
        <label>邮箱:</label>
        <input type="email" name="email" required><br>
        <label>电话:</label>
        <input type="text" name="phone"><br>
        <label>地址:</label>
        <input type="text" name="address"><br>
        <input type="submit" value="注册">
    </form>
</body>
</html>