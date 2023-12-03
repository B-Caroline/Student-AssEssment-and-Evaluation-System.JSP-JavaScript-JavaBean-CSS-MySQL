<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>修改教师信息03</title>
    <link rel="shortcut icon" href="../jpg/icon/update.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_man" class="bean.Managers" scope="session"/>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
<%
    stu con = new stu();
    ResultSet rs = con.UpdateToTeacher(
            db_tea.getTno(),
            request.getParameter("tname"),
            request.getParameter("password"),
            request.getParameter("sex"),
            request.getParameter("tel"),
            request.getParameter("cno"),
            request.getParameter("email"),
            request.getParameter("address")
    );
    try {
        rs.next();
%>
<jsp:setProperty name="db_tea" property="tno" value="<%=rs.getString(1)%>"/>
<jsp:setProperty name="db_tea" property="tname" value="<%=rs.getString(2)%>"/>
<jsp:setProperty name="db_tea" property="password" value="<%=rs.getString(3)%>"/>
<jsp:setProperty name="db_tea" property="sex" value="<%=rs.getString(4)%>"/>
<jsp:setProperty name="db_tea" property="tel" value="<%=rs.getString(5)%>"/>
<jsp:setProperty name="db_tea" property="cno" value="<%=rs.getString(6)%>"/>
<jsp:setProperty name="db_tea" property="email" value="<%=rs.getString(7)%>"/>
<jsp:setProperty name="db_tea" property="address" value="<%=rs.getString(8)%>"/>
<%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>
<body>
<div>
    <div class="aside">
        <div>
            <img class="left" src="../jpg/welcome.jpg" alt="">
            <p class="hello">你好，<c:out value="${db_man.mno}"/>号管理员！</p>
        </div>
        <br>
        <div>
            <input class="time" id="Date" />
        </div>
        <div id="Left_Menu02">
            <ul class="#">
                <li class="Left_Title">学生事务管理</li>
                <li><a href="Manager_Inquire.jsp">查看学生综合信息</a></li>
                <li><a href="Manager_Update1_1.jsp">更新学生信息</a></li>
                <li><a href="Manager_Insert1_1.jsp">新增学生信息</a></li>
                <li><a href="Manager_Delete1_1.jsp">删除学生信息</a></li>
                <li class="Left_Title">教师事务管理</li>
                <li><a href="Manager_Inquire2.jsp">查看教师综合信息</a></li>
                <li><a href="Manager_Update2_1.jsp">更新教师信息</a></li>
                <li><a href="Manager_Insert2_1.jsp">新增教师信息</a></li>
                <li><a href="Manager_Delete2_1.jsp">删除教师信息</a></li>
                <li class="Left_Title">教务管理</li>
                <li><a href="Manager_Insert3_1.jsp">新增新的课程信息</a></li>
                <li><a href="Manager_Insert4_1.jsp">新增新的班级信息</a></li>
            </ul>
        </div>
    </div>
    <div class="article">
        <center class="CenterBody">
            <a class="a"  href="Manager_Menu.jsp">更新成功，点击返回首页</a>
        </center>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>