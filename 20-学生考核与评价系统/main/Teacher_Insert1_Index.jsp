<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断sc表中是否存在该学生信息</title>
</head>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
<%
    String sno = request.getParameter("sno");
    String scno = request.getParameter("scno");
    stu con = new stu();
    ResultSet rs = con.QuerySC(sno, scno);
    try {
%>
<%if (!rs.next()){%>
<jsp:forward page="Teacher_Insert1_2.jsp">
    <jsp:param name="sno" value="<%=sno%>"/>
    <jsp:param name="scno" value="<%=scno%>"/>
</jsp:forward>
<%}else{%>
    <jsp:forward page="failure/Teacher_Insert1_Error.jsp">
        <jsp:param name="sno" value="<%=sno%>"/>
        <jsp:param name="scno" value="<%=scno%>"/>
    </jsp:forward>
<%}}catch (Exception e){
        e.printStackTrace();
    }
%>

</html>