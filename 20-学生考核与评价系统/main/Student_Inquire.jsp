<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--个人综合信息查询-->
<head>
    <title>个人综合信息查询</title>
    <link rel="shortcut icon" href="../jpg/icon/inquire.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_stu" class="bean.Students" scope="session"/>
<body style="overflow:hidden">
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
        <br>
        <center>
            <span><font face="宋体" size="6"><strong>查询到个人综合信息如下：</strong></font></span><br>
            <table border="2" cellspacing="5" cellpadding="7" class="form3">
                <thead>
                <tr>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>课程</th>
                    <th>邮箱</th>
                    <th>籍贯</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td height="30"><%=db_stu.getSno() %></td>
                    <td height="30"><%=db_stu.getName() %></td>
                    <td height="30"><%=db_stu.getAge() %></td>
                    <td height="30"><%=db_stu.getSex() %></td>
                    <td height="30"><%=db_stu.getTel() %></td>
                    <td height="30"><%=db_stu.getCno() %></td>
                    <td height="30"><%=db_stu.getEmail() %></td>
                    <td height="30"><%=db_stu.getAddress() %></td>
                </tr>
                </tbody>
            </table>
        </center>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>