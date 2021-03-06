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
	<link href="/resources/css/prettify.css" rel="stylesheet">
	<!-- Slider css -->
	<!--
	<link rel="stylesheet" type="text/css" href="css/default.css" />
	<link rel="stylesheet" type="text/css" href="css/component.css" />
	  -->	
	<style>
.navbar {
	/* background-image: url("/resources/imgs/bg6.png");
			 */
	background-color: #5DCD9D;
	border-style: none;
	font-size: 15px;
	font-familiy: 'Nanum Gothic';
	/* z-index: 2000; */
	margin: 0;
}

#brand_img {
	margin-left: 10px;
}

#start,#signin,#signin_on {
	padding-top: 18px;
	color: white;
	background: none;
}

/* 페이지에 따라 알아서 색깔 바뀌게 수정해야함  */
#deal,#deal:hover {
	background-color: #33A876;
	padding-top: 18px;
	color: white;
	height: 53px;
}

#start:hover,#signin:hover,#signin_on:hover {
	color: gray;
	background: none;
}

#search {
	margin-top: 10px;
}

body {
	background-image: url("/resources/imgs/bg6.png");
}

.dropdown-menu {
	padding: 15px;
	padding-bottom: 15px;
	top: 54px;
	left: -180px;
	margin-right: 20px;
	border-color: #BCBCBC;
}

#dropdown_on {
	padding-right: 0px;
	padding-left: 0px;
	padding-top: 15px;
	padding-bottom: 15px;
	margin: 0;
	text-align: right;
}

#signin_submit {
	clear: left;
	width: 100%;
	height: 32px;
	font-size: 13px;
}

#signin_submit.btn {
	background-color: #00A1DA;
	border: none;
	margin-bottom: 5px;
}

#signup {
	margin-left: 160px;
	text-decoration: none;
}

#signup:hover {
	color: gray;
}

#dropdown_on>li>a {
	color: blue;
	background: none;
}

#dropdown_on>li>a:hover {
	color: gray;
	background: none;
}

/* itemMapView css  */
html {
	height: 100%
}

body {
	height: 100%;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

#map_canvas {
	float: left;
	margin-top: 53px;
	/* border-left: 1px solid #BCBCBC;
	border-top: 1px solid #BCBCBC; */
}

/* 상품등록 css  */
#sellbtn {
	width: 100px;
}

#buybtn {
	width: 100px;
}

#popover-content {
	margin-left: 200px;
	width: 600px;
	height: 400px;
}

#item_name {
	margin-bottom: 10px;
}

#category1 {
	margin-bottom: 10px;
}

.labels {
	color: red;
	background-color: white;
	font-family: "Lucida Grande", "Arial", sans-serif;
	font-size: 10px;
	font-weight: bold;
	text-align: center;
	width: 40px;
	border: 2px solid black;
	white-space: nowrap;
}


/* slider bar css */
/* 텔 */
#menu1 {
	transition: all 0.3s ease;
	position: fixed;
	width: 0%;
	top: 0;
	margin-top:53px;
	left: -200px;
	background: #FFFFFF;
	height: 100%;
	z-index: 1100;
	border:1px solid #BCBCBC;
	padding-top: 20px;
	padding-left: 10px;
	padding-right: 10px;
}

#menu-toggle1 {
	position: fixed;
	top: 200px;
	left: 0;
	background: #5DCD9D;
	z-index: 1000;	
	padding-left: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 10px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: all 0.3s ease;
}


/* 새로운 시도 시작 */
#menu-toggle1 span{
	
	/* Container properties */
	
	width:0;
	left:90px;
	top:0px;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding:0;
	position:absolute;
	overflow:hidden;

	/* Text properties */
	font-familiy: 'Nanum Gothic';
	font-size:18px;
	font-weight:bold;
	letter-spacing:0.6px;
	white-space:nowrap;
	line-height:90px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
}
/* span 보여주게 하는 코드 */
#menu-toggle1 a:hover span{ 
	background-color:rgb(255, 228, 0);
	color:rgb(3, 0, 102);
	/* text-shadow:1px 1px 0 #99bf31;
	 */
	width:auto;
	padding:0 20px;
	overflow:visible; 
	}


 #menu-toggle1 a:hover{
	text-decoration:none;
	
	/* CSS outer glow with the box-shadow property */
	-moz-box-shadow:0 0 5px #9ddff5;
	-webkit-box-shadow:0 0 5px #9ddff5;
	box-shadow:0 0 5px #9ddff5;
}



