<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--管理员-->
<head>
    <title>管理员首页</title>
    <link rel="shortcut icon" href="../jpg/home.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_man" class="bean.Managers" scope="session"/>
<body onload="alert('管理员你好，欢迎登录!')" style="overflow:hidden">
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
        <div class="Left_Menu02">
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
        <div>
            <a class="left" href="Manager_Delete2_1.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../jpg/inquire/inquire02.png" alt="false"><br>
                <p class="pp">删除教师信息</p>
            </a>
        </div>
        <div>
            <a class="left" href="Manager_Inquire.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../jpg/inquire/inquire03.png" alt="false"><br>
                <p class="pp">查看学生综合信息</p>
            </a>
        </div>
        <div>
            <a class="left" href="Manager_Update1_1.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../jpg/update/update02.png" alt="false"><br>
                <p class="pp">更新学生信息</p>
            </a>
        </div>
        <div class="clear"></div><br><br><!---->
        <div>
            <a class="left" href="Manager_Insert1_1.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../jpg/add/add02.png" alt="false"><br>
                <p class="pp">新增学生信息</p>
            </a>
        </div>
        <div>
            <a class="left" href="Manager_Delete1_1.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../jpg/icon/delete.ico" alt="false"><br>
                <p class="pp">删除学生信息</p>
            </a>
        </div>
        <div class="clear"></div><br><!---->
        <div>
            <a class="left" href="Manager_Inquire2.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../jpg/inquire/inquire02.png" alt="false"><br>
                <p class="pp">查看教师综合信息</p>
            </a>
        </div>
        <div>
            <div>
                <a class="left" href="Manager_Update2_1.jsp">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../jpg/add/add03.png" alt="false"><br>
                    <p class="pp">更新教师信息</p>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>