<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        查询失败
    </title>
</head>
<style>
    @import url("../../CssDemo/login_style.css");
</style>
<body onload="alert('未查询到课程号为<%=request.getParameter("scno")%>的课程的成绩，请重新输入！')">
<div class="CenterBody">
    <center><a href = "../main/Student_Inquire2_1.jsp" target = "_self">点击重新查询</a></center>
</div>
</body>
</html>
