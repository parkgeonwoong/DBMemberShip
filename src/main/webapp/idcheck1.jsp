<%@ page import="java.sql.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>아이디 중복체크</title>

<script language="JavaScript">
    function ok_id() 
    {
        opener.document.join.userid_certify.value = "1";
        self.close();
    }
</script>

</head>
<body topmargin="0" leftmargin="0">
<table width="350" border="0" cellpadding="0" cellspacing="0" bgcolor="#fdfdfd">
  <tr>
    <td height="10" colspan="3"></td>
  </tr>
  <tr> 
    <td width="5%">&nbsp;</td>
    <td width="90%" height="26">ID중복 확인결과</td>
    <td width="5%">&nbsp;</td>
  </tr>
  <tr> 
    <td height="120" colspan="3" align="center"><width="206" height="33">신청하신 아이디는 사용가능 합니다.</td>
  </tr>
  <tr> 
    <td colspan="3" align="center"><input type="image" src="./image/ok_btn.png" width="53" height="25" OnClick="ok_id()"></td>
  </tr>
  <tr> 
    <td colspan="3">&nbsp;</td>
  </tr>
</table>



</body>
</html>