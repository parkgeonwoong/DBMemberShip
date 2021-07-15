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

    </head>
    <body>
        
        <c:catch var="exception">
            <sql:update dataSource="${conn}" var="updatedTable">
            INSERT INTO login (userid, name, userpw, email, phone) VALUES (?, ?, ?, ?, ?)
            <sql:param value="${ param.userid }" />
            <sql:param value="${ param.name }" />
            <sql:param value="${ param.passwd }" />
            <sql:param value="${ param.email }" />
            <sql:param value="${ param.hp1 }-${ param.hp2 }-${ param.hp3 }" />
            </sql:update>
            <c:if test="${updatedTable >= 1}">
                <%
                    pageContext.forward("./main.jsp");
                %>
            </c:if>
            </c:catch>
    </body>
</html>