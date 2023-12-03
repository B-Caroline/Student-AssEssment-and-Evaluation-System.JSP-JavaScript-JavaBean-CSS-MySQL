<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="bean.stu" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>判断学号是否存在</title>
</head>
<jsp:useBean id="db_stu" class="bean.Students" scope="session"/>
<body>
<%
    stu con = new stu();
    ResultSet rs = con.QueryStudent(request.getParameter("sno"));
    try {
%>
<c:choose>
    <c:when test="<%=rs.next()%>">
        <jsp:setProperty name="db_stu" property="sno" value="<%=rs.getString(1)%>"/>
        <jsp:setProperty name="db_stu" property="name" value="<%=rs.getString(2)%>"/>
        <jsp:setProperty name="db_stu" property="password" value="<%=rs.getString(3)%>"/>
        <jsp:setProperty name="db_stu" property="age" value="<%=rs.getString(4)%>"/>
        <jsp:setProperty name="db_stu" property="sex" value="<%=rs.getString(5)%>"/>
        <jsp:setProperty name="db_stu" property="tel" value="<%=rs.getString(6)%>"/>
        <jsp:setProperty name="db_stu" property="cno" value="<%=rs.getString(7)%>"/>
        <jsp:setProperty name="db_stu" property="email" value="<%=rs.getString(8)%>"/>
        <jsp:setProperty name="db_stu" property="address" value="<%=rs.getString(9)%>"/>
        <jsp:forward page="Manager_Update1_2.jsp"></jsp:forward>
    </c:when>
    <c:otherwise>
        <jsp:forward page="failure/Manager_Update1_Error.jsp">
            <jsp:param name="sno" value='<%=request.getParameter("sno")%>'/>
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
