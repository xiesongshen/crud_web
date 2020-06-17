<%--
  Created by IntelliJ IDEA.
  User: 15018
  Date: 2020/6/15
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>修改界面</title>
</head>
<body>
<form action="/updateUser" method="post">
    <input type="hidden" name="id" value="${user.id}">
    dept_id：<input type="text" name="deptId" value="${user.deptId}"><br>
    用户名：<input type="text" name="username" value="${user.username}"><br>
    年龄：<input type="text" name="age" value="${user.age}"><br>
    性别:<input type="radio" name="sex"  <c:if test="${user.sex==1}">checked</c:if>>男
        <input type="radio" name="sex" <c:if test="${user.sex==0}">checked</c:if>>女<br>
    薪资：<input type="text" name="sal" value="${user.sal}"><br>
    出生日期：<input type="date" name="birthday" value="${user.birthday}"><br><br>

    <input type="submit" value="添加">
    <input type="reset" value="重置">
</form>
</body>
</html>
