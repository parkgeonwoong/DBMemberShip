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
    select * from login
</sql:query>
    
<html>
    <% 
        String sessionid = (String) request.getSession().getAttribute("sessionid");
    %>
<head><title>** ȸ������ �ý��� **</title></head>
<body style="margin-top: 6%;" bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
    <h3 style="font-size: 30px;text-align: center;">
        ȸ�� ����Ʈ
    </h3>
    <c:choose>
        <c:when test="${empty sessionid}">
            out.println("<script>alert("<%=sessionid%>"); location.href='./login.jsp';</script>");
        </c:when>
        <c:otherwise>
            <table cellpadding=0 cellspacing=0 width=500 height=23 align="center">
                <tr>
                    <td width=1350>
                        <p align=right><b><a href="./logout.jsp">
                        <font size=3 face="����ü" color=black>�α׾ƿ�</font></a></b></p>
                    </td>
                </tr>
            </table>                
        </c:otherwise>
    </c:choose>
    <table border=1 cellspacing=0 width=500 bordercolor=#9AD2F7 bordercolordark=white bordercolorlight=#B9E0FA align="center">
        <tr>
            <th width=150 height=20 bgcolor=#D2E9F9><p align="center"></p><span style = font-size:8pt></span>���̵�</span></th>
            <th width=150 height=20 bgcolor=#D2E9F9><p align="center"></p><span style = font-size:8pt></span>�̸�</span></th>
            <th width=50 height=20 bgcolor=#D2E9F9><p align="center"></p><span style = font-size:8pt></span>�̸���</span></th>
            <th width=150 height=20 bgcolor=#D2E9F9><p align="center"></p><span style = font-size:8pt></span>��ȭ��ȣ</span></th>
        </tr>
        <c:forEach var="row" items="${rs.rows}">
        <tr>
            <td width=150 height=20><p align=center><span style=font-size:9pt><a href="management.jsp?idnum=${row.idnum}" style="color: black;">
                <font face="����ü" color=black></font>${row.userid}</a></font></a></span></p>
            </td>
            <td width=100 height=20><p align=center><span style=font-size:9pt>
                <font face="����ü">${row.name}</font></span></p>
            </td>
            <td width=200 height=20><p align=center><span style=font-size:9pt>
                <font face="����ü">${row.email}</font></span></p>
            </td>
            <td width=150 height=20><p align=center><span style=font-size:9pt>
                <font face="����ü">${row.phone}</font></span></p>
            </td>
        </tr>
        </c:forEach>
    </table>
    <table cellpadding=0 cellspacing=0 width=500 height=23 align="center">
        <tr>
            <td width=1350>
                <p align=right><b><a href="./register.jsp">
                <font size=1 face="����ü" color=black>�� ��</font></a></b></p>
            </td>
        </tr>
    </table>
</body>
</html>