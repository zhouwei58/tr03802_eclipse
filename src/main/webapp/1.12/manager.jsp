<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
    <h1>注册表</h1>
    
    <%-- 注册表单 --%>
    <form action="register.jsp" method="post">
        <input type="text" name="account" placeholder="账号" required><br>
        <input type="password" name="password" placeholder="密码" required><br>
        <input type="text" name="nickname" placeholder="名称" required><br>
        <input type="text" name="contactNumber" placeholder="电话号码" required><br>
        <input type="submit" value="确定">
    </form>
    
    <%
    String account = request.getParameter("account");
    
    // 检查账户是否存在
    boolean accountExists = false;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zktr?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE account = ?");
        statement.setString(1, account);
        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
            accountExists = true;
        }
        statement.close();
        connection.close();
    } catch (Exception e) {
        out.println("Error: " + e);
    }
    
    // 根据账户是否存在给出提示
    if (accountExists) {
        out.println("<p>已存在</p>");
    } else if (account != null) {
        out.println("<p>注册成功</p>");
    }
    %>
</body>
</html>