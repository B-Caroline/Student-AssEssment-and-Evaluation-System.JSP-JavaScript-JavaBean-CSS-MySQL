<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.stu" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
    <title>
        检查用户是否存在
    </title>
</head>

<body>
<jsp:useBean id="db_stu" class="bean.Students" scope="session"/>
<%
    String sno = request.getParameter("sno");
    String pwd = request.getParameter("password");
    stu con = new stu();
    ResultSet rs = con.Query("select * from student where sno='"+ sno +"' ");
    try {
        rs.next();
%>
<jsp:setProperty name="db_stu" property="sno" value="<%=rs.getString(1)%>"/>
<jsp:setProperty name="db_stu" property="name" value="<%=rs.getString(2)%>"/>
<jsp:setProperty name="db_stu" property="password" value="<%=rs.getString(3)%>"/>
<jsp:setProperty name="db_stu" property="age" value="<%=rs.getString(4)%>"/>
<jsp:setProperty name="db_stu" property="sex" value="<%=rs.getString(5)%>"/>
<jsp:setProperty name="db_stu" property="tel" value="<%=rs.getString(6)%>"/>
<jsp:setProperty name="db_stu" property="cno" value="<%=rs.getString(7)%>"/>
<jsp:setProperty name="db_stu" property="email" value="<%=rs.getString(8)%>"/>
<jsp:setProperty name="db_stu" property="address" value="<%=rs.getString(9)%>"/>
<%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>
<c:choose>
    <c:when test="<%=db_stu.getSno() != null%>">                   //学号是否存在
        <c:choose>
            <c:when test="<%=db_stu.getPassword().equals(pwd)%>">  //密码是否正确
                <jsp:forward page="Student_Menu.jsp"/>             //跳转成功页面
            </c:when>
            <c:otherwise>
                <jsp:forward page="failure/Student_Login_Error.jsp"/>            //密码不正确跳转失败页面
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Student_Login_Error.jsp"/>                    //账号不正确跳转失败页面
    </c:otherwise>
</c:choose>
</body>
</html>