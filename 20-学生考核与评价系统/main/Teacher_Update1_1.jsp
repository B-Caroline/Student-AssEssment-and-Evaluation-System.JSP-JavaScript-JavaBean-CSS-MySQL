<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>更新教师个人信息01</title>
    <link rel="shortcut icon" href="../jpg/icon/inquire.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
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
        <a href="Teacher_UpdatePwd_1_1.jsp">
            &nbsp;&nbsp;&nbsp;<img src="../jpg/password1.png" alt="false"><br>
            重置密码
        </a>
    </div>
    <div class="Head_Title2">
        <a href="Teacher_Menu.jsp">
            &nbsp;&nbsp;&nbsp;<img src="../jpg/home3.png" alt="false"><br>
            回到首页
        </a>
    </div>
</div>
<div>
    <div class="aside">
        <div>
            <img class="left" src="../jpg/welcome.jpg" alt="">
            <p class="hello">你好，<c:out value="${db_tea.tname}"/>老师！</p>
        </div>
        <br>
        <div>
            <input class="time" id="Date" />
        </div>
        <div id="Left_Menu">
            <ul class="#">
                <li class="Left_Title">个人事务管理</li>
                <li><a href="Teacher_Inquire1_1.jsp">个人信息查询</a></li>   <!-- 通过tno查teacher-->
                <li><a href="Teacher_Update1_1.jsp">个人信息更新</a></li>
                <li><a href="Teacher_Inquire2_1.jsp">个人任课信息查询</a></li>    <!-- 通过tno查course-->
                <li class="Left_Title">学生成绩管理</li>
                <li><a href="Teacher_Inquire3_1.jsp">查询学生综合成绩</a></li>  <!-- 通过sno查sc-->
                <li><a href="Teacher_Inquire4_1.jsp">课程选课学生及成绩查询</a></li>  <!-- 通过cno查sc.sno-->
                <li><a href="Teacher_Update2_1.jsp">更新学生成绩</a></li>
                <li><a href="Teacher_Insert1_1.jsp">新增学生成绩</a></li>
            </ul>
        </div>
    </div>
    <div class="article">
        <form name="form1.8" action="Teacher_Update1_2.jsp" method="post">
            <center>
                <div id="page" style="position:relative;">
                    <div class="#">
                        <span><font face="宋体" size="6">更新个人信息</font></span>
                    </div>
                    <div class="#">
                        <div class="#">
                            <table width="100%" border="1" cellpadding="0" cellspacing="30" style="margin-left:10px;">
                                <tr>
                                    <td>教师编号：</td>
                                    <td><input name="tno" placeholder="${db_tea.tno}" style="width:300px;height:30px;border:1px solid #ccc;" readonly /><span>（不允许修改）</span></td>
                                </tr>
                                <tr>
                                    <td>姓名：</td>
                                    <td><input name="tname" placeholder="<%=db_tea.getTname()%>" style="width:300px;height:30px;border:1px solid #ccc;" readonly /><span>（不允许修改）</span></td>
                                </tr>
                                <tr>
                                    <td>性别：</td>
                                    <td><input name="sex" placeholder="<%=db_tea.getSex()%>" style="width:300px;height:30px;border:1px solid #ccc;" readonly /><span>（不允许修改）</span></td>
                                </tr>
                                <tr>
                                    <td>班级编号：</td>
                                    <td><input name="cno" placeholder="<%=db_tea.getCno()%>" style="width:300px;height:30px;border:1px solid #ccc;" readonly /><span>（不允许修改）</span></td>
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
                </div>
            </center>
        </form>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>