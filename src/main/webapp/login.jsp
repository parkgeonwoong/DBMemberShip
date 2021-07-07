<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/login_.css" />
    
    <title>
        로그인
    </title>
</head>
<body>
    <h3 >로그인</h3>
    <div class="wrapper">
        
	    <form method='post' action='./login_on.jsp'>
            <div class="loginbox">
                <div class="loginInput">
                    <input type='text' name='userid' placeholder='아이디' pattern='[A-Za-z0-9]{4,}' required> <br><br>
                    <input type='password' name='passwd' placeholder='비밀번호' required><br><br>
                </div>

                <div class="Submit">
                    <div class="loginSubmit">
                        <input type ='submit' value='로그인'>
                    </div>

                    <div class="sign">
                        <a href="./sign_up.jsp" class="memberJoin">회원가입</a>
                    </div>
                </div>
            </div>
        </form>
        
            
                
            </div>
    
    </div>
</body>
</html>