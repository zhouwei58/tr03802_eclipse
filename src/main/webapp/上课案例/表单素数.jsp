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
        int number = Integer.parseInt(request.getParameter("number"));
        boolean isPrime = true;

        if (number <= 1) {
            isPrime = false;
        } else {
            for (int i = 2; i <= Math.sqrt(number); i++) {
                if (number % i == 0) {
                    isPrime = false;
                    break;
                }
            }
        }

        if (isPrime) {
            out.print(number + " 是素数，" + number + " 以内的其他素数还有：");
            for (int i = 2; i < number; i++) {
                boolean isPrimeNumber = true;
                for (int j = 2; j <= Math.sqrt(i); j++) {
                    if (i % j == 0) {
                        isPrimeNumber = false;
                        break;
                    }
                }
                if (isPrimeNumber) {
                    out.print(i + "、");
                }
            }
        } else {
            out.print(number + " 不是素数");
        }
    %>
    
     
</body>
</html>