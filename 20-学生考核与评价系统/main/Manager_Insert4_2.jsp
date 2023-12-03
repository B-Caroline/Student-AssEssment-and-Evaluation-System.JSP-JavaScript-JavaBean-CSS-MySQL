<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--管理员-->
<head>
    <title>添加新的班级信息02</title>
    <link rel="shortcut icon" href="../jpg/icon/add.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_man" class="bean.Managers" scope="session"/>
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
        <form name="form3.3" action="Manager_Insert4_3.jsp" method="post">
            <center>
                <div id="page" style="position:relative;">
                    <div class="#">
                        <span class="#">新增班级信息</span>
                    </div>
                    <div class="#">
                        <div class="#">
                            <table width="100%" border="1" cellpadding="0" cellspacing="30" style="margin-left:10px;">
                                <tr>
                                    <td>班级编号：</td>
                                    <td><input name="cno" value="<%=request.getParameter("cno")%>" type="text" style="width:300px;height:30px;border:1px solid #ccc;" readonly /></td>
                                </tr>
                                <tr>
                                    <td>班级名称：</td>
                                    <td><input name="cname" type="text" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>专业：</td>
                                    <td><input name="major" type="text" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>负责管理教师编号：</td>
                                    <td><input name="tno" type="text" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                            </table>
                        </div>
                        <div class="#">
                            <input type="submit" value="提交" style="width:100px; height:30px;border:1px solid #ccc;">
                        </div>
                    </div>
                    <div class="foot">
                        <p>修改信息</p>
                    </div>
                </div>
            </center>
        </form>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>