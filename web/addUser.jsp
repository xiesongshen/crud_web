<%--
  Created by IntelliJ IDEA.
  User: 15018
  Date: 2020/6/15
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<html>
<head>
    <title>添加用户</title>
</head>
<body>
<form action="/addUserServlet" method="post">
    dept_id：<input type="text" name="deptId"><br>
    用户名：<input type="text" id="username" name="username"><br>
    密码：<input type="text" name="password"><br>
    年龄：<input type="text" name="age"><br>
    性别:<input type="radio" name="sex">男
         <input type="radio" name="sex">女<br>
    薪资：<input type="text" name="sal"><br>
    出生日期：<input type="date" name="birthday"><br><br>

    <input type="submit" value="添加">
    <input type="reset" value="重置">

</form>
</body>
<script>
    $("#username").blur(function () {
        var username = $("#username").val();
        $.ajax({
            url:"/checkUserServlet",
            type:"get",
            data:{"username":username},
            dataType:"text",
            success:function (data) {
                if (data==1){
                    alert("账户名已注册")
                }
            }
        })

    })
</script>
</html>
