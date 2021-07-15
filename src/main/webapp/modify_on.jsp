<%@ page import="java.sql.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var ="conn" 
	driver = "oracle.jdbc.driver.OracleDriver"
	user.url
	user.user
	user.password
/>    


<html>
    <head>
        <title>
            ����
        </title>
    </head>

    <body>
        <c:catch var="exception">
            <sql:update dataSource="${conn}" var="updatedTable">
                UPDATE login SET name=?, email=?, phone=? WHERE idnum=?
                <sql:param value="${param.name}"/>
                <sql:param value="${param.email}"/>
                <sql:param value="${param.tel}"/>
                <sql:param value="${param.idnum}"/>
            </sql:update>
            <c:if test="${updatedTable >= 1}">
                <%
                    response.sendRedirect("./main.jsp");
                %>
            </c:if>
        </c:catch>
        <c:if test="${exception!=null}">
            ID ${ param.name }�� ����� ������ �����Ͽ����ϴ�.
        </c:if>
    </body>
</html>