<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--管理员-->
<head>
    <title>新增学生综合信息02</title>
    <link rel="shortcut icon" href="../jpg/icon/add.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_man" class="bean.Managers" scope="session"/>
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
        <form name="form3.2" action="Manager_Insert1_3.jsp" method="post">
            <center>
                <div id="page" style="position:relative;">
                    <div class="#">
                        <span class="#">新增学生综合信息</span>
                    </div>
                    <div class="#">
                        <div class="#">
                            <table width="100%" border="1" cellpadding="0" cellspacing="30" style="margin-left:10px;">
                                <tr>
                                    <td>学号：</td>
                                    <td><input name="sno" value="<%=request.getParameter("sno")%>" style="width:300px;height:30px;border:1px solid #ccc;" readonly /></td>
                                </tr>
                                <tr>
                                    <td>姓名：</td>
                                    <td><input name="name" type="text" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>密码：</td>
                                    <td><input name="password" type="text" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>性别：</td>
                                    <td><input name="sex" type="radio" value = "男" checked = "checked" style="width:100px;height:30px;border:1px solid #ccc;" >男
                                        <input type ="radio" name ="sex" value = "女" style="width:100px;height:30px;border:1px solid #ccc;">女</td>
                                </tr>
                                <tr>
                                    <td>年龄：</td>
                                    <td><input name="age" type="text" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>课程号：</td>
                                    <td><input name="cno" type="text" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>联系电话：</td>
                                    <td><input name="tel" type="text" style="width:300px; height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>邮箱地址：</td>
                                    <td><input name="email" type="email" style="width:300px; height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>籍贯：</td>
                                    <td><input name="address" type="text" style="width:300px; height:30px;border:1px solid #ccc;" required /></td>
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