/* 새로운 시도 끝 */

#menu-toggle1:hover {
	background: rgb(255, 228, 0);
	cursor: pointer;
}

#menu1.open {
	margin-top:53px;
	left: 0;
	width: 300px;
	display: block;
}

#menu-toggle1.open {
	left: 300px;
}


/* Menu2 */
#menu2 {
	transition: all 0.3s ease;
	position: fixed;
	width: 0%;
	top: 0;
	margin-top:53px;
	left: -300px;
	background: #ffffff;
	height: 100%;
	z-index: 1030;
	text-align: center;
	border: 1px solid #BCBCBC;
	padding-top: 20px;
	padding-left: 10px;
	padding-right: 10px;
}

#menu-toggle2 {
	position: fixed;
	top: 300px;
	left: 0;
	background: #5DCD9D;
	z-index: 1000;
	padding-left: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 10px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: all 0.3s ease;
}

/* 새로운 시도 시작 */
#menu-toggle2 span{
	
	/* Container properties */
	
	width:0;
	left:90px;
	top:0px;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding:0;
	position:absolute;
	overflow:hidden;

	/* Text properties */
	font-familiy: 'Nanum Gothic';
	font-size:18px;
	font-weight:bold;
	letter-spacing:0.6px;
	white-space:nowrap;
	line-height:90px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
}
/* span 보여주게 하는 코드 */
#menu-toggle2 a:hover span{ 
	background-color:rgb(255, 228, 0);
	color:rgb(3, 0, 102);
/* 	text-shadow:1px 1px 0 #99bf31; */
	width:auto;
	padding:0 20px;
	overflow:visible; }

 
#menu-toggle2 a:hover{
	text-decoration:none;
	
	/* CSS outer glow with the box-shadow property */
	-moz-box-shadow:0 0 5px #9ddff5;
	-webkit-box-shadow:0 0 5px #9ddff5;
	box-shadow:0 0 5px #9ddff5;
}



/* 새로운 시도 끝 */

#menu-toggle2:hover {
	background: rgb(255, 228, 0);
	cursor: pointer;
}

#menu2.open {
	margin-top:53px;
	left: 0;
	width: 300px;
	display: block;
}

#menu-toggle2.open {
	left: 300px;
}


/* Menu3 */
#menu3 {
	transition: all 0.3s ease;
	position: fixed;
	margin-top:53px;
	width: 0%;
	top: 0;
	left: -200px;
	background: #FFFFFF;
	height: 100%;
	z-index: 1100;
	border:1px solid #BCBCBC;
	padding-top: 20px;
	padding-left: 10px;
	padding-right: 10px;
}

#menu-toggle3 {
	position: fixed;
	top: 400px;
	left: 0;
	background: #5DCD9D;
	z-index: 1000;
	padding-left: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 10px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: all 0.3s ease;
}

/* 새로운 시도 시작 */
#menu-toggle3 span{
	
	/* Container properties */
	
	width:0;
	left:90px;
	top:0px;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding:0;
	position:absolute;
	overflow:hidden;

	/* Text properties */
	font-familiy: 'Nanum Gothic';
	font-size:18px;
	font-weight:bold;
	letter-spacing:0.6px;
	white-space:nowrap;
	line-height:90px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
}
/* span 보여주게 하는 코드 */
#menu-toggle3 a:hover span{ 
	background-color:rgb(255, 228, 0);
	color:rgb(3, 0, 102);
	/* text-shadow:1px 1px 0 #99bf31; */
	width:auto;
	padding:0 20px;
	overflow:visible; }


#menu-toggle3 a:hover{
	text-decoration:none;
	
	/* CSS outer glow with the box-shadow property */
	-moz-box-shadow:0 0 5px #9ddff5;
	-webkit-box-shadow:0 0 5px #9ddff5;
	box-shadow:0 0 5px #9ddff5;
}



/* 새로운 시도 끝 */

#menu-toggle3:hover {
	background: rgb(255, 228, 0);
	cursor: pointer;
}

#menu3.open {
	margin-top:53px;
	left: 0;
	width: 300px;
	display: block;
}

#menu-toggle3.open {
	left: 300px;
}

#preview_modal{
	text-align: center;
}

#tab11,#tab12,#tab13,#tab14,#tab15{
	height:410px;
}

</style>



