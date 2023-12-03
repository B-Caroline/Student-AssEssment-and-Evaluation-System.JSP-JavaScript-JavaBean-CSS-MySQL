<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断班级编号是否已经存在</title>
</head>
<jsp:useBean id="db_insert_class" class="bean.Classs" scope="session"/>
<%
    String cno = request.getParameter("cno");
    stu con = new stu();
    ResultSet rs = con.QueryCourse(cno);
    try {
%>
<c:choose>
    <c:when test="<%=!rs.next()%>">
        <jsp:forward page="Manager_Insert4_2.jsp">
            <jsp:param name="cno" value="<%=cno%>"/>
        </jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Class_Error.jsp">
            <jsp:param name="cno" value="<%=cno%>"/>
        </jsp:forward>
    </c:otherwise>
</c:choose>
<%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>
</html>