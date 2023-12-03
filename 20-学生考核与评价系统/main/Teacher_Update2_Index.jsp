<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.stu" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断sc表中是否存在该学生信息</title>
</head>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
<jsp:useBean id="db_update_sc" class="bean.Scs" scope="session"/>
<%
    stu con = new stu();
    ResultSet rs = con.QuerySC(request.getParameter("sno"), request.getParameter("scno"));
    try {
            %>
<c:choose>
    <c:when test="<%=rs.next()%>">
        <jsp:setProperty name="db_update_sc" property="scno" value="<%=rs.getString(1)%>"/>
        <jsp:setProperty name="db_update_sc" property="sno" value="<%=rs.getString(2)%>"/>
        <jsp:setProperty name="db_update_sc" property="score" value="<%=rs.getString(3)%>"/>
        <jsp:forward page="Teacher_Update2_2.jsp"></jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Teacher_Update2_Error.jsp">
            <jsp:param name="sno" value='<%=request.getParameter("sno")%>'/>
            <jsp:param name="scno" value='<%=request.getParameter("scno")%>'/>
        </jsp:forward>
    </c:otherwise>
</c:choose>
<%
    }catch (Exception e){
        e.printStackTrace();
    }
%>

</html>