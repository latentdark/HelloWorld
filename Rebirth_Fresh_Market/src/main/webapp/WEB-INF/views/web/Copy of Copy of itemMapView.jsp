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
	<link href="resources/css/prettify.css" rel="stylesheet">
	
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
			padding-top:18px;
			color:white;
			background:none;
		}
	
		
		/* 페이지에 따라 알아서 색깔 바뀌게 수정해야함  */
		#deal, #deal:hover{
			background-color:#33A876;
			padding-top:18px;
			color:white;
			height:53px;
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
		
		/* itemMapView css  */
		
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
      	
      	#aside>ul>li>a{
      		color:#103425;
      	}
      	
      	#aside>ul>li>a:hover{
      		color:#5DCD9D;
      	}
      	
      	#aside_detail{
      		background-color:#FFFFFF;
      		width:22%;
      		height:100%;
      		float:left;
      		margin-top:53px;
      		text-align:center;
      		border-top:1px solid #BCBCBC;
      		padding-top:10px;
      		padding-left:10px;
      		padding-right:10px;
      	}
      
      	#map_canvas{
      		float:left;
	      	margin-top:53px;
	      	border-left:1px solid #BCBCBC;
      		border-top:1px solid #BCBCBC;
      		
      	}
      	
      	
      	/* 상품등록 css  */
      	#sellbtn{
      		width:100px;
      	}
      	
      	#buybtn{
      		width:100px;
      	}
      	
      	#popover-content{
      		margin-left:200px;
      		width:600px;
      		height:400px;
      	}
      	
      	#item_name{
      		margin-bottom:10px;
      	}
      	#category1{
      		margin-bottom:10px;
      	}
      	
      	#register_tap>li>a{
      		font-size: 10px;
      	}
      	
		<!-- imageslider -->
		#imgslider_container{
		  	margin-top: 20px;
  			width: 960px;
		}
	</style>
	
	<!-- step wizard css -->
	
	<script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAX-hWL7tXxRZd2GtUjDME2jf-9qNoiRsE&sensor=false&language=ko">
    </script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.bootstrap.wizard.js"></script>
	<script src="/resources/js/prettify.js"></script>
	<script>
	$(document).ready(function() {
	  	$('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
			var $total = navigation.find('li').length;
			var $current = index+1;
			var $percent = ($current/$total) * 100;
			$('#rootwizard').find('.progress-bar').css({width:$percent+'%'});
		}});	
	});	
	
	//---------------------------------------
	var test="${test}";
	console.log(test);
	//HTML5 Geolocation을 이용한 ip trace
	/**/
	var sellImage = 'resources/imgs/icons/ssh2.png';
	var buyImage = 'resources/imgs/icons/bsh2.png';
	var geoImage = 'resources/imgs/icons/pb.png';
	
	var map;
	var markers = [];
	
	
	//var itemList=${itemList};
	
	//statCode 1=sell, 2=buy, 3=deal
	<c:forEach var="itemList" items="${itemList}">
		<c:set var="i" value="${ i+1 }" />	
			markers.push(
					new google.maps.Marker({
						position : new google.maps.LatLng(${itemList.gridX1} , ${itemList.gridY1} ),
						map : map,
						icon:
							<c:if test="${itemList.stateCode=='1'}">
								buyImage
							</c:if>
							<c:if test="${itemList.stateCode=='2'}">
								sellImage
							</c:if>
								,
						title : '${itemList.itemName}',
						content : '${itemList.itemInfo}'
						//labelContent : '${itemList.itemInfo}'
						})
			);
	</c:forEach>
	

	function initialize() {
		geocoder = new google.maps.Geocoder();
		// map = new google.maps.Map(document.getElementById('map-canvas'),
		//     mapOptions);
		var mapOptions = {
			zoom : 12,
			center : new google.maps.LatLng(-33, 151),
			disableDefaultUI : true
		}
		map = new google.maps.Map(document.getElementById("map_canvas"),
				mapOptions);
		//마커찍기
		
	     google.maps.event.addListener(map, 'click', function(e) {
	            placeMarker(e.latLng, map);
	            codeLatLng();
	          });
		
		//map = new google.maps.Map(document.getElementById("map_canvas"),myOptions);
		// Try HTML5 geolocation
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				var pos = new google.maps.LatLng(position.coords.latitude,
						position.coords.longitude);
				
				new google.maps.Marker({
					position : new google.maps.LatLng(position.coords.latitude,
							position.coords.longitude),
					map : map,
					/* icon: geoImage	 */				
					});
				
				map.setCenter(pos);
			}, function() {
				handleNoGeolocation(true);
			});
		} else {
			// Browser doesn't support Geolocation
			handleNoGeolocation(false);
		}

		markerInitialize(map);
	}
	


	// Sets the map on all markers in the array.
	function markerInitialize(map) {
	  for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(map);
	    
		console.log(markers[i].content);
	    
		markerAddListener(markers[i], i);
	  }
	}
	/*
	function markerInitialize(map) {
	  for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(map);
	    
		console.log(markers[i].content);
	    
		markerAddListener(markers[i], i);
	  }
	}
	*/
	
	// The five markers show a secret message when clicked
	// but that message is not within the marker's instance data
	function markerAddListener(marker, i) {
	  var infowindow = new google.maps.InfoWindow({
	    content: marker.content
	  });

	  google.maps.event.addListener(marker, 'click', function() {
	    infowindow.open(marker.get('map'), marker);
	  });
	  //infowindow.open(marker.get('map'), marker);
	}
	
	//gps module
	function handleNoGeolocation(errorFlag) {
		if (errorFlag) {
			var content = 'Error: The Geolocation service failed.';
		} else {
			var content = 'Error: Your browser doesn\'t support geolocation.';
		}

		var options = {
			map : map,
			position : new google.maps.LatLng(60, 105),
			content : content
		};

		var infowindow = new google.maps.InfoWindow(options);
		map.setCenter(options.position);
	}
	
	// Add a marker to the map and push to the array.
	function addMarker(location) {
		var marker = new google.maps.Marker({
			position : location,
			map : map
		});
		markers.push(marker);
	}
	
	// 마커찍기 
	function placeMarker(position, map) {
	  if(marekrDropEffect=="active" && markerDropCheck!=1){
		  var marker = new google.maps.Marker({
			position: position,
			map: map,
			draggable:true,
			animation: google.maps.Animation.DROP
		  });
		  map.panTo(position);
		  var lat=marker.getPosition().lat();
		  var lng=marker.getPosition().lng();
			console.log(lat,lng);
			document.getElementById("reg_lat").value=lat;
			document.getElementById("reg_lng").value=lng;
			document.getElementById("latlng").value=lat+","+lng;
		marekrDropEffect="false";
		markerDropCheck=1;
	  }
	}

	function markerDrop(){
		marekrDropEffect="active";
	}
	//좌표 주소 전환
	function codeLatLng() {
		  var input = document.getElementById('latlng').value;
		  var latlngStr = input.split(',', 2);
		  var lat = parseFloat(latlngStr[0]);
		  var lng = parseFloat(latlngStr[1]);
		  var latlng = new google.maps.LatLng(lat, lng);
		  geocoder.geocode({'latLng': latlng}, function(results, status) {
		    if (status == google.maps.GeocoderStatus.OK) {
		      if (results[1]) {
		    	  document.getElementById("reg_add").value=results[1].formatted_address;
		      } else {
		        alert('No results found');
		      }
		    } else {
		      alert('Geocoder failed due to: ' + status);
		    }
		    
		  });
		}
	
	
	google.maps.event.addDomListener(window, 'load', initialize);

	function minseok(){
		alert('hi');
		
	}
	
	//셀렉트
	
	var f_selbox = new Array('의류', '수입명품', '패션잡화' , '미용',
							'출산/육아', '모바일', '컴퓨터' , '카메라',
							'영상기기', '음악/음향/악기', '게임용품' , '스포츠/취미',
							'여행', '생활용품', '가구' , '예술/미술', '도서관련');
	var s_selbox = new Array();
	s_selbox[0] = new Array('캐쥬얼상의', '캐쥬얼하의', '여성상의', '여성하의', '남성상의', '남성하의','파티/잠옷/작업복');
	s_selbox[1] = new Array('루이비통', '샤넬', '버버리/마크제이콥스', '불가리/까르띠에', '구찌/프라다', '디올/입생로랑', '에르메스/콜롬보', '발리/에트로/페라가모','기타 수입명품');
	s_selbox[2] = new Array('여성신발', '남성신발', '가방/모자/장갑', '지갑/벨트/시계', '안경/선글라스', '쥬얼리/악세사리', '기타 패션잡화');
	s_selbox[3] = new Array('여성 기초화장품', '여성 색조화장품', '남성화장품', '향수/아로마', '헤어/바디케', '요가/운동용품','기타 미용');
	s_selbox[4] = new Array('출산/임부용품', '유아/아동의류', '유아/아동용품', '인형/장난감', '유아책/교육');
	s_selbox[5] = new Array('SKT', 'KT', 'LGU+','기타통신사/피처폰','주변기기/악세사리');
	s_selbox[6] = new Array('노트북/넷북', '태블릿PC', '데스크탑/본체', '모니터', 'CPU/메인보드/HDD','메모리/VGA/ODD','케이스/키보드마우스','복합기/프린터','USB/케이블/스피커','허브/무선랜/공유기','잉크/토너/공CD','PC게임/소프트웨어','기타 제품/PC파워');
	s_selbox[7] = new Array('DSLR', '미러리스', '일반디카/하이엔드', '필름/중형카메라', '렌즈/필터/컨버터', '삼각대/플래시/조명','메모리/배터리/가방','기타 카메라악세사리');
	s_selbox[8] = new Array('디지털TV', 'DVD/VCR', 'PMP/DMB', '셋톱박스/프로젝터', '디지털 캠코더','편집기기/소프트웨어','기타 영상관련제품');
	s_selbox[9] = new Array('MP3/CDP', '오디오/홈시어터', '헤드폰/스피커/앰프', '기타 음향기기', 'LP/CD/DVD 음반','건반악기','관악기','현악기','타악기');
	s_selbox[10] = new Array('NDSL/WII/닌텐도', 'PSP/PS2/PS3/PS4', 'XBOX360', '게임소프트웨어', '기타 게임용품');
	s_selbox[11] = new Array('축구용품/의류', '야구용품/의류', '농구용품/의류', 'MTB사이클 용품의류', '미니벨로/일반자전거', '인라인/스케이트보드','스키/보드/의류','골프용품/의류','헬스/수영/용품/의류','피규어/프라모델/브릭','기타스포츠/레저용품');
	s_selbox[12] = new Array('등산용품/의류', '캠핑용품/장비', '낚시용품/의류','숙박권/시설 이용권');
	s_selbox[13] = new Array('사무용품 복사기팩스', '대형가전(TV,냉장고,세탁기,에어컨 등)', '소형가전(밥솥,다리미,가습기,면도기 등)', '침구/커튼/패브릭', '욕실용품/주방용품','전자사전/MC스퀘어','상품권/판매가능티켓', '반려동물 용품', 'DIY/리폼 용품,공구','학습도구/문구','기타 중고');
	s_selbox[14] = new Array('침실(침대/화장대)', '거실(쇼파/테이블)', '주방(식탁/수납장)', '사무용(책상/서랍)','인테리어소품');
	s_selbox[15] = new Array('서양/동양/현대작품', '미술재료/물감/마카', '미술용품도구','골동품/기타수집');
	s_selbox[16] = new Array('학습/사전/참고서', '문학/과학/경영', '월간/계간/잡지', '여행/취미/레저', '예술/디자인도서','컴퓨터/인터넷도서','아동/어린이도서','소설/만화책','전집');


	function init(f){
		var f_sel = f.category1;
		var s_sel = f.category2;

		f_sel.options[0] = new Option("대분류 선택", "");
		s_sel.options[0] = new Option("소분류 선택", "");

		for(var i =0; i<f_selbox.length; i++){
			f_sel.options[i+1] = new Option(f_selbox[i], f_selbox[i]);
		}
	}

	function itemChange(f){
		var f_sel = f.category1;
		var s_sel = f.category2;

		var sel = f_sel.selectedIndex;
		for(var i=s_sel.length; i>=0; i--){
			s_sel.options[i] = null;
		}

		s_sel.options[0] = new Option("소분류 선택", "");

		if(sel != 0){
			for(var i=0; i<s_selbox[sel-1].length; i++){
				s_sel.options[i+1] = new Option(s_selbox[sel-1][i], s_selbox[sel-1][i]);
			}
		}
	}
	
	</script>
