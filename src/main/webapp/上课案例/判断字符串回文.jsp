<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <%!
       
        boolean isPalindrome(String str) {
            int length = str.length();
            for (int i = 0; i < length / 2; i++) {
                if (str.charAt(i) != str.charAt(length - i - 1)) {
                    return false;
                }
            }
            return true;
        }
    %>
    
   
    <%
        String testString = "int";
        boolean isPalin = isPalindrome(testString);
    %>
    
    <h1>回文判断</h1>
    <p>测试字符串： <%= testString %> </p>
    <p>是否为回文： <%= isPalin %> </p>
</body>
</html>