<!-- highlight_styles -->
<!--
<link rel="stylesheet" type="text/css" href="highlight_styles.css" />
 -->
 
 	
	<!--
				
				
				
				
				
	---------------------------------------------------------------------
								S T A R T!      
			
			
				Mr.JaeYoung 코드 시작 지점, 종료지점까지 수정하시면 안됩니다!
	
	
								S T A R T!
	---------------------------------------------------------------------
	
	
	
	
	
	-->	
	
	
	
	<!-- ----------------------------------------------------------------------->
	

	
	<!-- jquery + UI + CSS google CDN -->
	
	<!--panel용 lib -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	
	
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	
	
	<!-- GoogleMap API Key -->
	<script
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAX-hWL7tXxRZd2GtUjDME2jf-9qNoiRsE&sensor=false&language=ko">
	</script>

	<!-- jquery UI google CDN -->
	<link rel="stylesheet"
	href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />
	<script
	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

	<!--
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 	 -->
	
	<!--
	<script src="resources/js_custom/markerclusterer_packed.js"></script>
	<script src="resources/js_custom/markerclusterer.js"></script>
	 --> 
	<script src="resources/js_custom/markerwithlabel.js"></script>
	
	<!--panel lib -->
	<!--
	<script src="resources/js_custom/jquery.slidePanel.min.js"></script>
	 -->
	<!-- 
	<link rel="stylesheet" href="/resources/demos/style.css">
	  -->
	 
	<!-- slider -->
	<!--
	<script src="resources/js_custom/modernizr.custom.js"></script>
	 -->
	

	
	<!-- 
	<script src="resources/js_custom/markerclusterer_packed.js"></script>
	<script src="resources/js_custom/markerclusterer.js"></script>
	-->
	<script src="resources/js_custom/markerwithlabel.js"></script>
	<!--
	<link rel="stylesheet" href="/resources/demos/style.css">
	-->
	
	<!--slider bar script -->
	<!--
	<script src="resources/js_custom/script.js"></script> 
	 -->
	<script src="resources/js_custom/slider_script.js"></script> 
	 
	<script src="/resources/js/jquery.bootstrap.wizard.js"></script>
	<script src="/resources/js/prettify.js"></script>
	
	<!-- jquery.bootstrap.wizard 화면구성 스크립트 코드 -->
	<script>
	$(document).ready(function() {
	  	$('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
			var $total = navigation.find('li').length;
			var $current = index+1;
			var $percent = ($current/$total) * 100;
			$('#rootwizard').find('.progress-bar').css({width:$percent+'%'});
		}});	
	});	
	</script>
	
<script>


	//여기부터 clusterer
		//----------------------------------------------------------	
	    var script = '<script type="text/javascript" src="resources/js_custom/markerclusterer';
	    if (document.location.search.indexOf('compiled') !== -1) {
	      script += '_compiled';
	    }
	    script += '.js"><' + '/script>';
	    document.write(script);
</script>
<script async>
	     var styles = [[{
	       url: 'resources/imgs/markerclusterer/people35.png',
	       height: 35,
	       width: 35,
	       anchor: [16, 0],
	       textColor: '#ff00ff',
	       textSize: 10
	     }, {
	       url: 'resources/imgs/markerclusterer/people45.png',
	       height: 45,
	       width: 45,
	       anchor: [24, 0],
	       textColor: '#ff0000',
	       textSize: 11
	     }, {
	       url: 'resources/imgs/markerclusterer/people55.png',
	       height: 55,
	       width: 55,
	       anchor: [32, 0],
	       textColor: '#ffffff',
	       textSize: 12
	     }], [{
	       url: 'resources/imgs/markerclusterer/conv30.png',
	       height: 27,
	       width: 30,
	       anchor: [3, 0],
	       textColor: '#ff00ff',
	       textSize: 10
	     }, {
	       url: 'resources/imgs/markerclusterer/conv40.png',
	       height: 36,
	       width: 40,
	       anchor: [6, 0],
	       textColor: '#ff0000',
	       textSize: 11
	     }, {
	       url: 'resources/imgs/markerclusterer/conv50.png',
	       width: 50,
	       height: 45,
	       anchor: [8, 0],
	       textSize: 12
	     }], [{
	       url: 'resources/imgs/markerclusterer/heart30.png',
	       height: 26,
	       width: 30,
	       anchor: [4, 0],
	       textColor: '#ff00ff',
	       textSize: 10
	     }, {
	       url: 'resources/imgs/markerclusterer/heart40.png',
	       height: 35,
	       width: 40,
	       anchor: [8, 0],
	       textColor: '#ff0000',
	       textSize: 11
	     }, {
	       url: 'resources/imgs/markerclusterer/heart50.png',
	       width: 50,
	       height: 44,
	       anchor: [12, 0],
	       textSize: 12
	     }]];
	     
		 //-----------------------
	     //맵 스타일 - Bright & Bubbly
	     var styles = [ 
	               ]
	     //-----------------------
	     // var zoom = parseInt(document.getElementById('zoom').value, 10);
	     //var size = parseInt(document.getElementById('size').value, 10);
	     //var style = parseInt(document.getElementById('style').value, 10);
	     var zoom = null ;
	     var size = null ;
	     var style = null;
	     //여기까지 clusterer
		 //----------------------------------------------------------
		 
	
	//---------------------------------------
