<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Fresh Market</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />	
	<link rel="Stylesheet" href="/resources/css/bootstrap.min.css"/>
	<style>
		body{
		 	background-color:#F5F6F7;		
		}
		
		/* #main_section{
			margin-top: 200px;
		}
		 */
		#signup_logo{
			width:80%; height:80%;
			margin-top: 50px;
			margin-left: 50px;
			margin-bottom: 50px;
			display:block;
			
		}
		
		@media (min-width: 1200px) {
 	   		.container{
        		max-width: 500px;
  	  		}
		}
		
		.signup{
			margin-top:5px;
			margin-left:20px;
			border: none;
			witdh:300px;
		}
		#signup_submit{
			clear: left; 
			width: 100%; 
			height: 60px; 
			font-size: 13px;
			
		}
		#signup_submit.btn{
			background-color:#5DCD9D;
			border:none;
			margin-bottom: 30px;
			font-size: 20px;
		}
		
		
		#signup_submit.btn:hover{
			background-color:#34A977;
			border:none;
			margin-bottom: 5px;
		}
		
		
		#emailcheck,#nicknamecheck,#phonenumcheck{
			background-color:#5DCD9D;
			border:none;
			margin-right: 20px;
			
		}
		#emailcheck:hover,#nicknamecheck:hover,#phonenumcheck:hover{
			background-color:#34A977;
			border:none;
			margin-right: 20px;
		}
				
	</style>
	
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<script type="text/javascript">

	//로그인 메뉴 
	$(function() {
	  // Setup drop down menu
	  $('.dropdown-toggle').dropdown();
	 
	  // Fix input element click problem
	  $('.dropdown input, .dropdown label').click(function(e) {
	    e.stopPropagation();
	  });
	});


	</script>	
</head>
<body>
<div class="container">
	<!--
	<script type="text/javascript">
	//이메일칸에 입력전에 submit 버튼 활성화/비활성화
	document.loginform.commit.disabled = true;
	document.onkeyup = proces;
	document.onmouseup = proces;
	document.onmousedown = proces;
	
	//알고리즘 개선하였음.
	function proces() {
		if (document.loginform.useremail.value == '' 
			||document.loginform.user_password.value == '') {   
			document.loginform.commit.disabled = true;
		} 
		else if(document.loginform.user_password.value != ''
				&&document.loginform.user_password.value.length >=8 ){	
			document.loginform.commit.disabled = false; 
		}
	}
	</script> -->
	 <section id="main_section">    	
	    	<div id="signup_header"> 
			  <a href="/"><img id="signup_logo" src="/resources/imgs/logo5re.png"></a>
			</div> 
			<form id="signupform" action="/signupSubmit" method="post">
				<table class="table table-bordered" width="100px">
					<tr bgcolor="white"> 
						<td class="signuptd" height="70"><input id="email" name="email" placeholder="이메일" class="signup" type="email" size="40"/>
						</td>			
					</tr>
					<tr bgcolor="white"> 
						<td height="70"><input id="password" name="password" placeholder="비밀번호" class="signup" type="password" size="40"/>
				        </td>			
					</tr>
					<tr bgcolor="white"> 
						<td height="70"><input id="confirmpassword" name="confirmpassword" placeholder="비밀번호 재확인" class="signup" type="password" size="40"/>
				        </td>			
					</tr>
					<tr bgcolor="white"> 
						<td height="70"><input id="nickname" name="nickname" placeholder="별명" class="signup" type="text" size="40"/>			
						</td>
					</tr>
					<tr bgcolor="white"> 
						<td height="70"><input id="phoneNumber" name="phoneNumber" placeholder="휴대폰 번호 (- 없이 입력)" class="signup" type="text" size="40" maxlength="11"/>
						<button id="phonenumcheck" type="button" class="btn btn-primary pull-right">인증</button>
						</td>		
					</tr>
					<tr bgcolor="white"> 
						<td height="70"><input id="phoneNumber" name="phoneNumber" placeholder="인증번호" class="signup" type="text" size="40"/>
						<button id="phonenumcheck" type="button" class="btn btn-primary pull-right">확인</button>
						</td>		
					</tr>
				</table>
				<br>
				<input id="signup_submit" name="signup_submit" class="btn btn-primary" type="submit" value="가입하기" onchange='proces()'/>			
			</form>	
			
			<script type="text/javascript">
			//이메일칸에 입력전에 submit 버튼 활성화/비활성화
			document.signupform.signup_submit.disabled = true;
			document.onkeyup = proces;
			document.onmouseup = proces;
			document.onmousedown = proces;
			
			//알고리즘 개선하였음.
			function proces() {
				if (document.signupform.email.value == '' 
					||document.signupform.password.value == '') {   
					document.signupform.signup_submit.disabled = true;
				} 
				else if(document.signupform.password.value != ''
						&&document.signupform.password.value.length >=8 ){	
					document.signupform.signup_submit.disabled = false; 
				}
			}
			</script>
	</section>
	<footer></footer>
</div>		


</body>
</html>