<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        更新失败
    </title>
</head>
<style>
    @import url("../../CssDemo/login_style.css");
</style>
<body onload="alert('未查询到<%=request.getParameter("sno")%>号学生的<%=request.getParameter("scno")%>号课程，无法进行更新！')">
<div class="CenterBody">
    <center><a href = "../main/Teacher_Update2_1.jsp" target = "_self">点击重新输入</a></center>
</div>
</body>
</html>