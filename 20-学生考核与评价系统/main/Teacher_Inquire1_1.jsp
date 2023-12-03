<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--教师个人信息查询-->
<head>
    <title>个人综合信息查询页面</title>
    <link rel="shortcut icon" href="../jpg/icon/inquire.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
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
            <center>
                <br><br>
                <span><font face="宋体" size="6"><strong>查询到个人综合信息如下：</strong></font></span>
                <table border="2" cellspacing="5" cellpadding="20" class="form3">
                    <thead>
                    <tr>
                        <th>教师编号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>电话</th>
                        <th>班级编号</th>
                        <th>邮箱</th>
                        <th>籍贯</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td height="30"><%=db_tea.getTno() %></td>
                        <td height="30"><%=db_tea.getTname() %></td>
                        <td height="30"><%=db_tea.getSex() %></td>
                        <td height="30"><%=db_tea.getTel() %></td>
                        <td height="30"><%=db_tea.getCno() %></td>
                        <td height="30"><%=db_tea.getEmail() %></td>
                        <td height="30"><%=db_tea.getAddress() %></td>
                    </tr>
                    </tbody>
                </table>
            </center>
        </div>
    </div>
    <div class="footer">底部</div>
</body>
</html>