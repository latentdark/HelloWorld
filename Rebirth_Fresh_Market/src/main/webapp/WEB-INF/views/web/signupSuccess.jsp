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
		
		#start,#deal,#signin,#signin_on{
			margin-top : 3px;
			color:white;
			background:none;
		}
	
		
		#start:hover, #deal:hover, #signin:hover, #signin_on:hover{
			color:gray;
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
		
		#dropdown_on{
			padding-right:0px;
			padding-left:0px;
			padding-top:15px;
			padding-bottom:15px;
			margin:0;
			text-align: right;
		}
		
		
		#signin_submit{
			clear: left; 
			width: 100%; 
			height: 32px; 
			font-size: 13px;
			
		}
		
		#signin_submit.btn{
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
		
		#dropdown_on>li>a{
			color:blue;
		 	background:none;
		}
		
		#dropdown_on>li>a:hover{
			color:gray;
		 	background:none;
		}
		
		/* session 부분 */
		#content{
			padding-top: 200px;
			text-align: center;
		}
		#success_img{
			width: 80%;height:80%;
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
	<header>
		<%@include file="header.jsp"%>
	</header>
	<!-- 메인 섹션 -->
	<div id="content">
	    <section id="main_section">
			<img id="success_img" src="/resources/imgs/success.png">
		</section>
	</div>
		
	
	<!-- Footer -->
	<footer>
	</footer>		
</body>
</html>