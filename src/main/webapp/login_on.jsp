<%@ page import="java.sql.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="db.user"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var ="conn" 
	driver = "oracle.jdbc.driver.OracleDriver"
	user.url
	user.user
	user.password
/>

<sql:query var="rs" dataSource="${conn}">
    select name from login where userid=? and userpw=?
    <sql:param value="${ param.userid }" />
    <sql:param value="${ param.passwd }" />
</sql:query>

<c:forEach var="row" items="${rs.rows}">
    <c:set var="name" value="${row.name}"/>
</c:forEach>

<html>
<head></head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String id= request.getParameter("userid");
    %>
<c:choose>
    <c:when test="${name == null}">
        out.println("<script>alert('아이디 혹은 비밀번호가 다릅니다.'); location.href='./login.jsp';</script>");
    </c:when>
<c:otherwise>
    <%
        session.setAttribute("sessionid", id);
        response.sendRedirect("./main.jsp");
    %>
</c:otherwise>
</c:choose>

</body>
</html>