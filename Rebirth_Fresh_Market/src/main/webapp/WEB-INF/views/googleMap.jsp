<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% 
	/*	
	-Request�� ������ ������ ������ �޴´� 
	ex) key = xPoint , value=Double[];
		key = yPoint , value=Double[];
		key = Time , value=String[];
		key = Addr , value=String[];
		
	-������ �޾ƿ� ���� : ��ǥ ��ġ (x,y),��ǥ�� ���� (��¥,�ð�)
	-������ �ʱ���ġ 
	1) ó�� ����� ��ġ
	2) ��Ŀ�� ǥ�õ� ������ �Ѽ�/2 ��ġ�� ����� 
	3) ó�� ����� ��ġ, �������� ���� ��ġ �� ��� ��ǥ����ؼ� �ʱ���ġ��
	
	-�ڱ���ġ �ʱ�ȭ ���� �޾Ƽ� �����ؼ� �ʱ���ġ�� ������ ǥ��
	
	-��Ŀ ������ �� ���� 
	 ->���� �ּҰ�, ��ǥ�� ���� (��¥,�ð�), ��Ŀ�� ���� ����;
	 
	-���� �ʱ� �� ũ�⸦ ���������� 
	1)ó�� ��ǥ�� ��������ǥ�� �Ÿ��� ����ؼ� �� ũ�� ����
	2)ó�� ��ǥ�� ��������ǥ�� ��ġ�� ���� ���ִ� (���ƿ��½ð��� üũ������� ����->�λ�->���� �̷����)
	 �̷� ��쿡�� ��� �ؾ� �� ��?
	 -> ó����ǥ�� �ϳ��ϳ� ��ǥ�� üũ�ؼ� �Ÿ��� üũ �ű⼭ ���� �ָ� ������ �ִ� ��ǥ�� ������ؼ� ó����ġ(�߽���ġ)�� ��´�.
	
	��Ʈ�������� ��ǥ 
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
            // 3�ʵ��� �������� ������ ó���� ���� ��ǥ�� �̵�
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
            <li><a id="start" href="#about">�����ϱ�</a></li>
            <li><a id="deal"href="googleMap.jsp">����ȱ�</a></li>
          </ul>
          <ul class="nav navbar-nav pull-right">
            <li><a id="login"href="#login">�α���</a></li>
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