<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% 
	/*	
	-Request로 받을때 맵으로 정보를 받는다 
	ex) key = xPoint , value=Double[];
		key = yPoint , value=Double[];
		key = Time , value=String[];
		key = Addr , value=String[];
		
	-지도에 받아올 정보 : 좌표 위치 (x,y),좌표가 찍힌 (날짜,시간)
	-지도의 초기위치 
	1) 처음 출발한 위치
	2) 마커가 표시된 숫자의 총수/2 위치를 가운데로 
	3) 처음 출발한 위치, 마지막에 찍힌 위치 의 가운데 좌표계산해서 초기위치로
	
	-자기위치 초기화 값을 받아서 대입해서 초기위치를 지도에 표시
	
	-마커 눌렀을 때 정보 
	 ->현실 주소값, 좌표가 찍힌 (날짜,시간), 마커가 찍힌 순서;
	 
	-맵의 초기 줌 크기를 유동적으로 
	1)처음 좌표와 마지막좌표의 거리에 비례해서 줌 크기 지정
	2)처음 좌표와 마지막좌표의 위치가 같을 수있다 (돌아오는시간을 체크했을경우 서울->부산->서울 이런경우)
	 이런 경우에는 어떻게 해야 할 지?
	 -> 처음좌표와 하나하나 좌표를 체크해서 거리를 체크 거기서 가장 멀리 떨어져 있는 좌표와 계산을해서 처음위치(중심위치)를 잡는다.
	
	비트교육센터 좌표 
	double x=37.494642;
    double y=127.027953;
 	*/	
	  
%>
<!DOCTYPE html>
<html>
  <head>
  	<title>Google Map Test</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<link rel="Stylesheet" href="/resources/css/bootstrap.min.css"/>
	<style>
		.navbar{
			background-image: url("/resources/imgs/bg.png");
			border-style: none;
		}
		#start,#deal,#login{
			margin-top : 3px;
			color:white;
		}
		#start:hover,#deal:hover,#login:hover{
			color:gray;
		}
		#search{
			margin-top: 10px;
		}
		html { height: 100% }
      	body { height: 100%; margin: 0; padding: 0 }
      	
      	#map_canvas { height: 100%;}
	</style>
	
	<link rel="Stylesheet" href="/resources/css/bootstrap-responsive.min.css"/>
	<script src="http://code.jquery.com/jquery-1.7.1.js"></script>
	<script src="js/bootstrap.min.js"></script>

    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAX-hWL7tXxRZd2GtUjDME2jf-9qNoiRsE&sensor=false&language=ko">
    </script>
<script type="text/javascript">
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
        
        
   /*      google.maps.event.addListener(map, 'center_changed', function() {
            // 3 seconds after the center of the map has changed, pan back to the
            // marker.
            // 3초동안 움직이지 않으면 처음에 잡은 좌표로 이동
            window.setTimeout(function() {
              map.panTo(marker.getPosition());
            }, 3000);
          }); */
        
        google.maps.event.addListener(marker, 'click', function() {
            map.setZoom(20);
            map.setCenter(marker.getPosition());
          }); 
      }  
	</script>
  </head>
  <body onload="initialize()">
  	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/"><img src="/resources/imgs/logo5.png" width="140" height="20"></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a id="start" href="#about">시작하기</a></li>
            <li><a id="deal"href="googleMap.jsp">사고팔기</a></li>
          </ul>
          <ul class="nav navbar-nav pull-right">
            <li><a id="login"href="#login">로그인</a></li>
          </ul>
          <form id="search" class="navbar-form navbar-right" role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search" height="10">
			</div>
		  </form>          
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div id="map_canvas" style="width:100%; height:100%"></div>
  </body>
</html>