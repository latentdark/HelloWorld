<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Fresh Market</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />

	<link rel="stylesheet" type="text/css" href="/resources/css/jquery.fullPage.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/examples.css" />
	<style>
	
		/* Style for our header texts 
	* --------------------------------------- */
	
	/* Centered texts in each section 
	* --------------------------------------- */
	.section{
		text-align:center;
	}
	#section0,#section1,#section2{
		background-image: url(/resources/imgs/bg6.png);
	}

	/* Overwriting styles for control arrows for slides
	* --------------------------------------- */
	.controlArrow.prev {
		left: 50px;
	}
	.controlArrow.next{
		right: 50px;
	}
	
	/* Overwriting fullPage.js tooltip color
	* --------------------------------------- */
	
	#fullPage-nav span, .fullPage-slidesNav span{
		border-color: #FFF;
	}
	#fullPage-nav li .active span, .fullPage-slidesNav .active span{
		background: #FFF;
	}
	#section0_img,#section1_img{
		width:60%; height:60%;
	}
	
	
	</style>
	
	<link rel="Stylesheet" href="/resources/css/bootstrap.min.css"/>
	<style>
		.navbar{
			/* background-image: url("/resources/imgs/bg6.png");
			 */
			background-color: #5DCD9D;
			border-style: none;
			font-size:15px;
			font-familiy:'Nanum Gothic';
			margin:0;
		}
		
		#brand_img{
			margin-left:10px;
		}
		
		#start,#deal,#login,#welcome{
			margin-top : 3px;
			color:white;
			background:none;
		}
	
		
		#start:hover, #deal:hover, #login:hover, #welcome:hover{
			color:gray;
			background:none;
		}
		
		#welcome:hover{
			color:white;
			background:none;
		}
		
		#search{
			margin-top: 10px;
		}
		body{
			background-image: url("/resources/imgs/bg6.png");
		} 
		
		
		.dropdown-menu{
		 	padding: 15px; 
		 	padding-bottom: 15px;
		 	top:54px;
			left:-180px;
			margin-right:20px;
			border-color: #BCBCBC;
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
			margin-bottom: 5px;
		}
		
		#signup{
			margin-left:160px;
			text-decoration: none;
		}
		#signup:hover{
			color: gray;
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
	
	
	<script type="text/javascript" src="/resources/vendors/jquery.slimscroll.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.fullPage.js"></script>
	<script type="text/javascript" src="/resources/js/examples.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#fullpage').fullpage({
				anchors: ['firstPage', 'secondPage', '3rdPage'],
				navigation: true,
				navigationPosition: 'right',
				navigationTooltips: ['First', 'Second', 'Third']
			});
		});
	</script>
</head>
<body>
<header>
	<div class="navbar navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/"><img id="brand_img" src="/resources/imgs/logo5.png" width="140" height="20"></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a id="start" href="#">시작하기</a></li>
            <li><a id="deal" href="/itemMapView">사고팔기</a></li>
          </ul>
          <ul class="nav navbar-nav pull-right">
            <li class="divider-vertical"></li>
          	
          	
     
     		<!--  로그인버튼, 로그인차, 마이페이지 -->
     		
          	<c:if test="${user==null}">
          	<li class="dropdown">
           	 <a id="login" class="dropdown-toggle" href="" data-toggle="dropdown">로그인 <strong class="caret"></strong></a>
	            <div class="dropdown-menu">
	              <!-- Login form here -->
	              	<!-- 
		            <form name="loginform" action="/signup" method="post" accept-charset="UTF-8">
		             -->
		            <form name="loginform" action="/signin" method="post">
					  <input class="form-control" id="user_email" style="margin-bottom: 15px;" type="email" name="email" size="30" placeholder=" 이메일"/>
					  <input class="form-control" id="user_password" style="margin-bottom: 15px;" type="password" name="password" size="30" placeholder=" 비밀번호"/>
					  <input id="user_remember_me" style="float: left; margin-right: 10px;" type="checkbox" name="user[remember_me]" value="1" />
					  <label class="string optional" for="user_remember_me"> Remember me</label>
					 <!--  아직 적용안됐음 (remember me) -->
					  <input id="login_submit" class="btn btn-primary" type="submit" name="commit" value="Sign In" onchange='proces()'/>
					  <a id="signup" href="signupForm">Sign Up</a>
					</form>
	            </div>
	        </li>    
            </c:if>
            
            <c:if test="${user!=null}">
            <li class="dropdown">
             <a id="welcome" class="dropdown-toggle" href="" data-toggle="dropdown">${user.nickname} 님 환영합니다! <strong class="caret"></strong></a>
				<div class="dropdown-menu">
	              <!-- Login form here -->
	              	<!-- 
		            <form name="loginform" action="/signup" method="post" accept-charset="UTF-8">
		             -->
		            <form name="loginform" action="/signin" method="post">
					  <a id="signup" href="signupForm">Sign Up</a>
					</form>
	            </div>
	        </li>              
            </c:if>
             
           
     		  <!--  로그인버튼, 로그인차, 마이페이지  끝 -->
          
            
            
            
          
          </ul>
          <form id="search" class="navbar-form navbar-right" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search" height="10">
			</div>
		  </form>          
        </div><!--/.nav-collapse -->
      </div>
    </div>
</header>


<section id="main_section">
    <div id="content">
    <!-- vertical slider -->
	<div id="fullpage">
		<div class="section " id="section0">
			<div class="intro">
				<img id="section0_img" src="/resources/imgs/logo5.png">
			
			</div>
		</div>
		<div class="section" id="section1">
			<div class="intro">
				<img id="section1_img" src="/resources/imgs/masan.png" width="800" height="600" >
			</div>
		</div>
		<div class="section" id="section2">
			<div class="intro">
					<!--  세번째 페이지  -->	
			</div>
		</div>
		
	</div>
	</div>
</section>	
	<script type="text/javascript">
	//이메일칸에 입력전에 submit 버튼 활성화/비활성화
	document.loginform.commit.disabled = true;
	document.onkeyup = proces;
	document.onmouseup = proces;
	document.onmousedown = proces;
	
	//알고리즘 개선하였음.
	function proces() {
		if (document.loginform.email.value == '' 
			||document.loginform.password.value == '') {   
			document.loginform.commit.disabled = true;
		} 
		else if(document.loginform.password.value != ''
				&&document.loginform.password.value.length >=8 ){	
			document.loginform.commit.disabled = false; 
		}
	}
	</script>

<footer></footer>		
</body>
</html>