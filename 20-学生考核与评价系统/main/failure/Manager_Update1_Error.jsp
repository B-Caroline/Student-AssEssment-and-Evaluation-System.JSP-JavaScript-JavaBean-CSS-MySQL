<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        更新失败
    </title>
</head>
<style>
    @import url("../../CssDemo/login_style.css");
</style><body onload="alert('学号为<%=request.getParameter("sno")%>的学生不存在，无法进行更改！')">
<div class="CenterBody">
    <center><a href = "../main/Manager_Update1_1.jsp" target = "_self">点击重新输入</a></center>
</div>
</body>
</html>