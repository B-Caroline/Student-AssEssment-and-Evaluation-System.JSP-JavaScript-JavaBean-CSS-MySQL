<%@ page import="bean.stu" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--管理员-->
<head>
    <title>删除教师综合信息02</title>
    <link rel="shortcut icon" href="../jpg/icon/delete.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_man" class="bean.Managers" scope="session"/>
<jsp:useBean id="db_delete_tea" class="bean.Teachers" scope="session"/>
<%
    stu con = new stu();
    con.QueryStudent(db_delete_tea.getTno());
%>
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
        <a href="Manager_Menu.jsp">
            &nbsp;&nbsp;&nbsp;<img src="../jpg/home3.png" alt="false"><br>
            回到首页
        </a>
    </div>
</div>
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
        <br>
        <center>
            <caption><font face="宋体" size="5"><strong>查询到学号为<%=db_delete_tea.getTno()%>的学生综合信息如下：</strong></font></caption>
            <table border="3" cellspacing="5" cellpadding="10" class="form3">
                <thead>
                <tr>
                    <th>教师编号</th>
                    <th>姓名</th>
                    <th>密码</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>班级编号</th>
                    <th>邮箱</th>
                    <th>籍贯</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td height="30"><%=db_delete_tea.getTno() %></td>
                    <td height="30"><%=db_delete_tea.getTname() %></td>
                    <td height="30"><%=db_delete_tea.getPassword() %></td>
                    <td height="30"><%=db_delete_tea.getSex() %></td>
                    <td height="30"><%=db_delete_tea.getTno() %></td>
                    <td height="30"><%=db_delete_tea.getCno() %></td>
                    <td height="30"><%=db_delete_tea.getEmail() %></td>
                    <td height="30"><%=db_delete_tea.getAddress() %></td>
                </tr>
                </tbody>
            </table>
        </center>
        <br><br>
        <center><a href="Manager_Delete2_3.jsp">确认删除</a> </center>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>