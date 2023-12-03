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
<jsp:useBean id="db_man" class="bean.Managers" scope="session"/>
<%
    String mno = request.getParameter("mno");
    String pwd = request.getParameter("password");
    stu con = new stu();
    ResultSet rs = con.Query("select * from manager where mno='"+ mno +"'");
    try {
        rs.next();
%>
<jsp:setProperty name="db_man" property="mno" value="<%=rs.getString(1)%>"/>
<jsp:setProperty name="db_man" property="password" value="<%=rs.getString(2)%>"/>
<%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>
<c:choose>
    <c:when test="<%=db_man.getMno() != null%>">                   //账号是否存在
        <c:choose>
            <c:when test="<%=db_man.getPassword().equals(pwd)%>">  //密码是否正确
                <jsp:forward page="Manager_Menu.jsp"/>             //跳转成功页面
            </c:when>
            <c:otherwise>
                <jsp:forward page="failure/Manager_Login_Error.jsp"/>            //密码不正确跳转失败页面
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Login_Error.jsp"/>                    //账号不正确跳转失败页面
    </c:otherwise>
</c:choose>
</body>
</html>