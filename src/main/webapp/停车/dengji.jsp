<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
<body>
    <%-- 数据库连接信息 --%>
    <% 
        String url = "jdbc:mysql://localhost:3306/zktr?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8";
        String username = "root";
        String password = "123456";
    %>

    <h1>访客管理</h1>
    <table border="1">
        <tr>
            <th>车牌号</th>
            <th>来访事由</th>
            <th>预计停留时间</th>
            <th>操作</th>
        </tr>

        <%-- 获取访客信息并进行展示 --%>
        <% 
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(url, username, password);
                String sql = "SELECT * FROM visitor";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);

                while(rs.next()) {
                    String licensePlate = rs.getString("license_plate");
                    String reason = rs.getString("reason");
                    String stayDuration = rs.getString("stay_duration");
        %>
        <tr>
            <td><%= licensePlate %></td>
            <td><%= reason %></td>
            <td><%= stayDuration %></td>
            <td><a href="deleteVisitor.jsp?licensePlate=<%= licensePlate %>">删除</a></td>
        </tr>
        <% 
                }
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>