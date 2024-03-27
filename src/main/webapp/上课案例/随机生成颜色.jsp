<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>随机颜色</title>
    <style>
      
        body {
            background-color: <%= generateRandomColor() %>;
        }
    </style>
</head>
<body>
    <%!
        // 定义一个方法，用于生成随机颜色
        String generateRandomColor() {
            // 生成随机的RGB颜色值
            int r = (int) (Math.random() * 256);
            int g = (int) (Math.random() * 256);
            int b = (int) (Math.random() * 256);
            
            // 将RGB颜色值转换成十六进制表示形式
            String hexColor = String.format("#%02x%02x%02x", r, g, b);
            
            return hexColor;
        }
    %>
    
    <h1>随机颜色</h1>
   
</body>
</html>