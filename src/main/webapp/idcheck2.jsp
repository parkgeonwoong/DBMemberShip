<%@ page import="java.sql.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>���̵� �ߺ�üũ</title>

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
    <td width="90%" height="26" >ID�ߺ� Ȯ�ΰ��</td>
    <td width="5%">&nbsp;</td>
  </tr>
  <tr> 
    <td height="120" colspan="3" align="center"><width="150" height="33">��û�Ͻ� ���̵�� �̹� ��ϵǾ� �ֽ��ϴ�. �ٸ� ���̵�� ��û�� �ֽʽÿ�.</td>
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