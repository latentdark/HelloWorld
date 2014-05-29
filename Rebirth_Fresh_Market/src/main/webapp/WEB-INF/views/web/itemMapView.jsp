<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
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
		
		#start,#signin,#signin_on{
			margin-top : 3px;
			color:white;
			background:none;
		}
	
		
		/* 페이지에 따라 알아서 색깔 바뀌게 수정해야함  */
		#deal, #deal:hover{
			background-color:#33A876;
			margin-top : 3px;
			color:white;
		}
		
		#start:hover, #signin:hover, #signin_on:hover{
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
		<!-- -->
		
		
		html { height: 100% }
      	body { 
      		height: 100%; 
      		margin: 0; 
      		padding: 0; 
      		overflow:hidden;
      	}
      	
      	#aside{
      		background-color:#F5F6F7;
      		width:7%;
      		height:100%;
      		float:left;
      		margin-top:53px;
      		text-align:center;
      		border:1px solid #BCBCBC;
      	
      	}
      	
      	#aside_detail{
      		background-color:#FFFFFF;
      		width:20%;
      		height:100%;
      		float:left;
      		margin-top:53px;
      		text-align:center;
      		border-top:1px solid #BCBCBC;
      		padding-top:10px;
      	}
      
      	#map_canvas{
      		float:left;
	      	margin-top:53px;
	      	border-left:1px solid #BCBCBC;
      		border-top:1px solid #BCBCBC;
      		
      	}
	
	</style>
	
	<script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAX-hWL7tXxRZd2GtUjDME2jf-9qNoiRsE&sensor=false&language=ko">
    </script>
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
	//구글 맵
	
	 function initialize() {
       var mapOptions = {
         center: new google.maps.LatLng(37.494626, 127.027933),
         zoom: 17,
         mapTypeId: google.maps.MapTypeId.ROADMAP
       };
       var map = new google.maps.Map(document.getElementById("map_canvas"),
           mapOptions);
     
       var marker = new google.maps.Marker({
           position: map.getCenter(),
           map: map,
           title: 'Click to zoom'
         });
       
       google.maps.event.addListener(marker, 'click', function() {
           map.setZoom(20);
           map.setCenter(marker.getPosition());
         }); 
     }  
	
	</script>
</head>
<body onload="initialize()">
	<header>
		<%@include file="header.jsp"%>
	</header>
	
	<div id="aside" class="tabbable">
		<ul class="nav">
			<li class="active">
				<a href="#tab1" data-toggle="tab">삽니다</a>
			</li>
			<li>
				<a href="#tab2" data-toggle="tab">팝니다</a>
			</li>
			<li>
				<a href="#tab3" data-toggle="tab">상세검색</a>
			</li>
	 	</ul>
 	</div>	
 	
 	
 	<div id="aside_detail" class="tab-content">
		<div class="tab-pane active" id="tab1">
			<p>안녕</p>
		</div>
		<div class="tab-pane" id="tab2">
			<p>또 안녕</p>
		</div>
		<div class="tab-pane" id="tab3">
			<p>또또 안녕</p>
		</div>
	</div>
	
	<div id="map_canvas" style="width:73%; height:100%;">
	
	</div>
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