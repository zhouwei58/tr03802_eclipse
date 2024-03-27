<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <form action="结果.jsp" method="post">
        <label for="username">用户名:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">密码:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="gender">性别:</label>
        <input type="radio" id="male" name="gender" value="male" checked>
        <label for="male">男</label>
        <input type="radio" id="female" name="gender" value="female">
        <label for="female">女</label><br><br>
        
        <label for="hobbies">爱好:</label>
        <input type="checkbox" id="sports" name="hobbies" value="sports">
        <label for="sports">运动</label>
        <input type="checkbox" id="music" name="hobbies" value="music">
        <label for="music">音乐</label>
        <input type="checkbox" id="internet" name="hobbies" value="internet">
        <label for="internet">上网</label>
        <input type="checkbox" id="shopping" name="hobbies" value="shopping">
        <label for="shopping">购物</label>
        <input type="checkbox" id="travel" name="hobbies" value="travel">
        <label for="travel">旅游</label><br><br>
        
        <label for="education">学历:</label>
        <select id="education" name="education">
            <option value="primary">小学</option>
            <option value="junior">初中</option>
            <option value="high">高中</option>
            <option value="college">大专</option>
        
        </select><br><br>
        
        <label for="introduction">自我介绍:</label><br>
        <textarea id="introduction" name="introduction" rows="5" cols="30"></textarea><br><br>
        
        <input type="submit" value="注册">
    </form>
</body>
</html>