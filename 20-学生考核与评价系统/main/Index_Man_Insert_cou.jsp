<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断课程编号是否已经存在</title>
</head>
<jsp:useBean id="db_insert_cou" class="bean.Courses" scope="request"/>
<%
    String scno = request.getParameter("scno");
    stu con = new stu();
    ResultSet rs = con.QueryCourse(scno);
    try {
%>
<c:choose>
    <c:when test="<%=!rs.next()%>">
        <jsp:forward page="Manager_Insert3_2.jsp">
            <jsp:param name="scno" value="<%=scno%>"/>
        </jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Course_Error.jsp">
            <jsp:param name="scno" value="<%=scno%>"/>
        </jsp:forward>
    </c:otherwise>
</c:choose>
<%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>


</html>