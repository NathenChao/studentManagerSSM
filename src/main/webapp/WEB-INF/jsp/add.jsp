<%--
  Created by IntelliJ IDEA.
  User: dc
  Date: 2019/4/15
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  action="http://localhost:8080/addStudent" method="post">

    <div><input type="hidden" name="studentId" value="0"></div>
    <div>
        <label>学生姓名:</label>
        <input type="text" name="StudentName" >
    </div>
    <div>
        <label>年龄:</label>
        <input type="text" name="studentAge" >
    </div>

    <div>
        <label>性别:</label>
        <input type="text" name="studentGender" >
    </div>

    <div>
        <label>地址:</label>
        <input type="text" name="studentAddress" >
    </div>
    <div>
        <input type="submit" value="新增">
    </div>

</form>
</body>
</html>
