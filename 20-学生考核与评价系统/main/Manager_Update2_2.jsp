<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--管理员-->
<head>
    <title>更新教师信息02</title>
    <link rel="shortcut icon" href="../jpg/icon/update.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_man" class="bean.Managers" scope="session"/>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
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
        <form name="form3.2" action="Manager_Update2_3.jsp" method="post">
            <center>
                <div id="page" style="position:relative;">
                    <div class="#">
                        <span class="#">修改教师信息</span>
                    </div>
                    <div class="#">
                        <div class="#">
                            <table width="100%" border="1" cellpadding="0" cellspacing="30" style="margin-left:10px;">
                                <tr>
                                    <td>教师编号：</td>
                                    <td><input name="tno" value="${db_tea.tno}" style="width:300px;height:30px;border:1px solid #ccc;" readonly /></td>
                                </tr>
                                <tr>
                                    <td>姓名：</td>
                                    <td><input name="tname" value="<%=db_tea.getTname()%>" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>密码：</td>
                                    <td><input name="password" value="<%=db_tea.getPassword()%>" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>性别：</td>
                                    <td><input name="sex" type="radio" value = "男" checked = "checked" style="width:100px;height:30px;border:1px solid #ccc;" >男
                                        <input type ="radio" name ="sex" value = "女" style="width:100px;height:30px;border:1px solid #ccc;">女</td>
                                </tr>
                                <tr>
                                    <td>课程号：</td>
                                    <td><input name="cno" value="<%=db_tea.getCno()%>" style="width:300px;height:30px;border:1px solid #ccc;" required /></td>
                                </tr>
                                <tr>
                                    <td>联系电话：</td>
                                    <td><input name="tel" value="<%=db_tea.getTel()%>" type="text" style="width:300px; height:30px;border:1px solid #ccc;" /></td>
                                </tr>
                                <tr>
                                    <td>邮箱地址：</td>
                                    <td><input name="email" value="<%=db_tea.getEmail()%>" type="email" style="width:300px; height:30px;border:1px solid #ccc;" /></td>
                                </tr>
                                <tr>
                                    <td>籍贯：</td>
                                    <td><input name="address" value="<%=db_tea.getAddress()%>" type="text" style="width:300px; height:30px;border:1px solid #ccc;" /></td>
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