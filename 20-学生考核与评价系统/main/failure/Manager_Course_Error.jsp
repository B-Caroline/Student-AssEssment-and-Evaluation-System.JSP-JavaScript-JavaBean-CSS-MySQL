<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        添加失败
    </title>
</head>
<style>
    @import url("../../CssDemo/login_style.css");
</style><body onload="alert('编号为<%=request.getParameter("scno")%>的课程已存在，无法进行添加！')">
<div class="CenterBody">
    <center><a href = "../main/Manager_Insert3_1.jsp" target = "_self">点击重新输入</a></center>
</div>
</body>
</html>