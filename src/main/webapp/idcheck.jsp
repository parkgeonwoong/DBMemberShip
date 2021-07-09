<%@ page import="java.sql.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var ="conn" 
	driver = "oracle.jdbc.driver.OracleDriver"
	url = "jdbc:oracle:thin:@localhost:1521:xe"
	user ="c##madang"
	password = "madang"
/>

<sql:query var="rs" dataSource="${conn}">
  select name from login where userid=?
  <sql:param value="${ param.userid }" />
</sql:query>

<c:forEach var="row" items="${rs.rows}">
    <c:set var="name1" value="${row.name}"/>
</c:forEach>

<html>
	<head>
		<title>아이디 중복체크</title>
	</head>
<body>
  <c:choose>
    <c:when test="${empty name1}">
      <%
        response.sendRedirect("./idcheck1.jsp");
      %>
    </c:when>
	<c:otherwise>
  		<%
        response.sendRedirect("./idcheck2.jsp");
      	%>
	</c:otherwise>
</c:choose>

	</body>
</html>