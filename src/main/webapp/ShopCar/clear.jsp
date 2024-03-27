<%@page import="Product.ShopCart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>移除购物车内的商品</title>
</head>
<body>
	<%
		// 从session中获取购物车对象
		ShopCart shopcart = (ShopCart) session.getAttribute("shopCart");
	
		// 如果session中还没有购物车，则创建购物车
		if (shopcart == null) {
			shopcart = new ShopCart();
			session.setAttribute("shopCart", shopcart);
		}
		
		// 清空购物车
		shopcart.clear();
		
		// 重定向到购物车
		response.sendRedirect("Shopcart.jsp");
	%>
</body>
</html>