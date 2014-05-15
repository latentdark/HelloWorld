<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Fresh Market</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<link rel="Stylesheet" href="/resources/css/bootstrap.min.css"/>
	<style>
		.navbar{
			background-image: url("/resources/imgs/bg.png");
			border-style: none;
			font-size:15px;
		}
		#start,#deal,#login{
			margin-top : 3px;
			color:white;
			background:none;
		}
	
		
		#start:hover, #deal:hover, #login:hover{
			color:gray;
			background:none;
		}
		
		#search{
			margin-top: 10px;
		}
		body{
			background-image: url("/resources/imgs/bg.png");
			background-color:#00A1DA;
		}
		.dropdown-menu{
		 	padding: 15px; 
		 	padding-bottom: 15px;
		 	top:54px;
			left:-180px;
			margin-right:20px;
		}
		
		#login_submit{
			clear: left; 
			width: 100%; 
			height: 32px; 
			font-size: 13px;
			
		}
		#login_submit.btn{
			background-color:#00A1DA;
			border:none;
		}
		
	</style>
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
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
	
	
	//이메일 체크
	function check_mail(cg) {
		mail01 = /[^@]+@[A-Za-z0-9_-]+[.]+[A-Za-z]+/;
		mail02 = /[^@]+@[A-Za-z0-9_-]+[.]+[A-Za-z0-9_-]+[.]+[A-Za-z]+/;
		mail03 = /[^@]+@[A-Za-z0-9_-]+[.]+[A-Za-z0-9_-]+[.]+[A-Za-z0-9_-]+[.]+[A-Za-z]+/;
		if(mail01.test(cg.value)) return true;
		if(mail02.test(cg.value)) return true;
		if(mail03.test(cg.value)) return true;		
		return false;
	}
	</script>
	
	
	
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
           
          </button>
          <a class="navbar-brand" href="Index.html"><img src="/resources/imgs/logo5.png" width="140" height="20"></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a id="start" href="#">시작하기</a></li>
            <li><a id="deal" href="googleMap.jsp">사고팔기</a></li>
          </ul>
          <ul class="nav navbar-nav pull-right">
            <li class="divider-vertical"></li>
          	<li class="dropdown">
            <a id="login" class="dropdown-toggle" href="" data-toggle="dropdown">로그인 <strong class="caret"></strong></a>
            <div class="dropdown-menu">
              <!-- Login form here -->
	            <form name="loginform" action="[YOUR ACTION]" method="post" accept-charset="UTF-8">
				  <input class="form-control" id="user_email" style="margin-bottom: 15px;" type="email" name="useremail" size="30" placeholder=" 이메일"/>
				  <input class="form-control" id="user_password" style="margin-bottom: 15px;" type="password" name="password" size="30" placeholder=" 비밀번호"/>
				  <input id="user_remember_me" style="float: left; margin-right: 10px;" type="checkbox" name="user[remember_me]" value="1" />
				  <label class="string optional" for="user_remember_me"> Remember me</label>
				 
				  <input id="login_submit" class="btn btn-primary" type="submit" name="commit" value="Sign In" onchange='proces()'/>
				</form>
            </div>
          </li>
          </ul>
          <form id="search" class="navbar-form navbar-right" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search" height="10">
			</div>
		  </form>          
        </div><!--/.nav-collapse -->
      </div>
    </div>
	<br><br>
	<div id="main" class="container">
	
	<br><br>
	</div>
	
	
	<script type="text/javascript">
	//이메일칸에 입력전에 submit 버튼 활성화/비활성화
	document.loginform.commit.disabled = true;
	document.onkeyup = proces;
	document.onmouseup = proces;
	document.onmousedown = proces;
	function proces() {
		if (document.loginform.useremail.value == '') {
		    document.loginform.commit.disabled = true;
		} else {
		    document.loginform.commit.disabled = false;
		}
	}	
	
	//이메일 체크
	
	if(document.form.email.value != ""){
		f_val = document.loginform.useremail;
		if(!check_mail(f_val)) { 
		alert("이메일주소가 형식에 맞지 않습니다."); 
		document.loginform.useremail.focus();
		return true; 
		}	
	}
	
	</script>
</body>
</html>