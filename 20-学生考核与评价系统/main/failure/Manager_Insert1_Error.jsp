<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        新增失败
    </title>
</head>
<style>
    @import url("../../CssDemo/login_style.css");
</style>
<body onload="alert('学号为<%=request.getParameter("sno")%>的学生已存在，无法进行添加！')">
<div class="CenterBody">
    <center><a href = "../main/Manager_Insert1_1.jsp" target = "_self">点击重新输入</a></center>
</div>
</body>
</html>