<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>修改学生信息02</title>
    <link rel="shortcut icon" href="../jpg/icon/update.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_stu" class="bean.Students" scope="session"/>
<%
    stu con = new stu();
    ResultSet rs = con.UpdatePartOfStudent(
            "update student set tel = '"+ request.getParameter("tel") +"',email = '"+ request.getParameter("email") +"',address = '"+ request.getParameter("address") +"'where sno = '"+ db_stu.getSno() +"' ",
            db_stu.getSno()
    );
    try {
        rs.next();
        %>
<jsp:setProperty name="db_stu" property="tel" value="<%=rs.getString(6)%>"/>
<jsp:setProperty name="db_stu" property="email" value="<%=rs.getString(8)%>"/>
<jsp:setProperty name="db_stu" property="address" value="<%=rs.getString(9)%>"/>
<%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>
<body>
<div class="head">
    <div id="Head_Title">
        <p>学生考核与评价系统</p>
    </div>
    <div class="Head_Title2">
        <a href="Student_Login.jsp">
            &nbsp;&nbsp;&nbsp;<img src="../jpg/exit1.png" alt="false"><br>
            退出系统
        </a>
    </div>
    <div class="Head_Title2">
        <a href="Student_UpdatePwd_1_1.jsp">
            &nbsp;&nbsp;&nbsp;<img src="../jpg/password1.png" alt="false"><br>
            重置密码
        </a>
    </div>
    <div class="Head_Title2">
        <a href="Student_Menu.jsp">
            &nbsp;&nbsp;&nbsp;<img src="../jpg/home3.png" alt="false"><br>
            回到首页
        </a>
    </div>
</div>
<div>
    <div class="aside">
        <div>
            <img class="left" src="../jpg/welcome.jpg" alt="">
            <p class="hello">你好，<c:out value="${db_stu.name}"/>同学！</p>
        </div>
        <br>
        <div>
            <input class="time" id="Date" />
        </div>
        <div id="Left_Menu">
            <ul class="#">
                <li class="Left_Title">个人事务管理</li>
                <li><a href="Student_Update.jsp">个人信息修改</a></li>
                <li><a href="Student_Inquire.jsp">个人综合信息查询</a></li>
                <li class="Left_Title">个人成绩查询</li>
                <li><a href="Student_Inquire2_1.jsp">单科成绩查询</a></li>
                <li><a href="Student_Inquire3_1.jsp">综合成绩查询</a></li>
            </ul>
        </div>
    </div>
    <div class="article">
        <center>
            <a class="CenterBody"  href="Student_Menu.jsp">更新成功，点击返回首页</a>
        </center>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>
