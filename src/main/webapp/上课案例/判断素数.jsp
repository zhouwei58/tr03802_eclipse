<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>素数判断</title>
</head>
<body>
    <%!
        public boolean isPrime(int number) {
            if (number <= 1) {
                return false;
            }
            for (int i = 2; i <= Math.sqrt(number); i++) {
                if (number % i == 0) {
                    return false;
                }
            }
            return true;
        }
    %>
    
    <%
        int testNumber = 37;
        boolean isPrimeNumber = isPrime(testNumber);
    %>
    
    <h1>素数判断</h1>
    <p>测试数值： <%= testNumber %> </p>
    <p>是否为素数： <%= isPrimeNumber %> </p>
</body>
</html>