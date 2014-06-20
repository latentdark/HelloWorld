<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fresh Market</title>
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
			padding-top:18px;
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
	
	<!-- 슬라이드 css&js -->
	<link rel="stylesheet" type="text/css" href="/resources/css/jquery.fullPage.css" />
	<!-- <link rel="stylesheet" type="text/css" href="/resources/css/examples.css" />
	 -->
	 <style>
	 	.wrap{
			margin-left: auto;
			margin-right: auto;
			width: 960px;
			position: relative;
		}
	 
		.section{
			text-align:center;
		}
		#section0,#section1,#section2{
			background-image: url(/resources/imgs/bg6.png);
		}
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
		<%@include file="header.jsp"%>
	</header>
	
	<section>
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
</body>
</html>