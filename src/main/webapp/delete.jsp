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


<html>
    <head>
        <title>
            ªË¡¶
        </title>
    </head>

    <body>
        <c:catch var="exception">
            <sql:update dataSource="${conn}" var="updatedTable">
                DELETE FROM login WHERE idnum=?
                <sql:param value="${param.idnum}"/>
            </sql:update>
            <c:if test="${updatedTable >= 1}">
                <%
                    response.sendRedirect("./main.jsp");
                %>
            </c:if>
        </c:catch>
    </body>
</html>