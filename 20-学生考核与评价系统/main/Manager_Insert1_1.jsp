<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--管理员-->
<head>
    <title>新增学生综合信息01</title>
    <link rel="shortcut icon" href="../jpg/icon/add.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_man" class="bean.Managers" scope="session"/>
<%
    stu con = new stu();
    ResultSet rs = con.Query("select * from student");
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
            <form name="form3.3" action="Index_Man_Insert_stu.jsp" method="post">
                <center>
                    <div>
                        <input type="text" name="sno" placeholder="需要新增的学生学号*" required>
                    </div>
                    <div>
                        <input type="submit" value="提交">
                    </div>
                </center>
            </form>
            <center>
                <span><font face="宋体" size="6"><strong>学生综合信息</strong></font></span>
                <table border="2" cellspacing="5" cellpadding="7" class="form3">
                    <%try{ %>
                    <thead>
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>密码</th>
                        <th>年龄</th>
                        <th>性别</th>
                        <th>电话</th>
                        <th>课程编号</th>
                        <th>邮箱</th>
                        <th>籍贯</th>
                    </tr>
                    </thead>
                    <% while(rs.next()) { %>
                    <tbody>
                    <tr>
                        <td height="30"><%=rs.getString(1) %></td>
                        <td height="30"><%=rs.getString(2) %></td>
                        <td height="30"><%=rs.getString(3) %></td>
                        <td height="30"><%=rs.getString(4) %></td>
                        <td height="30"><%=rs.getString(5) %></td>
                        <td height="30"><%=rs.getString(6) %></td>
                        <td height="30"><%=rs.getString(7) %></td>
                        <td height="30"><%=rs.getString(8) %></td>
                        <td height="30"><%=rs.getString(9) %></td>
                    </tr>
                    </tbody>
                    <%
                            }
                        }catch (Exception e){
                            e.printStackTrace();
                        }
                        finally{
                            con.closeConnection();
                        }
                    %>
                </table>
            </center>
    </div>
</div>
<div class="footer">底部</div>
</body>
</html>