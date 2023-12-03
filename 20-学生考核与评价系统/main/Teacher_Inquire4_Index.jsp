<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断课程号是否存在且有无权限查询</title>
</head>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
<%
    stu con = new stu();
    String scno = request.getParameter("scno");
    ResultSet rs = con.QueryCourse(scno);
    try {
            %>
<c:choose>
    <c:when test="<%=rs.next()%>">
        <c:choose>
            <c:when test="<%=rs.getString(3).equals(db_tea.getTno())%>">
                <jsp:forward page="Teacher_Inquire4_2.jsp">
                    <jsp:param name="scno" value="<%=scno%>"/>
                </jsp:forward>
            </c:when>
            <c:otherwise>
                <jsp:forward page="failure/Teacher_Inquire4_Error.jsp">
                    <jsp:param name="scno" value="<%=scno%>"/>
                </jsp:forward>
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Teacher_Inquire4_Error.jsp">
            <jsp:param name="scno" value="<%=scno%>"/>
        </jsp:forward>
    </c:otherwise>
</c:choose>
<%
    }catch (Exception e){
        e.printStackTrace();
    }
%>

</html>