<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<%
    String sign = request.getParameter("sign");

    if (sign != null) {
        if (sign.equals("白羊座")) {
            response.sendRedirect("baiyang.jsp");
        } else if (sign.equals("金牛座")) {
            response.sendRedirect("jinniu.jsp");
        } else if (sign.equals("双子座")) {
            response.sendRedirect("shuangzi.jsp");
        } else {
            // 处理其他星座或错误情况
        }
    }
%>

<form action="astro.jsp" method="post">
    <label for="sign">请选择一个星座:</label>
    <select id="sign" name="sign">
        <option value="白羊座">白羊座</option>
        <option value="金牛座">金牛座</option>
        <option value="双子座">双子座</option>
        <!-- 添加其他星座选项 -->
    </select>
    <input type="submit" value="提交">
</form>
</body>
</html>