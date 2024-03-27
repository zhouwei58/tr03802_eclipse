package 自定义标签;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tr03802_web.Product;


@WebServlet(urlPatterns = "/10/list")
public class a extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        // 解析当前页和每页显示数量参数
        int curpage = Integer.parseInt(request.getParameter("curpage"));
        int pagesize = Integer.parseInt(request.getParameter("pagesize"));

        try {
            // 加载数据库驱动
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 获取数据库连接
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/zktr?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8",
                    "root", "123456");

            // 获取当前页的数据
            String sql = "SELECT * FROM products LIMIT ?, ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, (curpage - 1) * pagesize);
            stmt.setInt(2, pagesize);
            ResultSet rs = stmt.executeQuery();

            // 转换成Product的List集合
            List<Produ> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3)));
            }

            // 获取表中所有记录的条数
            sql = "SELECT COUNT(*) FROM products";
            ResultSet rs2 = stmt.executeQuery(sql);
            rs2.next();
            int total = rs2.getInt(1); // 总记录数

            // 将数据保存到request中以便转发到jsp进行显示
            request.setAttribute("list", list);
            request.setAttribute("total", total);

            stmt.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 转发到jsp
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }
}