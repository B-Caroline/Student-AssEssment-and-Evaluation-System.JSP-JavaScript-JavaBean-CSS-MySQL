<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="bean.stu" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<!--查询综合成绩-->
<head>
    <title>综合成绩查询</title>
    <link rel="shortcut icon" href="../jpg/icon/score.ico" type="image/vnd.microsoft.icon">
</head>
<style type="text/css">
    @import url("../CssDemo/test01.css");
</style>
<script type="text/javascript" src="../JsDemo/clock.js"></script>
<jsp:useBean id="db_stu" class="bean.Students" scope="session"/>
<%
    stu con = new stu();
    ResultSet rs = con.Query(
            "SELECT*FROM course " +
                    "LEFT JOIN sc ON course.scno=sc.scno " +
                    "WHERE sno='"+ db_stu.getSno() +"' "
            );
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
            <span><font face="宋体" size="5"><strong>查询到综合成绩如下：</strong></font></span>
            <table border="3" cellspacing="5" cellpadding="10" class="form3">
                <%try{ %>
                <thead>
                <tr>
                    <th>课程编号</th>
                    <th>课程名称</th>
                    <th>授课教师</th>
                    <th>学号</th>
                    <th>成绩</th>
                </tr>
                </thead>
                <% while(rs.next()) { %>
                <tbody>
                <tr>
                    <td height="30"><%=rs.getString(1) %></td>
                    <td height="30"><%=rs.getString(2) %></td>
                    <td height="30"><%=rs.getString(3) %></td>
                    <td height="30"><%=rs.getString(5) %></td>
                    <td height="30"><%=rs.getString(6) %></td>
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