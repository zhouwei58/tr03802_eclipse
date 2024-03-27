<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 	
<title>显示列表</title>
<style>
    table, th, td {
        border: 1px solid black;
    }
</style>
</head>
<body>
    <table>
      <tr>
        <th>ID</th>
        <th>内容</th>
      </tr>
      <%
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zktr?useSSL=false&serverTimezone=UTC", "root", "123456"); 

            String sql = "SELECT * FROM liuyan ORDER BY content DESC"; 
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            
            while(rs.next()) {
      %>
                <tr>
                  <td><%= rs.getInt(1) %></td>
                  <td><%= rs.getString(2) %></td>
                </tr>
      <%
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            // 关闭连接等操作，这里省略
        }
      %>
    </table>
</body>
</html>