<%@ page import="java.sql.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("UTF-8");%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="./css/sign_up.css" />

        <title>
            회원가입
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
                alert( "아이디는 4-16자까지 숫자, 영문자로만 조합만 가능합니다. 첫문자는 영문자여야 합니다.\n\n아이디를 올바른 형식으로 먼저 기입을 하셔야합니다." );
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
                alert('아이디는 4-16자까지 숫자, 영문자, - 의 조합만 가능합니다. 첫문자는 영문자여야 합니다.');
                f.userid.focus();
                return false;
            }
        
            if(f.userid_certify.value <=0) 
            {
                alert('회원 아이디 중복확인을 하시기 바랍니다.');
                return false;
            }
        
            if( !check_passwd(f.passwd.value, f.passwd2.value)) 
            {
                alert('비밀번호는 3자 이상이며, 비밀번호가 일치한지 확인하여 다시 입력하시기 바랍니다.');
                f.passwd.focus();
                return false;
            }
        
            if(!f.name.value) 
            {
                alert('이름을 입력 바랍니다.');
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
            <th scope="row">아이디 <span class="necessary">*</span> </th>
            <td><input name="userid" placeholder="아아디를 입력해주세요"  type="text" pattern="[A-Za-z0-9]{4,}" required>
              <button type="button" class="joinSubmit" onClick="certify_userid()" value="중복확인">중복확인</button>
              (영문소문자/숫자, 4~16자) </td>
          </tr>
          <tr>
            <th scope="row">비밀번호 <span class="necessary">*</span> </th>
            <td class="last"><input name="passwd" autocomplete="off" maxlength="16"  type="password" required>
              (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자) </td>
          </tr>
          <tr>
            <th scope="row">비밀번호 확인 <span class="necessary">*</span> </th>
            <td class="last"><input name="passwd2" autocomplete="off" maxlength="16"  type="password" required></td>
          </tr>
          
          <tr>
            <th scope="row">이름 <span class="necessary">*</span> </th>
            <td><input name="name" placeholder="이름을 입력해주세요"  type="text"  required></td>
          </tr>
          <tr>
            <th scope="row">이메일 <span class="necessary">*</span> </th>
            <td><input id="email" name="email"  type="email" required>
              
              </td>
          </tr>
          
          <tr>
            <th scope="row">전화 <span class="necessary">*</span> </th>
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
          <button type="submit" class="regSubmit" value="회원가입">회원가입</button>
        <a href="./main.jsp"><button type="button" id="cancel" class="regCancel"> 취소하기</button></a>
        </form>
    </body>
</html>