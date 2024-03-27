<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
  <h1>用药提醒设置</h1>
  <div>
    <label for="name">药品名称：</label>
    <input type="text" id="name">
  </div>
  <div>
    <label for="dosage">用量：</label>
    <input type="text" id="dosage">
  </div>
  <div>
    <label for="time">用药时间：</label>
    <input type="time" id="time">
  </div>
  <button onclick="addReminder()">添加提醒</button>

  <h2>药品列表</h2>
  <table id="reminderTable">
    <tr>
      <th>药品名称</th>
      <th>用量</th>
      <th>用药时间</th>
      <th>操作</th>
    </tr>
  </table>

  <script>
    function addReminder() {
      var name = document.getElementById("name").value;
      var dosage = document.getElementById("dosage").value;
      var time = document.getElementById("time").value;
      
      // 添加药品到提醒列表
      var table = document.getElementById("reminderTable");
      var row = table.insertRow(-1);
      var nameCell = row.insertCell(0);
      var dosageCell = row.insertCell(1);
      var timeCell = row.insertCell(2);
      var deleteCell = row.insertCell(3);
      nameCell.innerHTML = name;
      dosageCell.innerHTML = dosage;
      timeCell.innerHTML = time;
      deleteCell.innerHTML = "<button onclick='deleteReminder(this)'>删除</button>";

      // 设置定时提醒
      var currentTime = new Date();
      var reminderTime = new Date(currentTime.toDateString() + " " + time);
      var timeDiff = reminderTime.getTime() - currentTime.getTime();
      if (timeDiff > 0) {
        setTimeout(function() {
          alert("该用药时间到了：" + name);
        }, timeDiff);
      }
    }

    function deleteReminder(button) {
      var row = button.parentNode.parentNode;
      var table = row.parentNode;
      table.deleteRow(row.rowIndex);
    }
  </script>
</body>
</html>