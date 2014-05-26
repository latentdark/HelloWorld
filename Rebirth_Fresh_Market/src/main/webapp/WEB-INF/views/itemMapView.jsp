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
		
		#start,#login,#welcome{
			margin-top : 3px;
			color:white;
			background:none;
		}
		
		#deal{
			margin-top : 3px;
			color:gray;
			background:none;
		}
		
		#start:hover, #deal:hover, #login:hover{
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
			margin-bottom: 5px;
		}
		
		#signup{
			margin-left:160px;
			text-decoration: none;
		}
		#signup:hover{
			color: gray;
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
      		width:10%;
      		height:100%;
      		float:left;
      		margin-top:53px;
      		text-align:center;
      		
      	
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
	          	<li class="dropdown">
	          	
	          	<!-- 
	          	<a id="login" class="dropdown-toggle" href="" data-toggle="dropdown">로그인 <strong class="caret"></strong></a>
	          -->
	          	<!-- 수정한부분 -->
	          	
	          	<c:if test="${user==null}">
	           	 <a id="login" class="dropdown-toggle" href="" data-toggle="dropdown">로그인 <strong class="caret"></strong></a>
	            </c:if>
	            <c:if test="${user!=null}">
	             <a id="welcome">${user.nickname} 님 환영합니다!</a>
	            </c:if>
	             
	             
	            <div class="dropdown-menu">
	              <!-- Login form here -->
	              	<!-- 
		            <form name="loginform" action="/signup" method="post" accept-charset="UTF-8">
		             -->
		            <form name="loginform" action="/signup" method="post">
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
	<div id="aside">
	<br>
 	삽니다
 	<br><br>
 	팝니다
 	<br><br>
 	상세검색
 	</div>
	<div id="map_canvas" style="width:90%; height:100%;">

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