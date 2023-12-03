<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断该学生的课程成绩是否存在</title>
</head>

<jsp:useBean id="db_stu" class="bean.Students" scope="session"/>
<jsp:useBean id="db_inquire_sc" class="bean.Scs" scope="session"/>
<%
    stu con = new stu();
    ResultSet rs = con.Query(
            "SELECT*FROM course " +
                    "LEFT JOIN sc ON course.scno=sc.scno " +
                    "WHERE sc.scno='"+ request.getParameter("scno") + "'" +
                    "AND sno='"+ db_stu.getSno() +"'"
    );
    try {
        %>
<c:choose>
    <c:when test="<%=rs.next()%>">
        <jsp:setProperty name="db_inquire_sc" property="scno" value="<%=rs.getString(1)%>"/>
        <jsp:setProperty name="db_inquire_sc" property="scname" value="<%=rs.getString(2)%>"/>
        <jsp:setProperty name="db_inquire_sc" property="tno" value="<%=rs.getString(3)%>"/>
        <jsp:setProperty name="db_inquire_sc" property="sno" value="<%=rs.getString(5)%>"/>
        <jsp:setProperty name="db_inquire_sc" property="score" value="<%=rs.getString(6)%>"/>
        <jsp:forward page="Student_Inquire2_2.jsp"></jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Student_Inquire2_Error.jsp">
            <jsp:param name="scno" value='<%=request.getParameter("scno")%>'/>
        </jsp:forward>
    </c:otherwise>
</c:choose>
<%
    }catch (Exception e) {
    e.printStackTrace();
    }
%>

<%--<c:if test="db_inquire_sc.getScno() != null">--%>
<%--    <jsp:forward page="Student_Inquire2_2.jsp"></jsp:forward>--%>
<%--</c:if>--%>
<%--<c:if test="db_inquire_sc.getScno() == null">--%>
<%--    <jsp:forward page="failure/Student_Inquire2_Error.jsp">--%>
<%--        <jsp:param name="scno" value='<%=request.getParameter("scno")%>'/>--%>
<%--    </jsp:forward>--%>
<%--</c:if>--%>

<%--<%if (db_inquire_sc.getScno() != null){%>--%>
<%--<jsp:forward page="Student_Inquire2_2.jsp"></jsp:forward>--%>
<%--<%}else {%>--%>
<%--<jsp:forward page="failure/Student_Inquire2_Error.jsp">--%>
<%--    <jsp:param name="scno" value='<%=request.getParameter("scno")%>'/>--%>
<%--</jsp:forward>--%>
<%--<%}%>--%>

</html>
