<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--查询单科成绩-->
<head>
    <title>单科成绩查询页面</title>
    <link rel="shortcut icon" href="../jpg/icon/score.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_stu" class="bean.Students" scope="session"/>
<jsp:useBean id="db_inquire_sc" class="bean.Scs" scope="session"/>
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
            <caption><font face="宋体" size="5"><strong>查询到${db_inquire_sc.scno}科目成绩如下：</strong></font></caption>
            <table border="3" cellspacing="5" cellpadding="10" class="form3">
                <thead>
                <tr>
                    <th>课程编号</th>
                    <th>课程名称</th>
                    <th>授课教师</th>
                    <th>学号</th>
                    <th>成绩</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td height="30"><%=db_inquire_sc.getScno() %></td>
                    <td height="30"><%=db_inquire_sc.getScname() %></td>
                    <td height="30"><%=db_inquire_sc.getTno() %></td>
                    <td height="30"><%=db_inquire_sc.getSno() %></td>
                    <td height="30"><%=db_inquire_sc.getScore() %></td>
                </tr>
                </tbody>
            </table>
        </center>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>