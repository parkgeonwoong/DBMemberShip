<%@ page contentType="text/html;charset=UTF-8" %>
<%
    session.invalidate();
%>

<html>
    <head><title>๋ก๊ทธ์์</title></head>
    <body>
        <%
            response.sendRedirect("./login.jsp");
        %>
    </body>
</html>