</head>
<body onload="initialize(); init(this.form);">
	<header>
		<%@include file="header.jsp"%>
	</header>
	
	<div id="aside" class="tabbable">
		<ul class="nav">
			<li class="active">
				<a href="#tab1" data-toggle="tab">
				상세검색
				</a>
			</li>
			<li>
				<a href="#tab2" data-toggle="tab">
				상품등록
				</a>
			</li>
			<li>
				<a href="#tab3" data-toggle="tab">
				거래현황
				</a>
			</li>
	 	</ul>
 	</div>	
 	
 	
 	<div id="aside_detail" class="tab-content">
		<div class="tab-pane active" id="tab1">
			<form class="navbar-form navbar-left" role="search">
			    <div class="form-group">
			        <input type="text" class="form-control" placeholder="Search">
			    </div>
			    <button type="submit" class="btn btn-default">검색</button>
			    <br><br>
			    <div id="select_loca">
			    	위치 선택
		    		<div class="btn-group" data-toggle="buttons" style="margin-left:10px">			    
				  		<label class="btn btn-default active">
				    	<input type="radio" name="options" id="option1"> 현재위치
				  		</label>
			  			<label class="btn btn-default">
				    	<input type="radio" name="options" id="option2"> 위치지정
				  		</label>
					</div>
			    </div>
			    <br>
			   	<div id="select_deal">
			    	거래 선택 
			    	<div class="btn-group" data-toggle="buttons" style="margin-left:10px">			    
				  		<label class="btn btn-default">
				    	<input type="radio" name="options" id="option1"> 삽니다
				  		</label>
			  			<label class="btn btn-default">
				    	<input type="radio" name="options" id="option2"> 팝니다
				  		</label>
					</div>
				</div>
				<br>
				<div>
					거래 지역 범위 설정
				</div>
			</form>
		</div><!-- end of tap2   -->
		<div class="tab-pane" id="tab2">
	
			<div id="rootwizard">				
				<div class="navbar2">
				  <div class="navbar-inner2">
				    <div class="container2" style="display:none;">
						<ul id="register_tap">
						  	<li><a href="#tab11" data-toggle="tab">1단계</a></li>
							<li><a href="#tab12" data-toggle="tab">2단계</a></li>
							<li><a href="#tab13" data-toggle="tab">3단계</a></li>
							<li><a href="#tab14" data-toggle="tab">4단계</a></li>
							<li><a href="#tab15" data-toggle="tab">5단계</a></li>
						</ul>
				 	</div>
				  </div>
				</div>
				<div id="bar" class="progress progress-striped active">
				  <div class="progress-bar"></div>
				</div>
				
				<form action="#" name="form" id="register_form" method="post" >
				<div class="tab-content">
				 	
				    <div class="tab-pane" id="tab11">
				    	<div class="form-group">
				    		<h4>거래 선택하기</h4>
				    		<br>
						   	 <div class="btn-group" data-toggle="buttons">
							  <label class="btn btn-default">
							    <input type="radio" name="buyBtn" id="buy"> 삽니다
							  </label>
							  <label class="btn btn-default">
							    <input type="radio" name="sellBtn" id="sell"> 팝니다
							  </label>							  
							</div>	
						</div>
				    </div>
				    <div class="tab-pane" id="tab12">
				    	<div class="form-group">
				    		<h4>거래할 위치 등록하기</h4>
				    		<br>
				    		<input type="hidden" id="reg_lat" value="" style="border: none;">
				    		<input type="hidden" id="reg_lng" value="" style="border: none;">
				    		<input id="latlng" type="text" value="" style="display:none;">
				    		<button class="btn btn-default" onclick="markerDrop();">위치 정하기</button>
				    		<br><br>
				    		<textarea id="reg_add" rows="4" cols="40" value="" style="border: none;"></textarea>
				    	</div>
				    </div>
					<div class="tab-pane" id="tab13">
						<div class="form-group">
							<h4>사진 등록하기</h4>
							<br>
							<input  class="form-control" type="file" multiple="multiple" id="exampleInputFile">						
				   		</div>
				    </div>
					<div class="tab-pane" id="tab14">
						<div class="form-group">
							<h4>카테고리 등록하기</h4>
							<br>
							<select id="category1" class="form-control" onchange="itemChange(this.form);" ></select>
							<select id="category2" class="form-control"></select>											 
					    </div>
					</div>    
				    <div class="tab-pane" id="tab15">
						<div class="form-group">
							<h4>상세내용 입력하기</h4>
							<br>	
							<input id="item_name" type="text" class="form-control input-normal" placeholder="물품명을 입력하세요" >								       
					        <div class="input-group">
					        	<span class="input-group-addon">￦</span><input type="text" class="form-control" placeholder="희망가격 입력" >
				     	 	</div>	
				     	 	<br>	
				     	 	<textarea class="form-control" rows="10" cols="80" placeholder="상세내용을 입력하세요"></textarea>
				     	 	<br>				      				
							<button class="btn btn-default" data-toggle="modal" href="#previewModal" onclick="return false">
							미리보기
							</button>
							<input type="submit" class="btn btn-primary" value="등록하기" >
							
						
							<!-- preview modal -->
							<div class="modal fade" id="previewModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							        <h4 class="modal-title">제품명<font color="red"> [가격]</font></h4>
							       
							      </div>
							      <div class="modal-body">
							        <div id="imgslider_container">
          		
									  <!-- main slider carousel -->
									  <div class="row-fluid">
									    <div class="span12" id="slider">
									      <div class="row-fluid">
									        <div class="span8" id="carousel-bounding-box">
									          <div id="myCarousel" class="carousel slide">
									            
									            <!-- main slider carousel items -->
									            <div class="carousel-inner">
									              <div class="active item" data-slide-number="0">
									                <img src="http://placehold.it/640x480&amp;text=one">
									              </div>
									              <div class="item" data-slide-number="1">
									                <img src="http://placehold.it/640x480&amp;text=two">
									              </div>
									              <div class="item" data-slide-number="2">
									                <img src="http://placehold.it/640x480&amp;text=three">
									              </div>
									              <div class="item" data-slide-number="3">
									                <img src="http://placehold.it/640x480&amp;text=four">
									              </div>
									               
									            </div>
									            
									            <!-- main slider carousel nav controls -->
									            <a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
									            <a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
									          </div>
									        </div>
									        
									       
									      </div>
									      
									    </div>
									  </div> <!--/main slider carousel-->
									</div><!-- end of image slider -->
									<br>
									<p>상세 내용</p>
									
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							       	<input type="submit" class="btn btn-primary" value="등록하기" >
							      </div>
							    </div><!-- /.modal-content -->
							  </div><!-- /.modal-dialog -->
							</div><!-- /.modal -->
												 
					    </div>
					</div>   
					<ul class="pager wizard">
						<li class="previous first" style="display:none;"><a href="#" onclick="return false">First</a></li>
						<li class="previous"><a href="#" onclick="return false">Previous</a></li>
						<li class="next last" style="display:none;"><a href="#" onclick="return false">Last</a></li>
					  	<li class="next"><a href="#" onclick="return false">Next</a></li>
					</ul> 
				</div>	
				</form>
			</div>
		</div><!-- end of tap2   -->

		<div class="tab-pane" id="tab3">
			<p>또또 안녕</p>
		</div><!-- end of tap3   -->
	</div>
	
	<div id="map_canvas" style="width:71%; height:100%;">
	
	</div>
	<script type="text/javascript">
	//이메일칸에 입력전에 submit 버튼 활성화/비활성화
	document.signinform.commit.disabled = true; 
	document.onkeyup = process;
	document.onmouseup = process;
	document.onmousedown = process;
	
	//알고리즘 개선하였음.
	function process() {
		if (document.signinform.email.value == '' 
			||document.signinform.password.value == '') {   
			document.signinform.commit.disabled = true;
		} 
		else if(document.signinform.password.value != ''
				&&document.signinform.password.value.length >=8 ){	
			document.signinform.commit.disabled = false; 
		}
	}
	</script>

<footer></footer>		
</body>
</html>