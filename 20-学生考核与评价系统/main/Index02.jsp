<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="bean.tea" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
    <title>
        检查用户是否存在
    </title>
</head>

<body>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
<%
    String tno = request.getParameter("tno");
    String pwd = request.getParameter("password");
    tea con = new tea();
    ResultSet rs = con.Query2("select * from teacher where tno='"+ tno +"'");
    try {
        rs.next();
        %>
<jsp:setProperty name="db_tea" property="tno" value="<%=rs.getString(1)%>"/>
<jsp:setProperty name="db_tea" property="tname" value="<%=rs.getString(2)%>"/>
<jsp:setProperty name="db_tea" property="password" value="<%=rs.getString(3)%>"/>
<jsp:setProperty name="db_tea" property="sex" value="<%=rs.getString(4)%>"/>
<jsp:setProperty name="db_tea" property="tel" value="<%=rs.getString(5)%>"/>
<jsp:setProperty name="db_tea" property="cno" value="<%=rs.getString(6)%>"/>
<jsp:setProperty name="db_tea" property="email" value="<%=rs.getString(7)%>"/>
<jsp:setProperty name="db_tea" property="address" value="<%=rs.getString(8)%>"/>
<%
    }catch (Exception e) {
        e.printStackTrace();
    }
    %>
<c:choose>
    <c:when test="<%=db_tea.getTno() != null%>">                   //教师编号是否存在
        <c:choose>
            <c:when test="<%=db_tea.getPassword().equals(pwd)%>">  //密码是否正确
                <jsp:forward page="Teacher_Menu.jsp"/>             //跳转成功页面
            </c:when>
            <c:otherwise>
                <jsp:forward page="failure/Teacher_Login_Error.jsp"/>            //密码不正确跳转失败页面
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Teacher_Login_Error.jsp"/>                    //账号不正确跳转失败页面
    </c:otherwise>
</c:choose>
</body>
</html>