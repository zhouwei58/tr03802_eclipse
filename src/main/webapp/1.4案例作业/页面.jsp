<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Post Message</title>
</head>
<body>
    <h1>Post Message</h1>
    <form action="发表言论.jsp" method="post">
        <label for="message">Message:</label>
        <input type="text" id="message" name="message" required><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>