
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%
        String account = request.getParameter("account");
        String password = request.getParameter("PASSWORD");
        
        // 验证账户和密码
        boolean loginSuccess = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zktr?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE account = ? AND PASSWORD = ?");
            statement.setString(1, account);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
            	out.print("登陆成功");
    			response.sendRedirect("manager.jsp");
            }
            statement.close();
            connection.close();
        } catch (Exception e) {
        	 out.println("<p>账号密码错误</p>");
             out.println("<p><a href='login.jsp'>返回登录</a></p>");
        }
        
        // 根据验证结果进行跳转和提示
        if (loginSuccess) {
            // 跳转到后台manager页面
            response.sendRedirect("manager.jsp");
        } else if (account != null || password != null) {
            // 提示账户或密码错误，并跳转回登录页面
            out.println("<p>账号密码错误</p>");
            out.println("<p><a href='login.jsp'>返回登录</a></p>");
        }
    %>
</body>
</html>