/* 	var test="${test}";
	console.log(test); */
	//HTML5 Geolocation을 이용한 ip trace
	/**/
	var sellImage = 'resources/imgs/icons/ssh2.png';
	var buyImage = 'resources/imgs/icons/bsh2.png';
	var dealImage = 'resources/imgs/icons/dsh.png';
	var geoImage = 'resources/imgs/icons/people.png';
	
	var map;
	var markers = [];
	
	
	//var itemList=${itemList};
	
	//statCode 1=sell, 2=buy, 3=deal
	<c:forEach var="itemList" items="${itemList}">
		<c:set var="i" value="${ i+1 }" />	
			markers.push(
					new google.maps.Marker({
					//new MarkerWithLabel({
						position : new google.maps.LatLng(${itemList.gridX1} , ${itemList.gridY1} ),
						map : map,
						icon:
							<c:if test="${itemList.stateCode=='1'}">
								buyImage
							</c:if>
							<c:if test="${itemList.stateCode=='2'}">
								sellImage
							</c:if>
							<c:if test="${itemList.stateCode=='3'}">
								dealImage
							</c:if>
								,
						title : '${itemList.itemName}',
						content : '${itemList.itemNo}'
						//	labelContent: '$425K',
						//	labelAnchor: new google.maps.Point(22, 0),
						//    labelClass: "labels", // the CSS class for the label
						
						/*
						content : '<div id="content">'+
								'<h1 id="head" class="head">${itemList.itemName}</h1>'+
								 '<div id="bodyContent">'+
								 <c:if test="${itemList.itemPicturePath1!=null}">
								 '<img src = "resources/itempictures/${itemList.itemPicturePath1}"></img><br>'+
								 </c:if>
								 '${itemList.itemInfo}'+
								 '</div>'+
								'</div >'
						*/
					
						//labelContent : '${itemList.itemInfo}'
						})
			);
		</c:forEach>
	
		/*
		markers.push(
				new google.maps.Marker({
				position : new google.maps.LatLng(37.500848, 127.053065),
				map : map,
				icon: buyImage,
				title : 'epic',
				
				content :  '<div id="dialog" title="Basic dialog">'+
							'몰아치는 한숨'+
							'</div>'
				})
			);
		*/

		function initialize() {
			//geocoder 좌표->주소 변환 사용
			geocoder = new google.maps.Geocoder();
			var mapOptions = {
				zoom : 7,
				center : new google.maps.LatLng(35.710787, 127.969980),
				disableDefaultUI : true,
				styles: styles
			}
			map = new google.maps.Map(document.getElementById("map_canvas"),mapOptions);
			
			// Try HTML5 geolocation
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var pos = new google.maps.LatLng(position.coords.latitude,
							position.coords.longitude);
					
					new google.maps.Marker({
						position : new google.maps.LatLng(position.coords.latitude,
								position.coords.longitude),
						map : map,
						icon: geoImage					
						});
					
					map.setCenter(pos);
					map.setZoom(13);
				}, function() {
					handleNoGeolocation(true);
				});
			} else {
				// Browser doesn't support Geolocation
				handleNoGeolocation(false);
			}

			markerInitialize(map);
			markerClusterer = new MarkerClusterer(map, markers, {
		          //maxZoom: zoom,
		          gridSize: size
		          //styles: styles[style]
		        });
			
			  google.maps.event.addListener(map, 'click', function(e) {
		            placeMarker(e.latLng, map);

		          });
		}
		
		 var markerDropCheck;
		 var markerDropEffect;
		 var marker;
		// 마커찍기 
			function placeMarker(position, map) {
			  if(markerDropEffect=="active" && markerDropCheck!=1){
				  marker = new google.maps.Marker({
					position: position,
					map: map,
					/* draggable:true, */
					animation: google.maps.Animation.DROP
				  });
				  map.panTo(position);
				  var lat=marker.getPosition().lat();
				  var lng=marker.getPosition().lng();
					console.log(lat,lng);
					document.getElementById("reg_lat").value=lat;
					document.getElementById("reg_lng").value=lng;
					document.getElementById("latlng").value=lat+","+lng;
				markerDropEffect="false";
				markerDropCheck=1;
	            codeLatLng();
			  }
			}

			function markerDrop(){
				markerDropEffect="active";
			}
			
			
			//마커지우기(위치 재설정)
			function clearMarkers() {
		    	marker.setOptions({
		    		map:null,
		    		visible:false
		    		
		    	});
		    	marker=null;
		    	markerDropEffect="active";
		    	markerDropCheck="0";
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
						
		function markerInitialize(map) {
		  for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(map);   
			//console.log(markers[i].content); 
			markerAddListener(markers[i], i);
		  }
		}
		// Sets the map on all markers in the array.
		function markerAddListener(marker, i) {
		/* 
		  var infowindow = new google.maps.InfoWindow({
			content: marker.content	
		  });
		 */
		  //console.log("marker.content_"+marker.content);
		 //var dialogName="#item"+marker.content;
		  google.maps.event.addListener(marker, 'click', function() {
			  //infowindow.open(marker.get('map'), marker);	
			  //console.log("뭐지?");
		  		//alert("휴..");
		  		
		  		//아래는 예제
		  		//$("#dialog2").dialog( "open" ); 
		   		$("#item"+marker.content).dialog( "open" );
		  		
		  });
		  
		  
		 
		  
		  //아래는 실행가능한 코드
		  /*
		  $(function() {
			    $( "#dialog2" ).dialog({
				  autoOpen: false,
			      show: {
			        effect: "blind",
			        duration: 1000
			      },
			      hide: {
			        effect: "explode",
			        duration: 1000
			      }
			    });
			});
		  */
		  
		  /*
		  google.maps.event.addListener(marker, 'click', function() {
		    infowindow.open(marker.get('map'), marker);
		  });
		  */
		  //infowindow.open(marker.get('map'), marker);
		}
		<c:forEach var="itemList" items="${itemList}">
			<c:set var="i" value="${ i+1 }" />	
				$(function() {
				    $( "#item${itemList.itemNo}" ).dialog({
				      maxHeight:700,
				      maxWidth: 1000,
				      minHeight: 700,
				      minWidth: 1000,
					  autoOpen: false,
					  draggable : false,
					  modal : true ,
					  resizable : true,
					  closeText : "닫기버튼입니다.",
					  buttons : {
						  "문의하기": function() {  window.location = 'http://www.stackoverflow.com'; },
						   "닫기": function() { $(this).dialog("close"); },
					  }, 
				      position : { my: "center", at: "center", of: window },
				      show: {
				        effect: "blind",
				        duration: 400
				      },
				      hide: {
				        effect: "explode",
				        duration: 300
				      }
				}).prev(".ui-dialog-titlebar").css("background","#87cefa");

				
				
			});
		</c:forEach>
			
		
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
		
		
		google.maps.event.addDomListener(window, 'load', initialize);
					
	</script>
	<!--
		
		
		
		
				
	---------------------------------------------------------------------
								 THE END !      
			
			
							Mr.JaeYoung 코드 종료 지점
	
	
								 THE END ! 
	---------------------------------------------------------------------
	
	
	
	
	
	-->	
	
	
	
	
	
	
	
	
	
	
	
	
	<!--
	
	
	
	
				
	---------------------------------------------------------------------
								S T A R T!      
			
			
				Mr.MinSeok 코드 시작 지점, 종료지점까지 수정하시면 안됩니다!
	
	
								S T A R T!
	---------------------------------------------------------------------
	
	
	
	
	
	-->	

	<script>
	//로그인 메뉴 
	$(function() {
	  // Setup drop down menu
	  $('.dropdown-toggle').dropdown();
	 
	  // Fix input element click problem
	  $('.dropdown input, .dropdown label').click(function(e) {
	    e.stopPropagation();
	  });
	});

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
	
	</script>
	
	<!--
		
		
		
		
				
	---------------------------------------------------------------------
								 THE END !      
			
			
							Mr.MinSeok 코드 종료 지점
	
	
								 THE END ! 
	---------------------------------------------------------------------
	
	
	
	
	
	-->	
	
