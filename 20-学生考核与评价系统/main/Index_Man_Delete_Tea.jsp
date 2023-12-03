<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断教师编号是否已经存在</title>
</head>
<jsp:useBean id="db_delete_tea" class="bean.Teachers" scope="session"/>
<%
    String tno = request.getParameter("tno");
    stu con = new stu();
    ResultSet rs = con.QueryTeacher(tno);
    try {
%>
<c:choose>
    <c:when test="<%=rs.next()%>">
        <jsp:setProperty name="db_delete_tea" property="tno" value="<%=rs.getString(1)%>"/>
        <jsp:setProperty name="db_delete_tea" property="tname" value="<%=rs.getString(2)%>"/>
        <jsp:setProperty name="db_delete_tea" property="password" value="<%=rs.getString(3)%>"/>
        <jsp:setProperty name="db_delete_tea" property="sex" value="<%=rs.getString(4)%>"/>
        <jsp:setProperty name="db_delete_tea" property="tel" value="<%=rs.getString(5)%>"/>
        <jsp:setProperty name="db_delete_tea" property="cno" value="<%=rs.getString(6)%>"/>
        <jsp:setProperty name="db_delete_tea" property="email" value="<%=rs.getString(7)%>"/>
        <jsp:setProperty name="db_delete_tea" property="address" value="<%=rs.getString(8)%>"/>
        <jsp:forward page="Manager_Delete2_2.jsp"></jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Update2_Error.jsp">
            <jsp:param name="tno" value="<%=tno%>"/>
        </jsp:forward>
    </c:otherwise>
</c:choose>
        <%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>



</html>