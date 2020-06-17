<%--
  Created by IntelliJ IDEA.
  User: 15018
  Date: 2020/6/15
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>用户列表</title>
</head>
<body>
<a href="addUser.jsp">添加用户</a>
<table border="1px" cellspacing="0px" cellpadding="0px" width="50%" style="text-align: center">
    <tr>
        <td>序号</td>
        <td>用户名</td>
        <td>年龄</td>
        <td>性别</td>
        <td>工资</td>
        <td>出生日期</td>
        <td>操作</td>
    </tr>
    <c:forEach var="user" items="${list}" varStatus="ststus">
        <tr>
            <td>${ststus.count}</td>
            <td>${user.username}</td>
            <td>${user.age}</td>
            <td>
                <c:choose>
                    <c:when test="${user.sex==1}">男</c:when>
                    <c:when test="${user.sex==0}">女</c:when>
                    <c:otherwise>其它</c:otherwise>
                </c:choose>
            
            </td>
            <td>${user.sal}</td>
            <td>
                <fmt:parseDate var="birth" value="${user.birthday}" pattern="yyyy-MM-dd"></fmt:parseDate>
                <fmt:formatDate value="${birth}" pattern="yyyy年MM日dd日"></fmt:formatDate>
            </td>

            <td>
                <a href="/updateServlet?id=${user.id}">修改</a>
                <a href="/delServlet?id=${user.id}">删除</a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
