<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dc
  Date: 2019/4/15
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
<center>
    <h1>学生管理系统</h1>
    <table border="1"  width="60%">
        <tr>
            <th>学号</th>
            <th>姓名 </th>
            <th>年龄</th>
            <th>性别</th>
            <th>地址</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${pageInfo.list}" var="students">

            <tr align="center">
                <td>${students.studentId}</td>
                <td>${students.studentName}</td>
                <td>${students.studentAge}</td>
                <td>${students.studentGender}</td>
                <td>${students.studentAddress}</td>
                <td>
                        <button onclick="update(${students.studentId})">修改</button>
                        <button onclick="del(${students.studentId})">删除</button>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div style="margin-top: 10px;margin-left: 300px">
        <button onclick="addStudent()">新增</button>
    </div>

    <!-- 分页的导航栏 -->
    <div class="pagination-layout">
        <div class="pagination">
            <ul class="pagination">
            </ul>
        </div>
    </div>
</center>
</div>
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/jqPaginator.js"></script>
<script>
        function update(obj) {
            alert(obj);
            location.href="http://localhost:8080/toUpdateStudent?studentId="+obj;
        }
        function del(obj) {
            location.href="http://localhost:8080/deleteStudent?studentId="+obj;
        }
        function addStudent() {
            location.href="http://localhost:8080/toAddStudent";
        }

//        分页
        window.onload = function() {
            var if_fistime = true;
            $(".pagination")
                .jqPaginator(
                    {
                        totalPages : ${pageInfo.pages},
                        visiblePages : 3,
                        currentPage : ${pageInfo.pageNum},
                        first : '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
                        prev : '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
                        next : '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
                        last : '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
                        page : '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',

                        onPageChange : function(num) {

                            /* alert(num); */
                            if (if_fistime) {
                                if_fistime = false;
                            } else {
                                changePage(num);
                            }

                        }

                    })

        }

        function changePage(num) {

            window.location.href = "getAllStudent?pageNum=" + num;
        }



</script>
</body>
</html>