</head>
<!-- 
	onLoad=initialize 쓰지마세요. 직접 dom객체에 추가했어요.
 	onload에 추가하면 2번 되서 성능 저하됩니다~~~~~~ 
 -->
<body class="cbp-spmenu-push" data-twttr-rendered="true" onload="init(this.form);">
<!----------------------------------------------------------- -->




<!----------------------------------------------------------- -->
	
	<header>
		<%@include file="header.jsp"%>
	</header>
	
	<div id="menu-toggle1">
		<a>
		<img src="resources/imgs/slider/search.png" width=70 height=70 alt="Menu1"></img>
		<span>상품검색</span>
		</a>		
		<!-- 
		<img src="resources/imgs/slider/menu.png" width=50 height=50 alt="Menu"></img>
		-->
	</div>
		<nav id="menu1">
			<!-- <div class="tab-pane" id="tab1">
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
		</div>end of tap1   -->
	<div>
		<form action="">
			<input type="text" class="form-control" placeholder="Search">		    
		    <br>
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
	</div>
	</nav>
	
	<div id="menu-toggle2">
		<a>
		<img src="resources/imgs/slider/Cloud_Add.png" width=70 height=70 alt="Menu2"></img>
		<span>물건 팔기/사기</span>
		</a>		
		<!-- 
		<img src="resources/imgs/slider/menu.png" width=50 height=50 alt="Menu"></img>
		-->
	</div>
		<!-- 텔 -->
		<nav id="menu2">
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
				    		<button id="loca_btn" class="btn btn-default" onclick="markerDrop(); return false;"><span>위치 정하기</span></button>
				    		<button class="btn btn-default" onclick="clearMarkers(); return false;">다시 정하기</button>
				    		<br><br>
				    		<textarea readonly="readonly" id="reg_add" rows="4" cols="40" value="" style="border: none; resize:none;"></textarea>
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
							<button class="btn btn-default" data-toggle="modal" href="#preview_modal" onclick="return false">
							미리보기
							</button>
							<input type="submit" class="btn btn-primary" value="등록하기" >
							
						
						
					    </div>
					</div>
					<div id="pager_wizard">   
						<ul class="pager wizard">
							<li class="previous first" style="display:none;"><a href="#" onclick="return false">First</a></li>
							<li class="previous"><a href="#" onclick="return false">Previous</a></li>
							<li class="next last" style="display:none;"><a href="#" onclick="return false">Last</a></li>
						  	<li class="next"><a href="#" onclick="return false">Next</a></li>
						</ul> 
					</div>
				</div>	
				</form>
			</div>
		</div><!-- end of tap2   -->
		</nav>	
	<div id="menu-toggle3">
		<a>
		<img src="resources/imgs/slider/Handshake-icon.png" width=70 height=70 alt="Menu3"></img>
		<span>거래현황</span>
		</a>		
		<!-- 
		<img src="resources/imgs/slider/menu.png" width=50 height=50 alt="Menu"></img>
		-->
	</div>
		<nav id="menu3">
			<div class="tab-pane" id="tab3">
				<p>또또 안녕</p>
			</div><!-- end of tap3   -->
		</nav>	
	
	<div id="map_canvas" style="width:100%; height:100%;">
		
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

<footer>
<!-- preview modal -->
	<div class="modal fade" id="preview_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
	<!-- footer부분에 modal용 div넣습니다. 레이아웃과 상관없으니 삭제하지 마세요 -->
		
		
		
		<c:forEach var="itemList" items="${itemList}">
		<c:set var="i" value="${ i+1 }" />	
			<div id="item${itemList.itemNo}" title="${itemList.itemName}">
				
				<div id="bodyContent">
				 	<div align="center">
						<c:if test="${itemList.itemPicturePath1!=null}">
							<img style="width: 700px; height:auto;", src = "resources/itempictures/${itemList.itemPicturePath1}"></img><br>
						</c:if>
					</div>
				 <!-- -->
					${itemList.itemInfo}
				</div>
			</div>
		</c:forEach>
		
		
		<div id="dialog2" class="dialog2" title="Basic dialog">
			<p>what the?</p>
		</div>
			
												 
		<!-- footer부분에 modal용 div넣습니다. 레이아웃과 상관없으니 삭제하지 마세요 -->
</footer>	
	
</body>
</html>