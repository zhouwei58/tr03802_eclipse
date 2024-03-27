<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>图片拼接</title>
</head>
<body>
    <h2>图片拼接</h2>
    <form action="Tupians" method="get">
        <input type="radio" name="1" value="横向拼接" checked>横向拼接
        <input type="radio" name="1" value="纵向拼接">纵向拼接<br><br>
        <input type="submit" value="拼接图片">
    </form>
    <br>
    <div>
        <h3>拼接后的图片效果:</h3>
        <img src="Tupians" alt="拼接后的图片">
    </div>
</body>
</html>