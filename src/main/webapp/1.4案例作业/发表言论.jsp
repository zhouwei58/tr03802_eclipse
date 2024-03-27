<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>发表留言</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String message_id = (String) session.getAttribute("message_id"); 
        String content = request.getParameter("content"); 
        
        if (message_id != null && !message_id.isEmpty() && content != null && !content.isEmpty()) {
            Connection conn = null;
            PreparedStatement stmt = null;
            
            try {
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zktr?useSSL=false&serverTimezone=GMT%2B8", "root", "123456");
                String sql = "INSERT INTO liuyan (message_id, content) VALUES (?, ?)"; 
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, message_id);
                stmt.setString(2, content);
                stmt.executeUpdate();
                response.sendRedirect("显得.jsp"); 
                return;
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("登录.jsp"); 
            } finally {
                try {
                    if(stmt != null) {
                        stmt.close();
                    }
                    if(conn != null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            response.sendRedirect("登录.jsp");
            return;
        }
    %>
</body>
</html>