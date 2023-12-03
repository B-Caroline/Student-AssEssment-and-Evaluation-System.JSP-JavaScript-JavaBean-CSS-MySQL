<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断教师编号是否已经存在</title>
</head>
<%
    String tno = request.getParameter("tno");
    stu con = new stu();
    ResultSet rs = con.QueryTeacher(tno);
    try {
%>
<c:choose>
    <c:when test="<%=!rs.next()%>">
        <jsp:forward page="Manager_Insert2_2.jsp">
            <jsp:param name="tno" value="<%=tno%>"/>
        </jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Insert2_Error.jsp">
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