package Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class ShopCartDB extends ShopCart {
	/**
	 *从商品 
	 */
	@Override
	protected Product getProduct(int pid) {
		try {
			//定义登陆sql
			String sql ="select * from price where pid=?";
			
			//通过jdbc执行sql
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zktr?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1,pid);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()){
				Product p = new Product();
				p.setPid(rs.getInt("pid"));
				p.setName(rs.getString("pname"));
				p.setCount(1);
				p.setPrice(rs.getDouble("price"));
				return p;
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}	
