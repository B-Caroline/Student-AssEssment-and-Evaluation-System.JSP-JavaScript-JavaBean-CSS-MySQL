<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断学号是否已经存在</title>
</head>
<%
    String sno = request.getParameter("sno");
    stu con = new stu();
    ResultSet rs = con.QueryStudent(sno);
    try {
        %>
<c:choose>
    <c:when test="<%=!rs.next()%>">
        <jsp:forward page="Manager_Insert1_2.jsp">
            <jsp:param name="sno" value="<%=sno%>"/>
        </jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Insert1_Error.jsp">
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