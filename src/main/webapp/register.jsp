<%@ page import="java.sql.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("UTF-8");%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="./css/sign_up.css" />

        <title>
            ȸ������
        </title>
    </head>

    <body>

        <script>

            var formSubmit;
            var formSubmitValue;
            
            
            function check_userid(userid)
            {
                var i;
                var CurrentChar;
                var bReturn;
            
                bReturn = true;
                
                
                for ( i = 0; i < userid.length; i++)
                {
                    
                    CurrentChar = userid.charAt(i);
            
                    
                    if ( !((CurrentChar >= '0' && CurrentChar <= '9' ) || (CurrentChar >= 'a' && CurrentChar <= 'z') || (CurrentChar >= 'A' && CurrentChar <= 'Z') )) 
                    {
                        bReturn = false;	
                        break;
                    }
                    
                    
                    if(i == 0) 
                    {
                        if (!((CurrentChar >= 'a' && CurrentChar <= 'z') || (CurrentChar >= 'A' && CurrentChar <= 'Z'))) 
                        {
                            bReturn = false;	
                            break;
                        }
                    }
                    
                }
                
                if ( bReturn && ( ( userid.length < 4) || ( userid.length > 16 ) ) )
                {
                    bReturn = false;
                }
                return bReturn;
            }
            
            
            function check_passwd(passwd, passwd2)
            {
                if(passwd != passwd2) {
                    return false;
                }
                if((passwd.length < 3)) {
                    return false;
                }
            
                return true;
            }
            
        </script>

        <SCRIPT language="JavaScript">
            function certify_userid()
        {
            var userid = document.join.userid.value;
            if (!check_userid(userid)) 
            {
                alert( "���̵�� 4-16�ڱ��� ����, �����ڷθ� ���ո� �����մϴ�. ù���ڴ� �����ڿ��� �մϴ�.\n\n���̵� �ùٸ� �������� ���� ������ �ϼž��մϴ�." );
                document.join.userid.focus();
                return;
            }
        
            var URL = "./idcheck.jsp?userid="+userid
           var rtnVal = window.open(URL, 'idcheck', 'width=350,height=220,resizable=1,scrollbars=0' );
           return;
        }
        
        function checkSubmit(f) {
        
            if( !check_userid(f.userid.value)) 
                {		
                alert('���̵�� 4-16�ڱ��� ����, ������, - �� ���ո� �����մϴ�. ù���ڴ� �����ڿ��� �մϴ�.');
                f.userid.focus();
                return false;
            }
        
            if(f.userid_certify.value <=0) 
            {
                alert('ȸ�� ���̵� �ߺ�Ȯ���� �Ͻñ� �ٶ��ϴ�.');
                return false;
            }
        
            if( !check_passwd(f.passwd.value, f.passwd2.value)) 
            {
                alert('��й�ȣ�� 3�� �̻��̸�, ��й�ȣ�� ��ġ���� Ȯ���Ͽ� �ٽ� �Է��Ͻñ� �ٶ��ϴ�.');
                f.passwd.focus();
                return false;
            }
        
            if(!f.name.value) 
            {
                alert('�̸��� �Է� �ٶ��ϴ�.');
                f.name.focus();
                return false;
            }
            return;
        }
        
        </SCRIPT>

        <form name="join" onSubmit="return checkSubmit(this)"  method='post' action='register_on.jsp'>
            <input type="hidden" name="userid_certify" value="0" />
        <table summary="" border="1" style="border-collapse: collapse;">
        <colgroup>
        <col style="width:160px;">
        <col style="width:610px;">
        </colgroup>
        <tbody>
          <tr>
            <th scope="row">���̵� <span class="necessary">*</span> </th>
            <td><input name="userid" placeholder="�ƾƵ� �Է����ּ���"  type="text" pattern="[A-Za-z0-9]{4,}" required>
              <button type="button" class="joinSubmit" onClick="certify_userid()" value="�ߺ�Ȯ��">�ߺ�Ȯ��</button>
              (�����ҹ���/����, 4~16��) </td>
          </tr>
          <tr>
            <th scope="row">��й�ȣ <span class="necessary">*</span> </th>
            <td class="last"><input name="passwd" autocomplete="off" maxlength="16"  type="password" required>
              (���� ��ҹ���/����/Ư������ �� 2���� �̻� ����, 10��~16��) </td>
          </tr>
          <tr>
            <th scope="row">��й�ȣ Ȯ�� <span class="necessary">*</span> </th>
            <td class="last"><input name="passwd2" autocomplete="off" maxlength="16"  type="password" required></td>
          </tr>
          
          <tr>
            <th scope="row">�̸� <span class="necessary">*</span> </th>
            <td><input name="name" placeholder="�̸��� �Է����ּ���"  type="text"  required></td>
          </tr>
          <tr>
            <th scope="row">�̸��� <span class="necessary">*</span> </th>
            <td><input id="email" name="email"  type="email" required>
              
              </td>
          </tr>
          
          <tr>
            <th scope="row">��ȭ <span class="necessary">*</span> </th>
            <td><select id="tel1" name="hp1" required>
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
              </select>
              -
              <input id="hp2" name="hp2" maxlength="4"  type="text" pattern="[0-9]{4,}" required>
              -
              <input id="hp3" name="hp3" maxlength="4"  type="text" pattern="[0-9]{4,}" required></td>
          </tr>
        </tbody>
        </table>
        
        <div class="boardWriteBtn">
          <button type="submit" class="regSubmit" value="ȸ������">ȸ������</button>
        <a href="./main.jsp"><button type="button" id="cancel" class="regCancel"> ����ϱ�</button></a>
        </form>
    </body>
</html>