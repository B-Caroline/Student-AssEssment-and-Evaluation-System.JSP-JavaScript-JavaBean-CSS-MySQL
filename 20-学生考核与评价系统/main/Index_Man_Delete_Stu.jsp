<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断学号是否已经存在</title>
</head>
<jsp:useBean id="db_delete_stu" class="bean.Students" scope="session"/>
<%
    String sno = request.getParameter("sno");
    stu con = new stu();
    ResultSet rs = con.QueryStudent(sno);
    try {
        %>
<c:choose>
    <c:when test="<%=rs.next()%>">
        <jsp:setProperty name="db_delete_stu" property="sno" value="<%=rs.getString(1)%>"/>
        <jsp:setProperty name="db_delete_stu" property="name" value="<%=rs.getString(2)%>"/>
        <jsp:setProperty name="db_delete_stu" property="password" value="<%=rs.getString(3)%>"/>
        <jsp:setProperty name="db_delete_stu" property="age" value="<%=rs.getString(4)%>"/>
        <jsp:setProperty name="db_delete_stu" property="sex" value="<%=rs.getString(5)%>"/>
        <jsp:setProperty name="db_delete_stu" property="tel" value="<%=rs.getString(6)%>"/>
        <jsp:setProperty name="db_delete_stu" property="cno" value="<%=rs.getString(7)%>"/>
        <jsp:setProperty name="db_delete_stu" property="email" value="<%=rs.getString(8)%>"/>
        <jsp:setProperty name="db_delete_stu" property="address" value="<%=rs.getString(9)%>"/>
        <jsp:forward page="Manager_Delete1_2.jsp"></jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Update1_Error.jsp">
            <jsp:param name="sno" value="<%=sno%>"/>
        </jsp:forward>
    </c:otherwise>
</c:choose>
        <%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>



</html>