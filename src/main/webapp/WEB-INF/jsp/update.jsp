<%--
  Created by IntelliJ IDEA.
  User: dc
  Date: 2019/4/15
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form  action="http://localhost:8080/updateStudent" method="post">
    <div>
            <label>学生id:</label>
            <label>${student.studentId}</label>
            <input type="text" name="studentId" value="${student.studentId}" readonly>
    </div>
    <div>
        <label>姓名:</label>
        <input type="text" name="studentName" value="${student.studentName}" >
    </div>
    <div>
        <label>年龄:</label>
        <input type="text" name="studentAge" value="${student.studentAge}">
    </div>

    <div>
        <label>性别:</label>
        <input type="text" name="studentGender" value="${student.studentGender}">
    </div>

    <div>
        <label>地址:</label>
        <input type="text" name="studentAddress" value="${student.studentAddress}">
    </div>
    <div>
        <input type="submit" value="修改">
    </div>

</form>
</body>
</html>
