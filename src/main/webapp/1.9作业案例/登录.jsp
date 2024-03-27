<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
</head>
<body>
    <h1>购物车</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>名称</th>
            <th>价格</th>
            <th>数量</th>
            <th>小计</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${products}" var="product" varStatus="status">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>
                    <form method="post" action="update-quantity.jsp">
                        <input type="hidden" name="productId" value="${product.id}" />
                        <input type="text" name="quantity" value="${product.quantity}" />
                        <input type="submit" value="修改" />
                    </form>
                </td>
                <td>${product.totalPrice}</td>
                <td>
                    <form method="post" action="remove-from-cart.jsp">
                        <input type="hidden" name="productId" value="${product.id}" />
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>