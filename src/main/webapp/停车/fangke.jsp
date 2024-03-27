<%@ page language="java" contxentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>访客登记</title>
</head>
<body>
    <div class="container">
        <h2>访客登记</h2>
        <form action="dengji.jsp" method="post">
            <div class="form-group">
                <label for="licensePlate">车牌号：</label>
                <input type="text" id="licensePlate" name="licensePlate" placeholder="请输入车牌号" required>
            </div>
            <div class="form-group">
                <label for="note">来访理由：</label>
                <textarea id="note" name="note" placeholder="请输入备注" required></textarea>
            </div>
            
            <div class="form-a">
                <label for="time">预计停留时间：</label>
                <input type="text" id="tim" name="tim" placeholder="请输入时间" required>
            </div>
       
       
 
            
            
            
            <div class="form-group">
                <label for="time">当前时间：</label>
                <input type="text" id="time" name="time" readonly>
            </div>
            <input type="submit" value="提交">
        </form>
    </div>

    <script>
        // 获取当前时间并显示在时间字段上
        var currentTime = new Date().toLocaleString();
        document.getElementById("time").value = currentTime;
    </script>
</body>
</html>