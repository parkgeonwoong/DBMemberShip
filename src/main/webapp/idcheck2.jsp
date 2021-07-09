<%@ page import="java.sql.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>아이디 중복체크</title>

<script language="JavaScript">
    
    function delete_id() 
    {
        opener.document.join.userid.value = "";
        opener.document.join.userid_certify.value = "0";
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
    <td width="90%" height="26" >ID중복 확인결과</td>
    <td width="5%">&nbsp;</td>
  </tr>
  <tr> 
    <td height="120" colspan="3" align="center"><width="150" height="33">신청하신 아이디는 이미 등록되어 있습니다. 다른 아이디로 신청해 주십시오.</td>
  </tr>
  
  <tr> 
    <td colspan="3" align="center"><input type="image" src="./image/ok_btn.png" width="53" height="25" OnClick="delete_id()"></td>
  </tr>
  <tr> 
    <td colspan="3">&nbsp;</td>
  </tr>
</table>



</body>
</html>