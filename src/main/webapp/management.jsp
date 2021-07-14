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
    select * from login where idnum =?
    <sql:param value="${ param.idnum }" />
</sql:query>

<html>

<head>
<title>** 회원 관리 **</title>
</head>

<body style="margin-top: 10%;">
<table border="1" cellspacing="0" width="400" bordercolor="#9AD2F7"
		bordercolordark="white" bordercolorlight="#B9E0FA" align="center">

		<c:forEach var="row" items="${rs.rows}">
   <tr>
	<td width="150" height="23">
	   <p align="center">
	   <span style="font-size:9pt ;">이    름</span></p>
	</td>
	<td >
		<p><span style="font-size:9pt;">
			${row.name}
		</span></p>
	</td>
   </tr>
   <tr>
	<td width="150" height="23">
	   <p align="center">
	   <span style="font-size:9pt ;">이 메 일</span></p>
	</td>
	<td width="513">
	   <p><span style="font-size:9pt;">
		${row.email}
	   </span></p>
	</td>
   </tr>
   <tr>
	<td width="150" height="23">
	   <p align="center">
	   <span style="font-size:9pt ;">전화번호</span></p>
	</td>
	<td width="513">
	   <p><span style="font-size:9pt;">
		${row.phone}
	   </span></p>
	</td>
   </tr>
</c:forEach>
</table>
<table cellpadding="0" cellspacing="0" width="400" height="23" align="center">
   <tr>
    <td width="300">
        <p align="right"><span style="font-size:9pt;">
        <a href="./modify.jsp?idnum=${ param.idnum }">
        <font color="black">수정</font></a></span></p>
     </td>

     <td width="50">
        <p align="right"><span style="font-size:9pt;">
        <a href="./delete.jsp?idnum=${ param.idnum }">
        <font color="black">삭제</font></a></span></p>
     </td>

	<td width="50">
	   <p align="right"><span style="font-size:9pt;">
	   <a href="./main.jsp">
	   <font color="black">목록</font></a></span></p>
	</td>
   </tr>
</table>
</body>
</html>
