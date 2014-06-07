<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<!------------------------------------------------------------>	
	<!------------------------------------------------------------>	
	<!------------------------------------------------------------>		
	<!------------------------------------------------------------>	
	<!--                          경계선                                               -->
	<!------------------------------------------------------------>	
	<!------------------------------------------------------------>	
	<!------------------------------------------------------------>	 
	<!------------------------------------------------------------>	
<script
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAX-hWL7tXxRZd2GtUjDME2jf-9qNoiRsE&sensor=false&language=ko">
	</script>

<script src="http://code.jquery.com/jquery.min.js"></script>
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
<!-- 
	<link rel="stylesheet" href="/resources/demos/style.css">
	 -->
	 
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
<script>
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
	var test="${test}";
	console.log(test);
	//HTML5 Geolocation을 이용한 ip trace
	/**/
	var sellImage = 'resources/imgs/icons/ssh2.png';
	var buyImage = 'resources/imgs/icons/bsh2.png';
	var dealImage = 'resources/imgs/icons/dsh.png';
	var geoImage = 'resources/imgs/icons/p33.png';
	
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
						//	labelContent: '$425K',
						//	labelAnchor: new google.maps.Point(22, 0),
						//    labelClass: "labels", // the CSS class for the label
						
						content : '<div id="content">'+
								'<h1 id="head" class="head">${itemList.itemName}</h1>'+
								 '<div id="bodyContent">'+
								 <c:if test="${itemList.itemPicturePath1!=null}">
								 '<img src = "resources/itempictures/${itemList.itemPicturePath1}"></img><br>'+
								 </c:if>
								 '${itemList.itemInfo}'+
								 '</div>'+
								'</div >'
						/*
						content :  '<div id="dialog" title="Basic dialog">'+
									'몰아치는 한숨'+
						 			'</div>'
						 			
						 content :  '<div id="${itemList.itemNo}" title="Basic dialog">'+
									'몰아치는 한숨'+
						 			'</div>'
						 			*/
						//labelContent : '${itemList.itemInfo}'
						})
			);
		</c:forEach>
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
		

		function initialize() {

			// map = new google.maps.Map(document.getElementById('map-canvas'),
			//     mapOptions);
			var mapOptions = {
				zoom : 12,
				center : new google.maps.LatLng(-33, 151),
				disableDefaultUI : true,
				styles: styles
			}
			map = new google.maps.Map(document.getElementById("map_canvas"),
					mapOptions);
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
						icon: geoImage					
						});
					
					map.setCenter(pos);
					map.setZoom(12);
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
		}
		

		function markerInitialize(map) {
		  for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(map);   
			//console.log(markers[i].content); 
			markerAddListener(markers[i], i);
		  }
		  /*
		  $('#dialog').on('shown', function () {
			  google.maps.event.trigger(map, 'resize');
			})
			*/
		}
		// Sets the map on all markers in the array.
		function markerAddListener(marker, i) {
			/* 
		  var infowindow = new google.maps.InfoWindow({
		    content: marker.content
		  });
		  */
		  google.maps.event.addListener(marker, 'click', function() {
			  //infowindow.open(marker.get('map'), marker);	
			  //console.log("뭐지?");
		  		alert("휴..");
		  		//$("#dialog").parent().appendTo($("#bd"));
		  		$("#dialog2").dialog( "open" ); 	
		  });
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
		  /*
		  google.maps.event.addListener(marker, 'click', function() {
		    infowindow.open(marker.get('map'), marker);
		  });
		  */
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
					
		google.maps.event.addDomListener(window, 'load', initialize);
					
	</script>
	<!------------------------------------------------------------>	
	<!------------------------------------------------------------>	
	<!------------------------------------------------------------>		
	<!------------------------------------------------------------>	
	<!--                          경계선                                               -->
	<!------------------------------------------------------------>	
	<!------------------------------------------------------------>	
	<!------------------------------------------------------------>	 
	<!------------------------------------------------------------>	
</head>
<body id="map">
	<div id="dialog2" class="dialog2" title="Basic dialog">
		<p>what the?</p>
	</div>
	<div id="map_canvas"></div>
</body>
</html>