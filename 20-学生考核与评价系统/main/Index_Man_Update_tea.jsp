<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="bean.stu" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>判断教师编号是否存在</title>
</head>
<body>
<jsp:useBean id="db_tea" class="bean.Teachers" scope="session"/>
<%
    stu con = new stu();
    ResultSet rs = con.QueryTeacher(request.getParameter("tno"));
    try {
%>
<c:choose>
    <c:when test="<%=rs.next()%>">
        <jsp:setProperty name="db_tea" property="tno" value="<%=rs.getString(1)%>"/>
        <jsp:setProperty name="db_tea" property="tname" value="<%=rs.getString(2)%>"/>
        <jsp:setProperty name="db_tea" property="password" value="<%=rs.getString(3)%>"/>
        <jsp:setProperty name="db_tea" property="sex" value="<%=rs.getString(4)%>"/>
        <jsp:setProperty name="db_tea" property="tel" value="<%=rs.getString(5)%>"/>
        <jsp:setProperty name="db_tea" property="cno" value="<%=rs.getString(6)%>"/>
        <jsp:setProperty name="db_tea" property="email" value="<%=rs.getString(7)%>"/>
        <jsp:setProperty name="db_tea" property="address" value="<%=rs.getString(8)%>"/>
        <jsp:forward page="Manager_Update2_2.jsp"></jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Update2_Error.jsp">
            <jsp:param name="tno" value='<%=request.getParameter("tno")%>'/>
        </jsp:forward>
    </c:otherwise>
</c:choose>
        <%
    }catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
