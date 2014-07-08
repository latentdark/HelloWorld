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
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />
<link rel="Stylesheet" href="/resources/css/bootstrap.min.css" />

<style>

/* itemMapView css  */
html {
	height: 100%
}



body {
    font-family: 'Nanum Gothic';
	height: 100%;
	margin: 0;
	padding: 0;
	/* overflow: hidden; */
}

#map_canvas {
	float: left;
	/* margin-top: 53px; */
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

/* slider bar css */
/* 텔 */
#menu1 {
	transition: all 0.3s ease;
	position: fixed;
	width: 0%;
	top: 0;
	margin-top: 53px;
	left: -200px;
	background: #FFFFFF;
	height: calc(100% - 106px);
	z-index: 1030;
	border: 1px solid #BCBCBC;
	padding-top: 20px;
	padding-left: 10px;
	padding-right: 10px;
	padding-bottom: 20px;
	text-align: center;
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
#menu-toggle1 span {
	/* Container properties */
	width: 0;
	left: 90px;
	top: 0px;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding: 0;
	position: absolute;
	overflow: hidden;
	/* Text properties */
	font-size: 18px;
	font-weight: bold;
	letter-spacing: 0.6px;
	white-space: nowrap;
	line-height: 90px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}
/* span 보여주게 하는 코드 */
#menu-toggle1 a:hover span {
	background-color: rgb(255, 228, 0);
	color: rgb(3, 0, 102);
	/* text-shadow:1px 1px 0 #99bf31;
	 */
	width: auto;
	padding: 0 20px;
	overflow: visible;
}

/* CSS outer glow with the box-shadow property */
/*
 #menu-toggle1 a:hover{
	text-decoration:none;
	
	
	-moz-box-shadow:0 0 5px #9ddff5;
	-webkit-box-shadow:0 0 5px #9ddff5;
	box-shadow:0 0 5px #9ddff5;
}
*/

/* 새로운 시도 끝 */
#menu-toggle1:hover {
	background: rgb(255, 228, 0);
	cursor: pointer;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
}

#menu1.open {
	margin-top: 53px;
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
	margin-top: 53px;
	left: -300px;
	background: #ffffff;
	height: 540px;
	z-index: 1030;
	text-align: center;
	border: 1px solid #BCBCBC;
	padding-top: 20px;
	padding-left: 10px;
	padding-right: 10px;
	padding-bottom: 20px;
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
#menu-toggle2 span {
	/* Container properties */
	width: 0;
	left: 90px;
	top: 0px;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding: 0;
	position: absolute;
	overflow: hidden;
	/* Text properties */
	font-size: 18px;
	font-weight: bold;
	letter-spacing: 0.6px;
	white-space: nowrap;
	line-height: 90px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}

/* span 보여주게 하는 코드 */
#menu-toggle2 a:hover span {
	background-color: rgb(255, 228, 0);
	color: rgb(3, 0, 102);
	/* 	text-shadow:1px 1px 0 #99bf31; */
	width: auto;
	padding: 0 20px;
	overflow: visible;
}

/* CSS outer glow with the box-shadow property */
/*
#menu-toggle2 a:hover{
	text-decoration:none;
	
	
	-moz-box-shadow:0 0 5px #9ddff5;
	-webkit-box-shadow:0 0 5px #9ddff5;
	box-shadow:0 0 5px #9ddff5;
}
*/

/* 새로운 시도 끝 */
#menu-toggle2:hover {
	background: rgb(255, 228, 0);
	cursor: pointer;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
}

#menu2.open {
	margin-top: 53px;
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
	margin-top: 53px;
	width: 0%;
	top: 0;
	left: -300px;
	background: #FFFFFF;
	/* height: calc(100% - 106px); */
	height:540px;
	z-index: 1030;
	border: 1px solid #BCBCBC;
	padding-top: 20px;
	padding-left: 10px;
	padding-right: 10px;
	padding-bottom: 20px;
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
#menu-toggle3 span {
	/* Container properties */
	width: 0;
	left: 90px;
	top: 0px;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding: 0;
	position: absolute;
	overflow: hidden;
	/* Text properties */
	font-size: 18px;
	font-weight: bold;
	letter-spacing: 0.6px;
	white-space: nowrap;
	line-height: 90px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}
/* span 보여주게 하는 코드 */
#menu-toggle3 a:hover span {
	background-color: rgb(255, 228, 0);
	color: rgb(3, 0, 102);
	/* text-shadow:1px 1px 0 #99bf31; */
	width: auto;
	padding: 0 20px;
	overflow: visible;
}

/* CSS outer glow with the box-shadow property */
/*
#menu-toggle3 a:hover{
	text-decoration:none;
	
	
	-moz-box-shadow:0 0 5px #9ddff5;
	-webkit-box-shadow:0 0 5px #9ddff5;
	box-shadow:0 0 5px #9ddff5;
}
*/

/* 새로운 시도 끝 */
#menu-toggle3:hover {
	background: rgb(255, 228, 0);
	cursor: pointer;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
}

#menu3.open {
	margin-top: 53px;
	left: 0;
	width: 300px;
	display: block;
}

#menu-toggle3.open {
	left: 300px;
}

#preview_modal {
	text-align: center;
}

#tab11,#tab12,#tab13,#tab14,#tab15 {
	height: 410px;
}

/* menu3 내부 css */
.list-group.panel>.list-group-item {
	border-bottom-right-radius: 4px;
	border-bottom-left-radius: 4px
}

.list-group-submenu {
	margin-left: 20px;
}

#injection-modal {
	background-color: white;
	border-top-right-radius: 4px;
	border-top-left-radius: 4px;
	border-bottom-right-radius: 4px;
	border-bottom-left-radius: 4px;
	text-align: center;
}

#search_result {
	height: calc(100% - 150px);
	/* 	overflow-y:scroll; */
}

div.mousescroll {
	overflow: hidden;
}

div.mousescroll:hover {
	overflow-y: scroll;
}

/* 새로운 시도 시작 */
#t3 span {
	/* Container properties */
	width: 0;
	left: absolute;
	top: absolute;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding: 0;
	position: absolute;
	overflow: hidden;
	/* Text properties */
	font-size: 12px;
	font-weight: bold;
	letter-spacing: 0.6px;
	white-space: nowrap;
	line-height: 20px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}

/* span 보여주게 하는 코드 */
/*
#t3 a:hover span {
	background-color: rgb(255, 228, 0);
	color: rgb(3, 0, 102);
*/
	/* text-shadow:1px 1px 0 #99bf31; */
/*	 
	width: auto;
	padding: 0 20px;
*/
	/*padding:0 20px;*/
/*
	overflow: visible;
}
*/

#t3 a:hover {
/* 	background: rgb(255, 228, 0);*/
	color:#8F22F3;
	font-weight: bold;
 	cursor: pointer;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
	text-decoration: none;
/* 	-moz-box-shadow: 0 0 5px #9ddff5;
	-webkit-box-shadow: 0 0 5px #9ddff5;
	box-shadow: 0 0 5px #9ddff5; */

	/* CSS outer glow with the box-shadow property */
}

/*
#menu-toggle2-injection start
로그인 비활성화시 기존 toggle overview
*/
#menu-toggle2-mirror {
	position: fixed;
	top: 300px;
	left: 0;
	background: #5DCD9D;
	z-index: 1010;
	padding-left: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 10px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: all 0.3s ease;
}

#menu-toggle2-mirror span {
	/* Container properties */
	width: 0;
	left: 90px;
	top: 0px;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding: 0;
	position: absolute;
	overflow: hidden;
	/* Text properties */
	font-size: 18px;
	font-weight: bold;
	letter-spacing: 0.6px;
	white-space: nowrap;
	line-height: 45px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}

/* span 보여주게 하는 코드 */
#menu-toggle2-mirror a:hover span {
	background-color: #BDBDBD;
	color: #515151;
	/* 	text-shadow:1px 1px 0 #99bf31; */
	width: auto;
	padding: 0 20px;
	overflow: visible;
}

#menu-toggle2-mirror:hover {
	background: #BDBDBD;
	cursor: pointer;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
}

/*#menu-toggle2-injection end*/

/*
#menu-toggle3-injection start
로그인 비활성화시 기존 toggle overview
*/
#menu-toggle3-mirror {
	position: fixed;
	top: 400px;
	left: 0;
	background: #5DCD9D;
	z-index: 1010;
	padding-left: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 10px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: all 0.3s ease;
}

#menu-toggle3-mirror span {
	/* Container properties */
	width: 0;
	left: 90px;
	top: 0px;
	/*
	옆에서 얼마나 떨어졌나 지정
	left:70px;
	*/
	padding: 0;
	position: absolute;
	overflow: hidden;
	/* Text properties */
	font-size: 18px;
	font-weight: bold;
	letter-spacing: 0.6px;
	white-space: nowrap;
	line-height: 45px;
	/* 하이라이터 높이 지정 line-height:39px;*/
	/* CSS3 Transition: */
	-webkit-transition: 0.25s;
	/* Future proofing (these do not work yet): */
	-moz-transition: 0.25s;
	transition: 0.25s;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}

/* span 보여주게 하는 코드 */
#menu-toggle3-mirror a:hover span {
	background-color: #BDBDBD;
	color: #515151;
	/* 	text-shadow:1px 1px 0 #99bf31; */
	width: auto;
	padding: 0 20px;
	overflow: visible;
}

#menu-toggle3-mirror:hover {
	background: #BDBDBD;
	cursor: pointer;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
}

/*#menu-toggle2-injection end*/

#addWish_disable {
	
}

#addWish_disable a:hover {
	background: rgb(255, 228, 0);
	cursor: pointer;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
	text-decoration: none;
	-moz-box-shadow: 0 0 5px #9ddff5;
	-webkit-box-shadow: 0 0 5px #9ddff5;
	box-shadow: 0 0 5px #9ddff5;

	/* CSS outer glow with the box-shadow property */
}

.modal-footer {
	margin-top: 0px;
}

/*덧글에 덧글  */
.reReply {
	margin-left: 20px;
}



</style>

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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>


<script src="http://code.jquery.com/jquery.min.js"></script>

<!-- GoogleMap API Key -->
<script
	src="http://maps.googleapis.com/maps/api/js?sensor=false&language=ko">
	</script>
	
	<!-- 
	<script
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAX-hWL7tXxRZd2GtUjDME2jf-9qNoiRsE&sensor=false&language=ko">
	</script>
	 -->

<!-- jquery UI google CDN -->
<link rel="stylesheet"
	href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />
<script
	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

<!--
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 	 -->

<script src="resources/js_custom/markerclusterer.js"></script>
<script src="resources/js_custom/markerclusterer_packed.js"></script>
<script src="resources/js_custom/markerclustererPlus.js"></script>
<script src="resources/js_custom/markerwithlabel.js"></script>

<script src="resources/js_custom/jquery.session.js"></script>
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
	<link rel="stylesheet" href="/resources/demos/style.css">
	-->

<!--slider bar script -->
<!--
	<script src="resources/js_custom/script.js"></script> 
	 -->
<script src="resources/js_custom/slider_script.js"></script>

<script src="/resources/js/jquery.bootstrap.wizard.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>


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

	var sellImage = 'resources/imgs/icons/s3.png';
	var buyImage = 'resources/imgs/icons/b3.png';
	var dealImage = 'resources/imgs/icons/deal2.png';
	var geoImage = 'resources/imgs/icons/people.png';
	
	var map;
	var markers = [];
	var firstMapLoad="true";
    var markerClusterer;
	var cluster;
	var pos;	
	var myPosition={
			k:null,
			A:null			
	};
	var itemList; 
	
	<%-- initData() refreshData() Start--%>
	function initData(){
		console.log("initData()__Inn");
		
		$.ajax({
			type:"POST",
			url:"/itemList"	
		}).done(function(res){
			console.log("res.length__"+res.length);
			//console.log("itemList.length_"+itemList.length);
			itemList=res;
			console.log("itemList.length_"+itemList.length);
			markersInit(); //marker[]에 itemList push
			markerInitialize(map); //map객체에 marekr onload
			
			markerClusterer = new MarkerClusterer(map, markers, {
		          maxZoom: 14,
		          gridSize: size,
		          ignoreHidden:true
		          //styles: styles[style]
		        });
		    //cluster=new Cluster(markerClusterer);
		    
			console.log("성공");
		}).fail(function(res){
			console.log(res);
			console.log("실패");
		});
		

	}
	function refreshData(async_option){
		console.log("refreshData()__Inn");
		var async_choice=(async_option==false)?false:true;
		console.log("async_option__"+async_option);
		$.ajax({
			async : async_choice,
			type:"POST",
			url:"/itemList"	
		}).done(function(res){
			console.log("res.length__"+res.length);
			//console.log("itemList.length_"+itemList.length);
			itemList=res;
			console.log("itemList.length_"+itemList.length);
			
			
			markersInit(); //marker[]에 itemList push
			markerInitialize(map); //map객체에 marekr onload
			console.log("markersInit() after");
			markerClusterer.clearMarkers();
			
			markerClusterer = new MarkerClusterer(map, markers, {
		          maxZoom: 14,
		          gridSize: size,
		          ignoreHidden:true
		          //styles: styles[style]
		        });
		    //cluster=new Cluster(markerClusterer);
			
			console.log("성공");
		}).fail(function(res){
			console.log(res);
			console.log("실패");
		});
		

	}<%-- initData() refreshData() End--%>

	var itemNo;
	function removeItem(){
		$.ajax({
			async : true,
			type:"POST",
			url:"/removeItem",
			data:{
				ItemNo:itemNo
			}
		}).done(function(res){
			console.log(res);
			refreshData();
			//var combine="'#item"+markerNo+"'";
			
			$('#deletepopup').modal('hide');
			$('#item'+markerNo).modal('hide');
			//$('#deletepopup').modal.close();
			//$('#item'+markerNo).modal.close();
			
			console.log("removeItem() Debug");
			alert('삭제되었습니다.');
			console.log("removeItem() Debug");
			
			return false;
			console.log("성공");
		}).fail(function(res){
			console.log(res);
			console.log("실패");
		});
		
	}
	
	function addItem(){
		var stateCode;
		if(document.getElementById('buybtn').checked){
			stateCode=1;
		}
		if(document.getElementById('buybtn').checked){
			stateCode=2;
		}
		$.ajax({
			type:"POST",
			url:"/addItem",
			data:{
				stateCode		:stateCode,
				gridX1			:document.getElementById("reg_lat").value,
				gridY1			:document.getElementById("reg_lng").value,
				itemPicturePath1:document.getElementById("itemPicturePath1").value,
				itemPicturePath2:document.getElementById("itemPicturePath2").value,
				itemPicturePath3:document.getElementById("itemPicturePath3").value,
				category1:document.getElementById("category1").value,
				category2:document.getElementById("category2").value,
				item_name:document.getElementById("item_name").value,
				price:document.getElementById("price").value,
				itemInfo:document.getElementById("itemInfo").value
			}
		}).done(function(res){
			console.log(res);
			refreshData();
			console.log("성공");
			alert("아이템이 정상적으로 등록되었습니다. ^^");
			return true;
		}).fail(function(res){
			console.log(res);
			console.log("실패");
		});
		
	}
	
	
		<%-- initialize Start --%>
		function initialize() {
			console.log("initialize() Inn");
			//geocoder 좌표->주소 변환 사용
			geocoder = new google.maps.Geocoder();
			var mapOptions = {
				zoom : 7,
				center : new google.maps.LatLng(35.710787, 127.969980),
				disableDefaultUI : true,
				styles: styles
			}
			//map = null;
			map = new google.maps.Map(document.getElementById("map_canvas"),mapOptions);
			
			// Try HTML5 geolocation
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {

					if(firstMapLoad=="true"){
						pos = new google.maps.LatLng(position.coords.latitude,
								position.coords.longitude);
					}else{
						pos=center;
					}
					
					<%-- 임시 --%>
					//myPosition.A=Math.round(pos.A*1000000)/1000000;
					//myPosition.k=Math.round(pos.k*1000000)/1000000;
					myPosition.A=Math.round(pos.lng()*1000000)/1000000;
					myPosition.k=Math.round(pos.lat()*1000000)/1000000;
					
					//lat()
					//lng()
					
					/*
					console.log("pos__++__++"+pos);
					console.log("pos__++__++"+pos.A);
					console.log("pos__++__++"+pos.a);
					console.log("pos__++__++"+pos.k);
					console.log("myPosition Debug____");
					console.log(myPosition.A);
					console.log(myPosition.k);
					console.log("myPosition Debug____");
					*/
					
					new google.maps.Marker({
						position : new google.maps.LatLng(position.coords.latitude,
								position.coords.longitude),
						map : map,
						icon: geoImage,
						
						});
					
					map.setCenter(pos);
					if(firstMapLoad=="true"){
						map.setZoom(13);
						firstMapLoad="false";
					}else{
						map.setZoom(zoomLevel);
						/* console.log(zoomLevel); */
					}
				}, function() {
					handleNoGeolocation(true);
				});
			} else {
				// Browser doesn't support Geolocation
				handleNoGeolocation(false);
			}
			/*
			console.log("markersInit() before");
			markersInit(); //marker[]에 itemList push
			markerInitialize(map); //map객체에 marekr onload
			console.log("markersInit() after");
			//markerClusterer = new MarkerClusterer(map, markers, {
			markerClusterer = new MarkerClusterer(map, markers, {
		          maxZoom: 14,
		          gridSize: size,
		          ignoreHidden:true
		          //styles: styles[style]
		        });
			//cluster=new Cluster(MarkerClusterer);
			//cluster.setIgnoreHidden(true);
			*/
			
			//물품등록시 사용할 이벤트, 위치정하기 버튼 누르기 전에 비활성화.
		   google.maps.event.addListener(map, 'click', function(e) {
	            placeMarker(e.latLng, map);
	       });			
		}<%-- initialize End --%>
	
		<%-- placeMarker Start --%>
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
				document.getElementById("reg_lat").value=lat;
				document.getElementById("reg_lng").value=lng;
				document.getElementById("latlng").value=lat+","+lng;
			markerDropEffect="false";
			markerDropCheck=1;
            codeLatLng();
            map.panTo(gridXY);
		  }
		}<%-- placeMarker End --%>
		
		<%-- markerDrop Start --%>
		function markerDrop(){
			markerDropEffect="active";
			$('#re-markerdrop').removeClass('disabled');
			$('#loca_btn').addClass('disabled');
		}<%-- markerDrop End --%>
			
			

		<%-- clearMarkers Start --%>
		//마커지우기(위치 재설정)
		function clearMarkers() {
	    	marker.setOptions({
	    		map:null,
	    		visible:false
	    		
	    	});
	    	marker=null;
	    	markerDropEffect="active";
	    	markerDropCheck="0";
	    	$('#re-markerdrop').addClass('disabled');
			$('#loca_btn').removeClass('disabled');
		}<%-- clearMarkers end --%>
			

		<%-- codeLatLng Start --%>
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
		}<%-- codeLatLng end --%>
		
			
		
		<%-- itemSearch Start --%>
		var searchKeyword;
		var zoomLevel;
		var center;
		var markersSearchResult=[];
		var searchOption;	
		
		function itemSearch(from){
			zoomLevel=map.getZoom();
			center=map.getCenter();
			
			markersSearchResult=[];
			searchKeyword=null;
			searchOption=null;
			
			if(from=="Quick"){
				searchKeyword=document.getElementById("searchKeywordQuick").value;
			}else{
				searchKeyword=document.getElementById("searchKeywordDetail").value;
			}
			
			/* console.log(searchKeyword); */
			
			if(searchKeyword!=null){
				searchKeyword=searchKeyword.trim().toUpperCase();
			}
			
			markerClusterer.clearMarkers();
			
			if(from=="Quick"){
				for(var i=0;i<markers.length;i++){
					if(markers[i].itemName.toUpperCase().match(searchKeyword)!=null){
						markerClusterer.addMarker(markers[i]);
					}
				}
			}else{
		
				/* console.log("from__debug___"+from); */
				switch(from){
					case 'all': 
						searchOption="all";
						break;
					case 'buy':
						searchOption="buy";
						break;
					case 'sell':
						searchOption="sell";
						break;
					default:
						if(document.getElementById('searchOption1').checked){
							searchOption = document.getElementById("searchOption1").value;
							console.log("searchOption1 debug_"+searchOption);
							/* console.log("('searchOption1').checked"); */
							break;
						}
						if(document.getElementById('searchOption2').checked){
							searchOption = document.getElementById("searchOption2").value;
							console.log("searchOption2 debug_"+searchOption);
							/* console.log("('searchOption2').checked"); */
							break;
						}
						if(document.getElementById('searchOption3').checked){
							searchOption = document.getElementById("searchOption3").value;
							console.log("searchOption3 debug_"+searchOption);
							/* console.log("('searchOption3').checked"); */
							break;
						}
				}
				
				/**/
				
				/* console.log(searchOption); */
				
				if(searchOption=="all"){
					for(var i=0;i<markers.length;i++){
						//console.log(markers[i].title.toUpperCase().match(searchKeyword));
						if(markers[i].itemName.toUpperCase().match(searchKeyword)!=null){
							markerClusterer.addMarker(markers[i]);
							var temp=markers[i];
							temp.identity='fake';
							//markersSearchResult.push(markers[i]);
							markersSearchResult.push(temp);
						}
					}
				}
				if(searchOption=="buy"){
					for(var i=0;i<markers.length;i++){
						if(markers[i].stateCode==1){
							if(markers[i].itemName.toUpperCase().match(searchKeyword)!=null){
								markerClusterer.addMarker(markers[i]);
								var temp=markers[i];
								temp.identity='fake';
								//markersSearchResult.push(markers[i]);
								markersSearchResult.push(temp);
							}
						}
					}
				}
				if(searchOption=="sell"){
					for(var i=0;i<markers.length;i++){
						if(markers[i].stateCode==2){
							if(markers[i].itemName.toUpperCase().match(searchKeyword)!=null){
								markerClusterer.addMarker(markers[i]);
								var temp=markers[i];
								temp.identity='fake';
								//markersSearchResult.push(markers[i]);
								markersSearchResult.push(temp);	
							}
						}
					}
				}
				
				if(document.getElementById('optionsRadios1').checked){
					console.log("markersSortingDistance run");
					markersSortingDistance();
				}
				if(document.getElementById('optionsRadios2').checked){
					console.log("markersSortingPrice();");
					markersSortingPrice();
				}
								
				
			}
			markerClusterer.repaint();
			return false;
		}<%-- itemSearch End --%>
		
		<%-- markersInit() --%>
		function markersInit(){
			console.log("markersInit()_Inn");
			markers=[];
			//statCode 1=sell, 2=buy, 3=deal
			//console.log(itemList);
			console.log("markersInit()__itemList.length__"+itemList.length);
			for(var i=0;i<itemList.length;i++){
				
				var markerImage;
				//console.log("itemList[i].stateCode_"+itemList[i].stateCode);
				switch(itemList[i].stateCode){
					case 1:
						markerImage=buyImage;
						//console.log("buyImage");
						break;
					case 2:
						markerImage=sellImage;
						//console.log("sellImage");
						break;
					case 3:
						markerImage=dealImage;
						//console.log("dealImage");
						break;
				}
				markers.push(
							new google.maps.Marker({
		
								position : new google.maps.LatLng(itemList[i].gridX1 , itemList[i].gridY1 ),
								map : map,
								icon: markerImage,
								stateCode : itemList[i].stateCode,
								//title : itemList[i].itemName,
								itemName : itemList[i].itemName,
								userNo : itemList[i].userNo,
								itemNo : itemList[i].itemNo,
								itemInfo : itemList[i].itemInfo,
								itemPicturePath1 : itemList[i].itemPicturePath1,
								itemPicturePath2 : itemList[i].itemPicturePath2,
								itemPicturePath3 : itemList[i].itemPicturePath3,
								category1: itemList[i].category1,
								category2: itemList[i].category2,
								gridX1: itemList[i].gridX1,
								gridY1: itemList[i].gridY1,
								regiDate : itemList[i].regiDate,
								distance:null,
								distance_m:null,								
								price : itemList[i].price,
								identity : null
								})
						);
					
			}
		}<%-- markersInit() end --%>
		<%-- 
		function markersInit(){
			//markers=[];
			//statCode 1=sell, 2=buy, 3=deal
			<c:forEach var="itemList" items="${itemList}">
				<c:set var="i" value="${ i+1 }" />	
				var str="${itemList.itemName}";
				
				//console.log(str.match(searchKeyword));
				
				if(searchKeyword!=null){
					searchKeyword=searchKeyword.trim().toUpperCase();
				}
				
				if(str.toUpperCase().match(searchKeyword)!=null){
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
								stateCode : '${itemList.stateCode}',
								title : '${itemList.itemName}',
								userNo : '${itemList.userNo}',
								itemNo : '${itemList.itemNo}',
								itemInfo : '${itemList.itemInfo}',
								itemPicturePath1 : '${itemList.itemPicturePath1}',
								itemPicturePath2 : '${itemList.itemPicturePath2}',
								itemPicturePath3 : '${itemList.itemPicturePath3}',
								//content : '${itemList.itemNo}',
								distance:null,
								distance_m:null,								
								price : '${itemList.price}'
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
					}
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
			
			
			/* console.log("markers.length__"+markers.length);
			console.log("markers[0]__"+markers[0]);
			console.log("markers[0]__"+markers[0].price);
			console.log("markers[0].position__"+markers[0].position);
			console.log("markers[0].position__"+markers[0].position.A);
			console.log("markers[0].position__"+markers[0].position.k); */
		}
		--%>						
		
		<%-- markerInitialize Start --%>
		function markerInitialize(map) {
		  console.log("markerInitialize(map) Inn");
		  for (var i = 0; i < markers.length; i++) {
			//console.log(markers[i]);
			markers[i].setMap(map);   
			//console.log(markers[i].content); 
			markerAddListener(markers[i], i);
		  }
		}<%-- markerInitialize end --%>
	
		<%-- markerAddListener Start--%>
		var bounds = new google.maps.LatLngBounds();
		
		
		function markerAddListener(marker, i) {
		 //console.log("markerAddListener() Inn");
			//왜
		 var content=
			 "<div id=\"infowindow\">"+

			 		"<font color=\"red\">"+"[ "+marker.price+" ]</font> "+
			 		marker.itemName+

			 "</div>";
			 var infowindow = new google.maps.InfoWindow({
				content: content	
		 });
		  
		  /*  */
		  //console.log("marker.content_"+marker.content);
		 //var dialogName="#item"+marker.content;
		 google.maps.event.addListener(marker, 'mouseover', function() {
			 //alert("mouseover");
			 infowindow.open(marker.get('map'), marker);
			 countComment(marker);
			 findComment(marker);
		  });
		 
		 google.maps.event.addListener(marker, 'mouseout', function() {	
			 // infowindow.open(marker.get('map'), marker);
			  infowindow.close();
		  });
		 
		 google.maps.event.addListener(marker, 'click', function() {
				//var count=countComment(marker.itemNo);
				 modalInjection(marker,countCommentResult);
		  });
		  
		}
			
		<%-- searchListMarkerFocus Start --%>
		var infowindow;
		var position;
		var flightPath;
		var polyline = [] ;
		var mapCenter;
		function searchListMarkerFocusIn(marker){
			var content=
				 "<div id=\"infowindow\">"+

				 		"<font color=\"red\">"+"[ "+marker.price+" ]</font> "+
				 		marker.itemName+

				 "</div>";
			infowindow = new google.maps.InfoWindow({
					content: content	
			 });
			console.log("markerFocus__INN");
			//var markerBounds = new google.maps.LatLngBounds();
			
			//이건 줌이 너무 많이 땡겨져.
			//map.setBounds(marker.position);
			
			//it`s too fast.
			//map.setCenter(marker.position); 
			
			// start coordinates
			var start = [ 
			      new google.maps.LatLng(marker.position.lat(), marker.position.lng()), 
			      new google.maps.LatLng(marker.position.lat(), marker.position.lng()),
			      new google.maps.LatLng(marker.position.lat(), marker.position.lng()),
			      new google.maps.LatLng(marker.position.lat(), marker.position.lng())
			      ];

			// end coordinates
			var end = [
		          new google.maps.LatLng(marker.position.lat()-1, marker.position.lng()), 
			      new google.maps.LatLng(marker.position.lat()+1, marker.position.lng()),
			      new google.maps.LatLng(marker.position.lat(), marker.position.lng()-1),
			      new google.maps.LatLng(marker.position.lat(), marker.position.lng()+1)
			      ];
			for (var i=0; i < end.length; i++){
			      calcRoute(start[i], end [i]);
			}
			
		
			function calcRoute(source,destination){
				polyline.push(
					new google.maps.Polyline({
				     path: [source,destination],
				     //strokeColor: '#FF0000',
				     strokeColor: '#1650F0',
				     strokeWeight: 5,
				     strokeOpacity: 0.5
			 		})
				);
				  //polyline.setMap(map);
			}
			
			for(var i=0;i<polyline.length;i++){
				polyline[i].setMap(map);
			}
			

			mapCenter=map.getCenter();
			map.panTo(marker.position);
			//map.panToBounds(marker.position);
			/*
			position=map.getCenter();
			var result = [marker.position.k, marker.position.A];
			transition(result);
			*/
			
			//infowindow.setZIndex(3000);
			infowindow.setPosition(marker.position);
			if(marker.identity=='fake'){
				infowindow.open(marker.map);
			}else{
				infowindow.open(marker.get('map'), marker);
			}
			//infowindow.open(marker.get('map'), marker);
		}
		function searchListMarkerFocusOut(marker){
			console.log("markerFocus__Out");
			for(var i=0;i<polyline.length;i++){
				polyline[i].setMap(null);
			}
			polyline = [];
			//flightPath.setMap(null);
			
			//map.panToBounds(pos);
			
			
			//markerClusterer.getMarkers().close();
			//markerClusterer.infowindow.close();
			infowindow.close();
			console.log("infowindow_Debug__"+infowindow);
			infowindow=null;
			console.log("infowindow_Debug__"+infowindow);
			moveCheck=mapCenter;
			setTimeout(function(){positionReturn()},1000*2);			
		}
		
		var moveCheck;
		function positionReturn(){
			if(moveCheck==mapCenter){
				map.panTo(mapCenter);
			}
		}
		<%-- searchListMarkerFocus End --%>
		
		
		
		
		<%-- Marker Smooth Move Start--%>
		var numDeltas = 100;
		var delay = 10; //milliseconds
		var i = 0;
		var deltaLat;
		var deltaLng;
		function transition(result){
		    i = 0;
		    deltaLat = (result[0] - position[0])/numDeltas;
		    deltaLng = (result[1] - position[1])/numDeltas;
		    moveMarker();
		}

		function moveMarker(){
		    position[0] += deltaLat;
		    position[1] += deltaLng;
		    var latlng = new google.maps.LatLng(position[0], position[1]);
		    map.setCenter(latlng);
		    //marker.setPosition(latlng);
		    if(i!=numDeltas){
		        i++;
		        setTimeout(moveMarker, delay);
		    }
		}
		<%-- Marker Smooth Move Start--%>
		<%-- 
		 google.maps.event.addListener(map, 'zoom_changed', function() {
			        zoomChangeBoundsListener = google.maps.event.addListener(map, 'bounds_changed', function(event) {
			            if (this.getZoom() > 10) // Change max/min zoom here
			                this.setZoom(13);

			            google.maps.event.removeListener(zoomChangeBoundsListener);
			        });
				});
		
		--%>

		
		<%-- markerAddListener end--%>
		
		<%-- handleNoGeolocation Start --%>
		function handleNoGeolocation(errorFlag) {
			if (errorFlag) {
				//var content = 'Error: The Geolocation service failed.';
				var content = 'Error: 상단에 팝업된 위치액세스를 허용해 주십시오.';
			} else {
				//var content = 'Error: Your browser doesn\'t support geolocation.';
				var content = 'Error: 당신의 브라우저가 위치액세스를 지원하지않습니다.\n Chrome 브라우저를 권장합니다.';
			}

			var options = {
				map : map,
				zoom : 7,
				position : new google.maps.LatLng(35.710787, 127.969980),
				content : content
			};

			var infowindow = new google.maps.InfoWindow(options);
			map.setCenter(options.position);
		}<%-- handleNoGeolocation end --%>
		
		// Add a marker to the map and push to the array.
		<%-- addMarker Start --%>
		function addMarker(location) {
			var marker = new google.maps.Marker({
				position : location,
				map : map
			});
			markers.push(marker);
		}<%-- addMarker end --%>
		
		
		
		<%-- markersSorting Distance Start --%>
		function markersSortingDistance(){
			//console.log("pos___"+pos);
			//console.log("pos.A___"+Math.round(pos.A*1000000)/1000000);
			//console.log("pos.k___"+Math.round(pos.k*1000000)/1000000);
		
			/* console.log("markersSortingDistance In__"); */
			if(markersSearchResult.length==1){
				markersSearchResult[0].distance_m=
					Math.round(getDistanceFromLatLonInKm(myPosition.k, myPosition.A,
							//markersSearchResult[0].position.k, markersSearchResult[0].position.A)*10000)/10000;
							markersSearchResult[0].position.lat(), markersSearchResult[0].position.lng())*10000)/10000;
			}
			
			markersSearchResult.sort(function(a, b){
			
				//var a_A	=	Math.abs(Math.round(myPosition.A-a.position.A*1000000)/1000000);
				//var a_k	=	Math.abs(Math.round(myPosition.k-a.position.k*1000000)/1000000);
				//var a_distance=Math.pow(a_A, a_A) + Math.pow(a_k, a_k);
				//a.distance=Math.sqrt(a_distance);
				a.distance_m=
					Math.round(getDistanceFromLatLonInKm(myPosition.k, myPosition.A,
							 					//a.position.k, a.position.A)*10000)/10000;
												a.position.lat(), a.position.lng())*10000)/10000;
				
				/*
				console.log("distance_m___DEBUG__"+myPosition.k);
				console.log("distance_m___DEBUG__"+myPosition.A);
				console.log("distance_m___DEBUG__"+a.position.k);
				console.log("distance_m___DEBUG__"+a.position.A);
				console.log("distance_m___DEBUG__"+a.distance_m);
				*/
				//var b_A	=	Math.abs(Math.round(myPosition.A-b.position.A*1000000)/1000000);
				//var b_k	=	Math.abs(Math.round(myPosition.k-b.position.k*1000000)/1000000);
				//var b_distance=Math.pow(b_A, b_A) + Math.pow(b_k, b_k);
				//b.distance=Math.sqrt(b_distance);
				b.distance_m=
					Math.round(getDistanceFromLatLonInKm(myPosition.k, myPosition.A,
											// b.position.k, b.position.A)*10000)/10000;
											b.position.lat(), b.position.lng())*10000)/10000;
				//console.log(b_A);
				return a.distance_m-b.distance_m
				});
			
			searchResultInjection();
		}<%-- markersSorting Distance End --%>
		

		<%-- ‘Haversine’ formula Start--%>
		function getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2) {
			  var R = 6371; // Radius of the earth in km
			  var dLat = deg2rad(lat2-lat1);  // deg2rad below
			  var dLon = deg2rad(lon2-lon1); 
			  var a = 
			    Math.sin(dLat/2) * Math.sin(dLat/2) +
			    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
			    Math.sin(dLon/2) * Math.sin(dLon/2)
			    ; 
			  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
			  var d = R * c; // Distance in km
			  return d;
			}
		function deg2rad(deg) {
		  return deg * (Math.PI/180)
		}
		<%-- ‘Haversine’ formula End--%>
		
		
		
		<%-- markersSorting Price Start--%>
		function markersSortingPrice(){
			/* console.log("markersSorting Price In"); */
			if(markersSearchResult.length==1){
				markersSearchResult[0].distance_m=
					Math.round(getDistanceFromLatLonInKm(myPosition.k, myPosition.A,
							//markersSearchResult[0].position.k, markersSearchResult[0].position.A)*10000)/10000;
							markersSearchResult[0].position.lat(), markersSearchResult[0].position.lng())*10000)/10000;
			}
			
			markersSearchResult.sort(function(a, b){
				/* console.log("markersSearchResult.sort.Price call"); */
				//var a_A	=	Math.abs(Math.round(myPosition.A-a.position.A*1000000)/1000000);
				//var a_k	=	Math.abs(Math.round(myPosition.k-a.position.k*1000000)/1000000);
				//var a_distance=Math.pow(a_A, a_A) + Math.pow(a_k, a_k);
				//a.distance=Math.sqrt(a_distance);
				a.distance_m=
					Math.round(getDistanceFromLatLonInKm(myPosition.k, myPosition.A,
							 					//a.position.k, a.position.A)*10000)/10000;
												a.position.lat(), a.position.lng())*10000)/10000;
				
				return a.price-b.price
				});
			//sorting check용 for문, 사용시 주석처리해야함.
			/*
			for(var i=0;i<markersSearchResult.length;i++){
				console.log("markersSearchResult__"+i+"price__"+markersSearchResult[i].price);
			}
			*/
			searchResultInjection();
		}<%--  markersSorting Price End --%>

		
		<%-- searchResultInjection Start --%>
		var searchResultInjectionHtml;
		function searchResultInjection(){
			//sorting check용 for문, 사용시 주석처리해야함.
			searchResultInjectionHtml=null;
			console.log("markersSearchResult.length__"+markersSearchResult.length);
			if(markersSearchResult.length>0){
				if(markersSearchResult[0].distance_m < 1.0){
					markersSearchResult[0].distance_m=Math.round(markersSearchResult[0].distance_m*100)/100+"(m)";
				}else{
					markersSearchResult[0].distance_m=Math.round(markersSearchResult[0].distance_m *10)/10+"(km)";
				}
				searchResultInjectionHtml=
					"<tr>"+
						"<td id=\"t1\" >" + markersSearchResult[0].distance_m + "</td>" +
						"<td id=\"t2\" >" + markersSearchResult[0].price/10000.0 + "</td>" +
						"<td id=\"t3\" ><a"+
						
						" onmouseover=\"searchListMarkerFocusIn(markersSearchResult["+0+"]);"+
									  " countComment(markersSearchResult["+0+"]);"+
									  " findComment(markersSearchResult["+0+"]);\""+
						" onmouseout=searchListMarkerFocusOut(markersSearchResult["+0+"])"+
						//" onmouseover=searchListMarkerFocusIn(markerclusterer["+0+"])"+
						//" onmouseout=searchListMarkerFocusOut(markerclusterer["+0+"])"+
						" onclick=\"modalInjection(markersSearchResult["+0+"],countCommentResult)\"> " +
						
						//"<td><a onclick=\"alert('test')\"> " + 
								markersSearchResult[0].itemName+ "<span>클릭하시면 상세정보를 볼수 있습니다.</span></a></td>" +
					"</tr>";
			}
			//searchResultInjectionHtml="<tbody>";
			if(markersSearchResult.length>1){
				for(var i=1;i<markersSearchResult.length;i++){
					
					
					if(markersSearchResult[i].distance_m < 1.0){
						markersSearchResult[i].distance_m=Math.round(markersSearchResult[i].distance_m*100)/100+"(m)";
					}else{
						markersSearchResult[i].distance_m=Math.round(markersSearchResult[i].distance_m *10)/10+"(km)";
					}	
					//console.log("markersSearchResult"+i+"distance_m"+markersSearchResult[i].distance_m);
					//뉴텔
					searchResultInjectionHtml+=
						"<tr>"+
							"<td id=\"t1\" >" + markersSearchResult[i].distance_m + "</td>" +
							"<td id=\"t2\" >" + markersSearchResult[i].price/10000.0 + "</td>" +
							"<td id=\"t3\" ><a"+
							" onmouseover=\"searchListMarkerFocusIn(markersSearchResult["+i+"]);"+
							 			  " countComment(markersSearchResult["+i+"]);"+
							  			  " findComment(markersSearchResult["+i+"]);\""+
							" onmouseout=searchListMarkerFocusOut(markersSearchResult["+i+"])"+
							//" onmouseover=searchListMarkerFocusIn(markerclusterer["+i+"])"+
							//" onmouseout=searchListMarkerFocusOut(markerclusterer["+i+"])"+
							" onclick=\"modalInjection(markersSearchResult["+i+"],countCommentResult)\"> " +
							//"<td><a onclick=\"alert('test')\"> " + 
									markersSearchResult[i].itemName+ "<span>클릭하시면 상세정보를 볼수 있습니다.</span></a></td>" +
						"</tr>";
				}
			}
			//searchResultInjectionHtml+="</tbody>";
			document.getElementById("searchResultInjectionSector").innerHTML =searchResultInjectionHtml;
			
		
		}<%-- searchResultInjection End --%>
		
		
		//ajax를 이용해서 injection방식으로 inner html로 쏴 줘야한다.
		//내가 등록한 물품
		//findMyItemList(Integer userNo)
		<!-- 고2 -->
		
		//거래 완료된 물품 
		//버튼을 판매완료/삭제 로 바꿔야함
		//findMyItemList(Integer userNo)
		var findMyItemListResult=[];
		function findMyItemList(msg){
			//console.log("${user}");
			//console.log("${user.userNo}");
			console.log("debug"+user.userNo);
			$.ajax({
				type:"POST",
				url:"/findMyItemList",
				//dataType : "json",
				data:{userNo:user.userNo}
			/*,
				success : function(result){
					console.log("result"+result);
					console.log("key"+key);
				}
			*/
			}).done(function(res){
				//console.log("msg_"+res);
				console.log("msg.length_"+res.length);
				findMyItemListResult=[];
				for(var i=0;i<res.length;i++){
					findMyItemListResult.push(new FakeMarker(res[i],FakeMap));
				}
				
				var content;
				
				content=
				"<div class=\"mousescroll\" style=\"height:400px;\">"+
				"<table class=\"table table-striped\" style=\"width:261px;\">"+
				"<thead>"+
					"<tr>"+
						"<th style=\"width:90px;\">등록일자</th>"+
						"<th style=\"width:80px;\">가격(만)</th>"+
						"<th style=\"width:100px; text-align: center;\">물품명</th>"+
					"</tr>"+
				"</thead>"+
					"<tbody>";
				/*
				for(var i=0;i<res.length;i++){
					console.log("i="+i+"_"+res[i].itemNo);
					content+=
					"<tr>"+
						"<td>"+res[i].regidate+"</td>"+
						"<td>"+res[i].price+"</td>"+
						"<td>"+res[i].itemName+"</td>"+
					"</tr>";
				}
				*/
				for(var i=0;i<findMyItemListResult.length;i++){
					//console.log("i="+i+"_"+findWishListResult[i].itemNo);
					content+=
						"<tr>"+
							"<td id=\"t1\" >" + (findMyItemListResult[i].regiDate+"").substring(2) + "</td>" +
							"<td id=\"t2\" >" + findMyItemListResult[i].price/10000.0 + "</td>" +
							"<td id=\"t3\" ><a"+
							" onmouseover=\"searchListMarkerFocusIn(findMyItemListResult["+i+"]);"+
							 			  " countComment(findMyItemListResult["+i+"]);"+
							  			  " findComment(findMyItemListResult["+i+"]);\""+
							" onmouseout=searchListMarkerFocusOut(findMyItemListResult["+i+"])"+
							" onclick=\"modalInjection(findMyItemListResult["+i+"],countCommentResult)\"> " +
							findMyItemListResult[i].itemName+ "<span>클릭하시면 상세정보를 볼수 있습니다.</span></a></td>" +
						"</tr>";

				}
				content+=
					"</tbody>"+
				"</table>"+
				"</div>";
				if(msg=="ing"){
					$('#MyItemList').html(content);
				}else{
					$('#MyItemList2').html(content);
				}
				console.log("성공");
			}).fail(function(msg){
				console.log(msg);
				console.log(msg.responsText);
				console.log("실패");
			});
			
		}
		
		var markerNo;
		function addWish(){
			//addWish_active
			//itemNo도 뽑아와야 하는데?
			$.ajax({
				type:"POST",
				url:"/addWish",
				data:{
					userNo:user.userNo,
					itemNo:markerNo
				}
			}).done(function(res){
				console.log("res"+res);
				console.log("ajax 정상응답");
				aleft("선택하신 상품이 찜 리스트에 추가되었습니다 ^^");
			}).fail(function(res){
				console.log(res);
				console.log("ajax error");
			});
		}
		
	
		//내가 찜한 물품
		//findWishList(Integer userNo)
		var findWishListResult=[];
		
		var FakeMap=map;
		function findWishList(async_option){
			var async_choice=(async_option==false)?false:true;
			console.log("async_choice 확인_"+async_choice);
			$.ajax({
				async : false,
				type:"POST",
				url:"/findWishList",
				data:{
					userNo:user.userNo
				}
			}).done(function(res){
				console.log("res"+res);
				var content;
				findWishListResult=[];
				//findWishListResult=res;
				for(var i=0;i<res.length;i++){
					findWishListResult.push(new FakeMarker(res[i],FakeMap));
				}
				content=
				"<div class=\"mousescroll\" style=\"height:400px;\">"+
				"<table class=\"table table-striped\" style=\"width:261px;\">"+
				"<thead>"+
					"<tr>"+
						"<th style=\"width:50px;\"></th>"+
						"<th style=\"width:45px;\">거리(km)</th>"+
						"<th style=\"width:45px;\">가격(만)</th>"+
						"<th style=\"width:120px; text-align: center; padding-bottom:15px;\">물품명</th>"+
					//	"<th style=\"width:80px;\">거리</th>"+
					//	"<th style=\"width:70px;\">가격(만)</th>"+
					//	"<th style=\"width:100px; text-align: center;\">물품명</th>"+
					"</tr>"+
				"</thead>"+
					"<tbody>";
				for(var i=0;i<findWishListResult.length;i++){
					console.log("i="+i+"_"+findWishListResult[i].itemNo);
					content+=
						/*
						"<tr>"+
							"<td>"+res[i].itemNo+"</td>"+
							"<td>"+res[i].price+"</td>"+
							"<td>"+res[i].itemName+"</td>"+
						"</tr>";	
						*/
						"<tr>"+
							"<td id=\"t0\" >" + "<a style=\"cursor:pointer\" onclick=\"removeWish("+findWishListResult[i].itemNo+")\">삭제</a>"+
												"</td>" +
							"<td id=\"t1\" >" +	findWishListResult[i].distance_m + "</td>" +
							"<td id=\"t2\" >" + findWishListResult[i].price/10000.0 + "</td>" +
							"<td id=\"t3\" ><a"+
							" onmouseover=\"searchListMarkerFocusIn(findWishListResult["+i+"]);"+
							 			  " countComment(findWishListResult["+i+"]);"+
							  			  " findComment(findWishListResult["+i+"]);\""+
							" onmouseout=searchListMarkerFocusOut(findWishListResult["+i+"])"+
							" onclick=\"modalInjection(findWishListResult["+i+"],countCommentResult)\"> " +
							findWishListResult[i].itemName+ "<span>클릭하시면 상세정보를 볼수 있습니다.</span></a></td>" +
						"</tr>";

				}
				content+=
					"</tbody>"+
				"</table>"+
				"</div>";
				$('#WishList').html(content);
				console.log("ajax 정상응답");
			}).fail(function(res){
				console.log(res);
				console.log("ajax error");
			});
		}
		//내가 문의한 물품
		//뭐가 될까나?
		
		
		
		google.maps.event.addDomListener(window, 'load', initialize);
		google.maps.event.addDomListener(window, 'load', initData);
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


	function init(f,c1){
		var f_sel = f.category1;
		var s_sel = f.category2;
	
		console.log(c1+"대분류 번호 들어옴?");
		f_sel.options[0] = new Option("대분류 선택", "default");
		s_sel.options[0] = new Option("소분류 선택", "default");

		for(var i =0; i<f_selbox.length; i++){		
			if(i==c1){
				f_sel.options[i+1] = new Option(f_selbox[i], i,true,true);
			}else{
				f_sel.options[i+1] = new Option(f_selbox[i], i);
			}
		}
	}

	function itemChange(f,c2){
		var f_sel = f.category1;
		var s_sel = f.category2;

		var sel = f_sel.selectedIndex;
		for(var i=s_sel.length; i>=0; i--){
			s_sel.options[i] = null;
		}
		console.log(c2+"소분류 번호 들어옴?");
		s_sel.options[0] = new Option("소분류 선택", "default");

		if(sel != 0){
			for(var i=0; i<s_selbox[sel-1].length; i++){
				if(c2==i){
					s_sel.options[i+1] = new Option(s_selbox[sel-1][i],i,true,true);				
				}
				else{
					s_sel.options[i+1] = new Option(s_selbox[sel-1][i],i);				
				}
			}
		}
	}
	
	(function($) {

	    jQuery.fn.extend({
	        slimScroll: function(o) {

	            var ops = o;
	            //do it for every element that matches selector
	            this.each(function(){

	            var isOverPanel, isOverBar, isDragg, queueHide, barHeight,
	                divS = '<div></div>',
	                minBarHeight = 30,
	                wheelStep = 30,
	                o = ops || {},
	                cwidth = o.width || 'auto',
	                cheight = o.height || '250px',
	                size = o.size || '7px',
	                color = o.color || '#000',
	                position = o.position || 'right',
	                opacity = o.opacity || .4,
	                alwaysVisible = o.alwaysVisible === true;
	            
	                //used in event handlers and for better minification
	                var me = $(this);

	                //wrap content
	                var wrapper = $(divS).css({
	                    position: 'relative',
	                    overflow: 'hidden',
	                    width: cwidth,
	                    height: cheight
	                }).attr({ 'class': 'slimScrollDiv' });

	                //update style for the div
	                me.css({
	                    overflow: 'hidden',
	                    width: cwidth,
	                    height: cheight
	                });

	                //create scrollbar rail
	                var rail  = $(divS).css({
	                    width: '15px',
	                    height: '100%',
	                    position: 'absolute',
	                    top: 0
	                });

	                //create scrollbar
	                var bar = $(divS).attr({ 
	                    'class': 'slimScrollBar ', 
	                    style: 'border-radius: ' + size 
	                    }).css({
	                        background: color,
	                        width: size,
	                        position: 'absolute',
	                        top: 0,
	                        opacity: opacity,
	                        display: alwaysVisible ? 'block' : 'none',
	                        BorderRadius: size,
	                        MozBorderRadius: size,
	                        WebkitBorderRadius: size,
	                        zIndex: 99
	                });

	                //set position
	                var posCss = (position == 'right') ? { right: '1px' } : { left: '1px' };
	                rail.css(posCss);
	                bar.css(posCss);

	                //wrap it
	                me.wrap(wrapper);

	                //append to parent div
	                me.parent().append(bar);
	                me.parent().append(rail);

	                //make it draggable
	                bar.draggable({ 
	                    axis: 'y', 
	                    containment: 'parent',
	                    start: function() { isDragg = true; },
	                    stop: function() { isDragg = false; hideBar(); },
	                    drag: function(e) 
	                    { 
	                        //scroll content
	                        scrollContent(0, $(this).position().top, false);
	                    }
	                });

	                //on rail over
	                rail.hover(function(){
	                    showBar();
	                }, function(){
	                    hideBar();
	                });

	                //on bar over
	                bar.hover(function(){
	                    isOverBar = true;
	                }, function(){
	                    isOverBar = false;
	                });

	                //show on parent mouseover
	                me.hover(function(){
	                    isOverPanel = true;
	                    showBar();
	                    hideBar();
	                }, function(){
	                    isOverPanel = false;
	                    hideBar();
	                });

	                var _onWheel = function(e)
	                {
	                    //use mouse wheel only when mouse is over
	                    if (!isOverPanel) { return; }

	                    var e = e || window.event;

	                    var delta = 0;
	                    if (e.wheelDelta) { delta = -e.wheelDelta/120; }
	                    if (e.detail) { delta = e.detail / 3; }

	                    //scroll content
	                    scrollContent(0, delta, true);

	                    //stop window scroll
	                    if (e.preventDefault) { e.preventDefault(); }
	                    e.returnValue = false;
	                }

	                var scrollContent = function(x, y, isWheel)
	                {
	                    var delta = y;

	                    if (isWheel)
	                    {
	                        //move bar with mouse wheel
	                        delta = bar.position().top + y * wheelStep;

	                        //move bar, make sure it doesn't go out
	                        delta = Math.max(delta, 0);
	                        var maxTop = me.outerHeight() - bar.outerHeight();
	                        delta = Math.min(delta, maxTop);

	                        //scroll the scrollbar
	                        bar.css({ top: delta + 'px' });
	                    }

	                    //calculate actual scroll amount
	                    percentScroll = parseInt(bar.position().top) / (me.outerHeight() - bar.outerHeight());
	                    delta = percentScroll * (me[0].scrollHeight - me.outerHeight());

	                    //scroll content
	                    me.scrollTop(delta);

	                    //ensure bar is visible
	                    showBar();
	                }

	                var attachWheel = function()
	                {
	                    if (window.addEventListener)
	                    {
	                        this.addEventListener('DOMMouseScroll', _onWheel, false );
	                        this.addEventListener('mousewheel', _onWheel, false );
	                    } 
	                    else
	                    {
	                        document.attachEvent("onmousewheel", _onWheel)
	                    }
	                }

	                //attach scroll events
	                attachWheel();

	                var getBarHeight = function()
	                {
	                    //calculate scrollbar height and make sure it is not too small
	                    barHeight = Math.max((me.outerHeight() / me[0].scrollHeight) * me.outerHeight(), minBarHeight);
	                    bar.css({ height: barHeight + 'px' });
	                }

	                //set up initial height
	                getBarHeight();

	                var showBar = function()
	                {
	                    //recalculate bar height
	                    getBarHeight();
	                    clearTimeout(queueHide);
	                    
	                    //show only when required
	                    if(barHeight >= me.outerHeight()) {
	                        return;
	                    }
	                    bar.fadeIn('fast');
	                }

	                var hideBar = function()
	                {
	                    //only hide when options allow it
	                    if (!alwaysVisible)
	                    {
	                        queueHide = setTimeout(function(){
	                            if (!isOverBar && !isDragg) { bar.fadeOut('slow'); }
	                        }, 1000);
	                    }
	                }

	            });
	            
	            //maintain chainability
	            return this;
	        }
	    });

	    jQuery.fn.extend({
	        slimscroll: jQuery.fn.slimScroll
	    });

	})(jQuery);


	//invalid name call
	              $('#chatlist').slimscroll({
	                  color: '#00f',
	                  size: '10px',
	                  width: '50px',
	                  height: '150px'                  
	              });
	
	//숫자만 입력되게 
	function onlyNumber(){
	   if((event.keyCode<48)||(event.keyCode>57))
	      event.returnValue=false;
	}

	//유효성 체크	
	function checkValid(){
		var itemNM=document.getElementById("item_name");
		var itemPRC=document.getElementById("price");
		var itemLC=document.getElementById("reg_add");
		var radioBuy=document.getElementById("buybtn");
		var radioSell=document.getElementById("sellbtn");
		var btnLC=document.getElementById("loca_btn");
		
		var alertMS='';
		var checkState='0';
		
		if(itemNM.value.length==0){
			alertMS+="물품명을 입력하세요\n";
			checkState='1';
		}
		if(itemPRC.value.length==0){
			alertMS+="희망가격을 입력하세요\n";
			checkState='2';
		}
		if(itemLC.value.length==0){
			alertMS+="거래할 위치를 지정하세요\n";
			checkState='3';
		}	
		if(radioBuy.checked==false&&radioSell.checked==false){
			alertMS+="거래를 선택해주세요\n";
			checkState='4';
			/* 		
	$('#tab15').removeClass('active');
			$('#tab11').addClass('active'); */
		}
		
		if(alertMS!=''){
			alert(alertMS);
			if(checkState=='1'){
				itemNM.focus();
				itemNM.select();
			}else if(checkState=='2'){
				itemPRC.focus();
				itemPRC.select();
			}else if(checkState=='3'){
				document.getElementById("previousA").click();
				document.getElementById("previousA").click();
				document.getElementById("previousA").click();
			}else if(checkState=='4'){
				document.getElementById("previousA").click();
				document.getElementById("previousA").click();
				document.getElementById("previousA").click();
				document.getElementById("previousA").click();
			}
			return false;
		}else{
			return true;
		}
	}
	
	function listloader(){
		window.onload=findMyItemList('ing');
	}
	
	
	/*이미지 미리보기  */
	var loadImageFile1 = (
		
		function () {
		if (window.FileReader) {
		var	oPreviewImg = null, oFReader = new window.FileReader(),
		rFilter = /^(?:image\/bmp|image\/cis\-cod|image\/gif|image\/ief|image\/jpeg|image\/jpeg|image\/jpeg|image\/pipeg|image\/png|image\/svg\+xml|image\/tiff|image\/x\-cmu\-raster|image\/x\-cmx|image\/x\-icon|image\/x\-portable\-anymap|image\/x\-portable\-bitmap|image\/x\-portable\-graymap|image\/x\-portable\-pixmap|image\/x\-rgb|image\/x\-xbitmap|image\/x\-xpixmap|image\/x\-xwindowdump)$/i;

		oFReader.onload = function (oFREvent) {
		if (!oPreviewImg) {
		var newPreview =document.getElementById("imagePreview1");
		
		document.getElementById("noimage1").remove();
		oPreviewImg = new Image();
		oPreviewImg.style.width = "640px";
		oPreviewImg.style.height = "480px";
		newPreview.appendChild(oPreviewImg);
		}
		oPreviewImg.src = oFREvent.target.result;
		};

		return function () {
		var aFiles = document.getElementById("imageInput1").files;
		if (aFiles.length === 0) { return; }
		if (!rFilter.test(aFiles[0].type)) { alert("You must select a valid image file!"); return; }
		oFReader.readAsDataURL(aFiles[0]);
		}

		}
		if (navigator.appName === "Microsoft Internet Explorer") {
		return function () {
		document.getElementById("imagePreview1").filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = document.getElementById("imageInput").value;

		}
		}
		})();
	
	var loadImageFile2 = (
			
			function () {
			if (window.FileReader) {
			var	oPreviewImg = null, oFReader = new window.FileReader(),
			rFilter = /^(?:image\/bmp|image\/cis\-cod|image\/gif|image\/ief|image\/jpeg|image\/jpeg|image\/jpeg|image\/pipeg|image\/png|image\/svg\+xml|image\/tiff|image\/x\-cmu\-raster|image\/x\-cmx|image\/x\-icon|image\/x\-portable\-anymap|image\/x\-portable\-bitmap|image\/x\-portable\-graymap|image\/x\-portable\-pixmap|image\/x\-rgb|image\/x\-xbitmap|image\/x\-xpixmap|image\/x\-xwindowdump)$/i;

			oFReader.onload = function (oFREvent) {
			if (!oPreviewImg) {
			var newPreview =document.getElementById("imagePreview2");
			
			document.getElementById("noimage2").remove();
			oPreviewImg = new Image();
			oPreviewImg.style.width = "640px";
			oPreviewImg.style.height = "480px";
			newPreview.appendChild(oPreviewImg);
			}
			oPreviewImg.src = oFREvent.target.result;
			};

			return function () {
			var aFiles = document.getElementById("imageInput2").files;
			if (aFiles.length === 0) { return; }
			if (!rFilter.test(aFiles[0].type)) { alert("You must select a valid image file!"); return; }
			oFReader.readAsDataURL(aFiles[0]);
			}

			}
			if (navigator.appName === "Microsoft Internet Explorer") {
			return function () {
			document.getElementById("imagePreview2").filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = document.getElementById("imageInput").value;

			}
			}
			})();
	
	var loadImageFile3 = (
			
			function () {
			if (window.FileReader) {
			var	oPreviewImg = null, oFReader = new window.FileReader(),
			rFilter = /^(?:image\/bmp|image\/cis\-cod|image\/gif|image\/ief|image\/jpeg|image\/jpeg|image\/jpeg|image\/pipeg|image\/png|image\/svg\+xml|image\/tiff|image\/x\-cmu\-raster|image\/x\-cmx|image\/x\-icon|image\/x\-portable\-anymap|image\/x\-portable\-bitmap|image\/x\-portable\-graymap|image\/x\-portable\-pixmap|image\/x\-rgb|image\/x\-xbitmap|image\/x\-xpixmap|image\/x\-xwindowdump)$/i;

			oFReader.onload = function (oFREvent) {
			if (!oPreviewImg) {
			var newPreview =document.getElementById("imagePreview3");
			
			document.getElementById("noimage3").remove();
			oPreviewImg = new Image();
			oPreviewImg.style.width = "640px";
			oPreviewImg.style.height = "480px";
			newPreview.appendChild(oPreviewImg);
			}
			oPreviewImg.src = oFREvent.target.result;
			};

			return function () {
			var aFiles = document.getElementById("imageInput3").files;
			if (aFiles.length === 0) { return; }
			if (!rFilter.test(aFiles[0].type)) { alert("You must select a valid image file!"); return; }
			oFReader.readAsDataURL(aFiles[0]);
			}

			}
			if (navigator.appName === "Microsoft Internet Explorer") {
			return function () {
			document.getElementById("imagePreview3").filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = document.getElementById("imageInput").value;

			}
			}
			})();
	
	/* 미리 보기 물품명,가격, 내용  */
	function itemNamePreview(){		
		var pname=document.getElementById("item_name").value;
		document.getElementById("previewNameSpan").innerText=pname;	
	}
	
	function itemPricePreview(){		
		var pprice=document.getElementById("price").value;
		document.getElementById("previewPriceSpan").innerText=" [ "+pprice+" 원 ]";		
	}
	
	function itemInfoPreview(){		
		var pinfo=document.getElementById("item_info").value;
		document.getElementById("previewInfoSpan").innerText=pinfo;		
	}
	
	/* 수정모드 미리보기  */
	
	function modifyPreview(){
		var pname=document.getElementById("item_name").value;
		console.log("드렁옵"+pname);
		document.getElementById("previewNameSpan").innerText=pname;	
		var pprice=document.getElementById("price").value;
		document.getElementById("previewPriceSpan").innerText=" [ "+pprice+" 원 ]";
		var pinfo=document.getElementById("item_info").value;
		document.getElementById("previewInfoSpan").innerText=pinfo;
		console.log(hiddenPic1.value);
		console.log(hiddenPic2.value);
		console.log(hiddenPic3.value);
		
		
		//null 아니라 "null" 맞음
		if(hiddenPic1.value!="null"){
			document.getElementById("noimage1").src="http://imageserver.iisweb.kr/freshmarket/itempictures/"+hiddenPic1.value;
		}
		if(hiddenPic2.value!="null"){
			document.getElementById("noimage2").src="http://imageserver.iisweb.kr/freshmarket/itempictures/"+hiddenPic2.value;
		}	
		if(hiddenPic3.value!="null"){
			document.getElementById("noimage3").src="http://imageserver.iisweb.kr/freshmarket/itempictures/"+hiddenPic3.value;
		}
				
	}
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
<body class="cbp-spmenu-push" data-twttr-rendered="true"
	onload="init(this.registerform); FPmodal('FM');">
	<!----------------------------------------------------------- -->




	<!----------------------------------------------------------- -->

	<header>
		<%@include file="header.jsp"%>
	</header>
	<div id="menu-toggle2-injection">
		<c:if test="${user==null}">
		<div id="menu-toggle2-mirror">
			<a> <img src="resources/imgs/slider/Cloud_Add_black.png" width=70
				height=70 ></img> 
				<span>물건 팔기/사기<br>로그인이 필요합니다.</span>
			</a>
		</div>
		</c:if>	
	</div>
	
	<div id="menu-toggle3-injection">
		<c:if test="${user==null}">
		<div id="menu-toggle3-mirror">
			<a> <img src="resources/imgs/slider/Handshake-icon.png" width=70
				height=70></img> 
				<span>거래현황<br>로그인이 필요합니다.</span>
			</a>
		</div>
		</c:if>
	</div>
	
	
	<div id="menu-toggle1">
		<a> <img src="resources/imgs/slider/search_black.png" width=70 height=70
			alt="Menu1"></img> <span>상품검색</span>
		</a>
	</div>
	
	<nav id="menu1">
		<div id="search_condition">
			<form action="#" name="searchform" id="search_form" method="post"
				onsubmit="return itemSearch('Detail')">
				<input type="text" id="searchKeywordDetail" class="form-control"
					placeholder="Search">
				<div id="select_deal">
					<div class="btn-group" data-toggle="buttons"
						style="margin-top: 10px">
						<%--onclick="itemSearch('Detail')" --%>
						<label class="btn btn-default active" onclick="itemSearch('all')">
							<input type="radio" name="options" id="searchOption1" value="all"
							checked> 전체검색
						</label> <label class="btn btn-default" onclick="itemSearch('buy')">
							<input type="radio" name="options" id="searchOption2" value="buy">
							삽니다
						</label> <label class="btn btn-default" onclick="itemSearch('sell')">
							<input type="radio" name="options" id="searchOption3"
							value="sell"> 팝니다
						</label>
					</div>
				</div>
				<div style="margin-top: 10px">

					<label class="radio-inline"> <input type="radio"
						name="optionsRadios" id="optionsRadios1" value="option1"
						onclick="markersSortingDistance()" checked> 거리순
					</label> <label class="radio-inline"> <input type="radio"
						name="optionsRadios" id="optionsRadios2" value="option2"
						onclick="markersSortingPrice()"> 가격순
					</label>


				</div>
		</Div>
		</form>
		<hr style="margin-bottom: 10px;">
		</div>
		<div id="search_result" class="mousescroll">
			<table class="table table-striped" style="width: 261px;">
				<thead>
					<tr>
						<th style="width: 80px;">거리(km)</th>
						<th style="width: 80px;">가격(만)</th>
						<th style="width: 100px; text-align: center;">물품명</th>
					</tr>
				</thead>
				<tbody id="searchResultInjectionSector"></tbody>
			</table>
		</div>
	</nav>

	<div id="menu-toggle2">
		<a> <img src="resources/imgs/slider/Cloud_Add_black.png" width=70
			height=70 alt="Menu2"></img> <span>물건 팔기/사기</span>
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
						<div class="container2" style="display: none;">
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

				<form action="/addItem" name="registerform" id="register_form"
					method="post" enctype="multipart/form-data" onsubmit="return checkValid();">
					<div class="tab-content">

						<div class="tab-pane" id="tab11">
							<div class="form-group">
								<h4>거래 선택하기</h4>
								<br>
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-default"> <input type="radio"
										name="stateCode" id="buybtn" value="1"> 삽니다
									</label> <label class="btn btn-default"> <input type="radio"
										name="stateCode" id="sellbtn" value="2"> 팝니다
									</label>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tab12">
							<div class="form-group">
								<h4>거래할 위치 등록하기</h4>
								<br> <input type="hidden" name="gridX1" id="reg_lat"
									value="" style="border: none;"> <input type="hidden"
									name="gridY1" id="reg_lng" value="" style="border: none;">
								<input id="latlng" type="text" value="" style="display: none;">
								<button id="loca_btn" class="btn btn-default" 
									onclick="markerDrop(); return false;">위치 정하기</button>
								<button class="btn btn-default disabled" id="re-markerdrop"
									onclick="clearMarkers(); return false;">다시 정하기</button>
								<br>
								<br>
								<textarea readonly="readonly" id="reg_add" rows="4" cols="34"
									value="" style="border: none; resize: none;"></textarea>
							</div>
						</div>
						<div class="tab-pane" id="tab13">
							<div class="form-group">
								<h4>사진 등록하기</h4>
								<br>
								<input class="form-control" name="itemPicturePath1" type="file"
									id="imageInput1" onchange="loadImageFile1();"> <br> <input
									class="form-control" name="itemPicturePath2" type="file"
									id="imageInput2" onchange="loadImageFile2();"> <br> <input
									class="form-control" name="itemPicturePath3" type="file"
									id="imageInput3" onchange="loadImageFile3();">


							</div>
						</div>
						<div class="tab-pane" id="tab14">
							<div class="form-group">
								<h4>카테고리 등록하기</h4>
								<br> <select name="category1" id="category1"
									class="form-control" onchange="itemChange(this.form);"></select>
								<select name="category2" id="category2" class="form-control"></select>
							</div>
						</div>
						<div class="tab-pane" id="tab15">
							<div class="form-group">
								<h4>상세내용 입력하기</h4>
								<br> <input id="item_name" name="itemName" type="text"
									class="form-control input-normal" placeholder="물품명을 입력하세요" onchange="itemNamePreview()">
								<div class="input-group">
									<span class="input-group-addon">￦</span><input type="text" id="price"
										name="price" class="form-control" placeholder="희망가격 입력" onKeypress="onlyNumber();" onchange="itemPricePreview()" style="IME-MODE:disabled;" >
								</div>
								<br>
								<textarea id="item_info" name="itemInfo" class="form-control" rows="10"
									cols="80" placeholder="상세내용을 입력하세요" onchange="itemInfoPreview()"></textarea>
								<br>
								<button class="btn btn-default" data-toggle="modal"
									href="#preview_modal" onclick="return false">미리보기</button>						
								<input type="submit" class="btn btn-primary"  value="등록하기">



							</div>
						</div>
						<div id="pager_wizard">
							<ul class="pager wizard">
								<li class="previous first" style="display: none;"><a
									href="#" onclick="return false">First</a></li>
								<li class="previous"><a id="previousA" href="#" onclick="return false">Previous</a></li>
								<li class="next last" style="display: none;"><a href="#"
									onclick="return false">Last</a></li>
								<li class="next"><a href="#" onclick="return false">Next</a></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
			
		</div>
		<!-- end of tap2   -->
	</nav>
	<div id="menu-toggle3">
		<a> <img src="resources/imgs/slider/Handshake-icon.png" width=70
			height=70 alt="Menu3" onclick="findMyItemList('ing');"></img> <span>거래현황</span>
		</a>
		<!-- 
		<img src="resources/imgs/slider/menu.png" width=50 height=50 alt="Menu"></img>
		-->
	</div>
	<nav id="menu3">
		<div class="tab-pane" id="tab3">
			<!-- start of tap3   -->

			<div class="panel-group" id="accordion">
			  <div class="panel panel-info">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" onclick="findMyItemList('ing')">
			     	     내가 등록한 물품
			        </a>
			      </h4>
			    </div>
			    <div id="collapseOne" class="panel-collapse collapse in">
			      <div class="panel-body" id="MyItemList" style="margin:0px; padding:0px;">
			      </div>
			    </div>
			  </div>
			  
			  <%--
			  <div class="panel panel-info">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" onclick="findMyItemList('end')">
			     	   거래 완료된 물품
			        </a>
			      </h4>
			    </div>
			    <div id="collapseTwo" class="panel-collapse collapse">
			      <div class="panel-body" id="MyItemList2" style="margin:0px; padding:0px;">
			      </div>
			    </div>
			  </div>
			  
			  <div class="panel panel-info">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
			          내가 문의한 물품
			        </a>
			      </h4>
			    </div>
			    <div id="collapseThree" class="panel-collapse collapse">
			      <div class="panel-body" style="margin:0px; padding:0px;">
			       </div>
			    </div>
			  </div>
			   --%>
			   
			  <div class="panel panel-info">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" onclick="findWishList();">
			          내가 찜한 물품
			        </a>
			      </h4>
			    </div>
			    <div id="collapseFour" class="panel-collapse collapse">
			      <div class="panel-body" id="WishList" style="margin:0px; padding:0px;">
			       </div>
			    </div>
			  </div>
			  			  
			</div>
		</div>
		<!-- end of tap3   -->
	</nav>
   <!--  <div id="main_logo">
		<img src="resources/imgs/logo5re.png">
	</div> -->
	<div id="map_canvas" style="width: 100%; height: 100%;"></div>
	
	<footer>
		<!-- preview modal -->
		<div class="modal fade" id="preview_modal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">
							<span id="previewNameSpan">물품명</span><font color="crimson"><span id="previewPriceSpan"> [가격]</span></font>
						</h4>

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
													<div id="imagePreview1" class="active item" data-slide-number="0">
													 	<img id="noimage1" src="http://placehold.it/640x480&amp;text=No%20Image"> 
													</div>
													<div id="imagePreview2" class="item" data-slide-number="1">
														<img id="noimage2" src="http://placehold.it/640x480&amp;text=No%20Image">
													</div>
													<div id="imagePreview3" class="item" data-slide-number="2">
														<img id="noimage3" src="http://placehold.it/640x480&amp;text=No%20Image">
													</div>
					
												</div>

												<!-- main slider carousel nav controls -->
												<a class="carousel-control left" href="#myCarousel"
													data-slide="prev">‹</a> <a class="carousel-control right"
													href="#myCarousel" data-slide="next">›</a>
											</div>
										</div>


									</div>

								</div>
							</div>
							<!--/main slider carousel-->
						</div>
						<!-- end of image slider -->
						<br>
						<p id="previewInfoSpan">상세 내용</p>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->

		<!--삭제 팝업창  -->
		<div class="modal fade" id="deletepopup" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true"
			style="z-index: 1060;">
			<div class="modal-dialog"
				style="width: 400px; text-align: center; margin-top: 200px; margin-bottom: 200px;">
				<div class="modal-content">

					<div class="modal-body">
						<!--  
						<form action="" onsubmit="return removeItem()">
						-->
							<p>삭제 하시겠습니까?</p>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">취소</button>
							<input type="hidden" name="ItemNo" id="deleteItemNo" value="">
							<input type="button" onclick="removeItem()" class="btn btn-danger" value="삭제">
						<!-- 
						</form>
						 -->
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		<!-- 삭제 팝업창 끝 -->

		<!-- footer부분에 modal용 div넣습니다. 레이아웃과 상관없으니 삭제하지 마세요 -->
		<%-- modal Injection 공간 --%>
		<div id="htmlInjectionSector" class="htmlInjectionSector"
			title="htmlInjectionSector"></div>
		<!-- footer부분에 modal용 div넣습니다. 레이아웃과 상관없으니 삭제하지 마세요 -->
	

		
	</footer>

</body>
</html>


<!-- 속도향상을 위해 맨 아래로 내림. -->
<script>
 var replyDiv;
 var returnDiv;
 var flag;
 var itemNo;
 var modifyHtml;
 var gridXY;
 var cate1;
 var cate2;
 function modalInjection(marker){
	 flag="1"; 
	  console.log(marker.stateCode+"state");
	  markerNo=marker.itemNo;
	  console.log(marker.itemNo);
	  console.log(marker.gridX1);
	  console.log(marker.gridY1);
	  gridXY=marker.gridX1+","+marker.gridY1;
	  console.log(gridXY);
	  cate1=marker.category1;
	  cate2=marker.category2;
	  console.log(cate1);
	  console.log(cate2);
	  
	  itemNo=document.getElementById("deleteItemNo").value=markerNo;	  
	  var htmlinjec;
	  new function makeHtml(){
			htmlinjec=
			"<div id=\"item"+marker.itemNo+"\" class=\"item"+marker.itemNo+" modal fade\" title=\""+marker.itemName+"\"  tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">"+
				"<div id=\"injection-modal\"class=\"modal-dialog\">"+
					"<div class=\"modal-Content\">"+
						"<div class=\"modal-header\">"+
						"<button id=\"closemodal\" type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>"+
				        "<h4 class=\"modal-title\">"+marker.itemName+"<font color=\"red\"> [ "+marker.price+" 원 ]</font></h4>"+
				       
						"</div>"+
						"<div class=\"modal-body\" id=\"mmodal\" style=\"padding-top:10px\">"+
						"<div style=\"text-align:right;padding-bottom: 10px;color: gray;\">"+marker.regiDate+"</div>"+
					    "<div id=\"imgslider_container_view\">"+
						  "<div class=\"row-fluid\">"+
						    "<div class=\"span12\" id=\"slider\">"+
						      "<div class=\"row-fluid\">"+
						        "<div class=\"span8\" id=\"carousel-bounding-box\">"+
						          "<div id=\"myCarousel_view\" class=\"carousel slide\">"+						          
						            /* main slider carousel items */
						         	"<div class=\"carousel-inner\">"+
						              "<div class=\"active item\" data-slide-number=\"0\">"+
						                "<img  src = \"http://imageserver.iisweb.kr/freshmarket/itempictures/"+marker.itemPicturePath1+"\" style=\"width: 640px; height:480;\">"+
						              "</div>";
					if(marker.itemPicturePath2!=null){
						  htmlinjec+= "<div class=\"item\" data-slide-number=\"1\">"+				
						              	"<img  src = \"http://imageserver.iisweb.kr/freshmarket/itempictures/"+marker.itemPicturePath2+"\" style=\"width: 640px; height:480;\">"+
					                  "</div>";
					}
					if(marker.itemPicturePath3!=null){
						  htmlinjec+= "<div class=\"item\" data-slide-number=\"2\">"+		
						 			  "<img  src = \"http://imageserver.iisweb.kr/freshmarket/itempictures/"+marker.itemPicturePath3+"\" style=\"width: 640px; height:480;\">"+
			                	 	  "</div>";					            
					}	             	
						              
						  htmlinjec+= "</div>"+
						            
						            /* main slider carousel nav controls */
						            "<a class=\"carousel-control left\" href=\"#myCarousel_view\" data-slide=\"prev\">‹</a>"+
						            "<a class=\"carousel-control right\" href=\"#myCarousel_view\" data-slide=\"next\">›</a>"+
						         "</div>"+
						       "</div>"+
						        
						       
						     "</div>"+
						      
						   "</div>"+
						 "</div>"+ /* main slider carousel */
					"</div>"+/* end of image slider */
							
							
							<%-- ItemInfo 들어가는 공간 --%>
							"<br><div id=\"itemInfo\">"+
								marker.itemInfo+
							"</div>"+
							
						"</div>"+
						"<div class=\"modal-footer\">";
					if(user!=null){
						if(user.userNo==marker.userNo){
							htmlinjec+=
							"<button class=\"btn btn-primary\" href=\"#\" onclick=\"modify()\">수정</button>"+
							"<button class=\"btn btn-primary\" data-toggle=\"modal\" href=\"#deletepopup\" onclick=\"return false\">삭제</button>";					
						}else{
							//htmlinjec+="<a href=\"#\" type=\"button\" id=\"addWish_disable\" class=\"btn btn-danger\" >찜</a>";
						}
						if(user.userNo!=null){
							htmlinjec+=
							"<button type=\"button\" id=\"addWish_active\" class=\"btn btn-danger\" onclick=\"addWish()\" >찜</button>";	
						}
					}
						htmlinjec+=
							"<button id=\"replyButton\" class=\"btn btn-primary\" data-toggle=\"modal\" onclick=\"change()\">댓글 "+
							"<span class=\"badge\">"+countCommentResult+"</span></button>"+
							"<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>"+
							"</div>"+
					"</div>"+	
				"</div>"+
			"</div>"+
			"<a data-toggle=\"modal\" href=\"#item"+marker.itemNo+"\" id=\"modallink\"></a>";
		};
		
		
		//덧글보러 갔다가 다시 내용으로 돌아올 때 innerHTML
		returnDiv="<div id=\"imgslider_container_view\">"+
				  "<div class=\"row-fluid\">"+
				    "<div class=\"span12\" id=\"slider\">"+
				      "<div class=\"row-fluid\">"+
				        "<div class=\"span8\" id=\"carousel-bounding-box\">"+
				          "<div id=\"myCarousel_view\" class=\"carousel slide\">"+						          
				            /* main slider carousel items */
				         	"<div class=\"carousel-inner\">"+
				              "<div class=\"active item\" data-slide-number=\"0\">"+
				                "<img  src = \"http://imageserver.iisweb.kr/freshmarket/itempictures/"+marker.itemPicturePath1+"\" style=\"width: 640px; height:480;\">"+
				              "</div>";
			if(marker.itemPicturePath2!=null){
				  returnDiv+= "<div class=\"item\" data-slide-number=\"1\">"+				
				              	"<img  src = \"http://imageserver.iisweb.kr/freshmarket/itempictures/"+marker.itemPicturePath2+"\" style=\"width: 640px; height:480;\">"+
			                  "</div>";
			}
			if(marker.itemPicturePath3!=null){
				  returnDiv+= "<div class=\"item\" data-slide-number=\"2\">"+		
				 			  "<img  src = \"http://imageserver.iisweb.kr/freshmarket/itempictures/"+marker.itemPicturePath3+"\" style=\"width: 640px; height:480;\">"+
		            	 	  "</div>";					            
			}	             	
				              
				  returnDiv+= "</div>"+
				            
				            /* main slider carousel nav controls */
				            "<a class=\"carousel-control left\" href=\"#myCarousel_view\" data-slide=\"prev\">‹</a>"+
				            "<a class=\"carousel-control right\" href=\"#myCarousel_view\" data-slide=\"next\">›</a>"+
				         "</div>"+
				       "</div>"+
				        
				       
				     "</div>"+
				      
				   "</div>"+
				 "</div>"+ /* main slider carousel */
			"</div>"+/* end of image slider */
			
			
			<%-- ItemInfo 들어가는 공간 --%>
			"<br><div id=\"itemInfo\">"+
				marker.itemInfo+
			"</div>";
			
			//덧글 innerHTML
					
		document.getElementById("htmlInjectionSector").innerHTML = htmlinjec;
		document.getElementById("modallink").click();
		
		modifyHtml="<div id=\"rootwizard\">"+
			"<div class=\"navbar2\">"+
			"<div class=\"navbar-inner2\">"+
				"<div class=\"container2\" style=\"display: none;\">"+
					"<ul id=\"register_tap\">"+
						"<li><a href=\"#tab11\" data-toggle=\"tab\">1단계</a></li>"+
						"<li><a href=\"#tab12\" data-toggle=\"tab\">2단계</a></li>"+
						"<li><a href=\"#tab13\" data-toggle=\"tab\">3단계</a></li>"+
						"<li><a href=\"#tab14\" data-toggle=\"tab\">4단계</a></li>"+
						"<li><a href=\"#tab15\" data-toggle=\"tab\">5단계</a></li>"+
					"</ul>"+
				"</div>"+
			"</div>"+
		"</div>"+
		"<div id=\"bar\" class=\"progress progress-striped active\">"+
			"<div class=\"progress-bar progress-bar-success\"></div>"+
		"</div>"+

		"<form action=\"/updateItem\" name=\"modifyform\" id=\"modify_form\" method=\"post\" enctype=\"multipart/form-data\" onsubmit=\"return checkValid();\">"+
			"<div class=\"tab-content\">"+

				"<div class=\"tab-pane\" id=\"tab11\">"+
					"<div class=\"form-group\">"+
						"<h4>거래 선택하기</h4>"+
						"<br>"+
						"<div class=\"btn-group\" data-toggle=\"buttons\">"+
							"<label id=\"statebuy\" class=\"btn btn-default ";
							if(marker.stateCode==1){
								modifyHtml+="active";
							}
							modifyHtml+="\">"+ 
							 	"<input type=\"radio\"name=\"stateCode\" id=\"buybtn\" value=\"1\"";
							if(marker.stateCode==1){
								modifyHtml+="checked=\"checked\"";
							}							
							modifyHtml+="> 삽니다</label>"+ 
							 "<label id=\"stateSell\" class=\"btn btn-default ";
							
							if(marker.stateCode==2){
								modifyHtml+="active";
							}	
							modifyHtml+="\">"+ 
							 	"<input type=\"radio\"name=\"stateCode\" id=\"sellbtn\" value=\"2\"";
							if(marker.stateCode==2){
								modifyHtml+="checked=\"checked\"";
							}								
							modifyHtml+="> 팝니다</label>"+
						"</div>"+
					"</div>"+
				"</div>"+
				"<div class=\"tab-pane\" id=\"tab12\">"+
					"<div class=\"form-group\">"+
						"<h4>거래할 위치 등록하기</h4>"+
						"<br><input type=\"hidden\" name=\"gridX1\" id=\"reg_lat\" value=\""+marker.gridX1+"\" style=\"border: none;\">"+ 
					     "<input type=\"hidden\"name=\"gridY1\" id=\"reg_lng\" value=\""+marker.gridY1+"\" style=\"border: none;\">"+
						 "<input id=\"latlng\" type=\"text\" value=\""+gridXY+"\" style=\"display: none;\">"+
						 "<button id=\"loca_btn\" class=\"btn btn-default\" onclick=\"markerDrop(); return false;\">"+
						"<span>위치 정하기</span>"+
						"</button>"+
						" <button id=\"re-markerdrop\" class=\"btn btn-default disabled\" onclick=\"clearMarkers();  return false;\">다시 정하기</button>"+
						"<br><br>"+
						"<textarea readonly=\"readonly\" id=\"reg_add\" rows=\"4\" cols=\"34\" value=\"\" style=\"border: none; resize: none;\"></textarea>"+
					"</div>"+
				"</div>"+
				"<div class=\"tab-pane\" id=\"tab13\">"+
					"<div class=\"form-group\">"+
						"<h4>사진 등록하기</h4>"+
						"<br>"+
						"<input id=\"imageInput1\" class=\"form-control\" name=\"itemPicturePath1\" type=\"file\"  onchange=\"loadImageFile1();\">"+ 
						 "<br><input id=\"imageInput2\"class=\"form-control\" name=\"itemPicturePath2\" type=\"file\" onchange=\"loadImageFile2();\">"+
						 "<br><input id=\"imageInput3\" class=\"form-control\" name=\"itemPicturePath3\" type=\"file\" onchange=\"loadImageFile3();\">"+
						
						 "<input id=\"hiddenPic1\" type=\"hidden\"name=\"xItemPicture1\" value=\""+marker.itemPicturePath1+"\">"+
						 "<input id=\"hiddenPic2\" type=\"hidden\"name=\"xItemPicture2\" value=\""+marker.itemPicturePath2+"\">"+
						 "<input id=\"hiddenPic3\" type=\"hidden\"name=\"xItemPicture3\" value=\""+marker.itemPicturePath3+"\">"+
									
						 
					"</div>"+
				"</div>"+
				"<div class=\"tab-pane\" id=\"tab14\">"+
					"<div class=\"form-group\">"+
						"<h4>카테고리 등록하기</h4>"+
						"<br><select name=\"category1\" id=\"category1\" class=\"form-control\" onchange=\"itemChange(this.form);\"></select>"+
						"<select name=\"category2\" id=\"category2\" class=\"form-control\"></select>"+
					"</div>"+
				"</div>"+
				"<div class=\"tab-pane\" id=\"tab15\">"+
					"<div class=\"form-group\">"+
						"<h4>상세내용 입력하기</h4>"+
						"<br><input id=\"item_name\" name=\"itemName\" type=\"text\" class=\"form-control input-normal\" placeholder=\"물품명을 입력하세요\" onchange=\"itemNamePreview()\" value=\""+marker.itemName+"\">"+
						"<div class=\"input-group\">"+
							"<span class=\"input-group-addon\">￦</span><input type=\"text\" id=\"price\" name=\"price\" class=\"form-control\" placeholder=\"희망가격 입력\" value=\""+marker.price+"\" onKeypress=\"onlyNumber();\" onchange=\"itemPricePreview()\" style=\"IME-MODE:disabled;\">"+
						"</div>"+
						"<input type=\"hidden\"name=\"itemNo\" value=\""+marker.itemNo+"\">"+
						"<br>"+
						"<textarea id=\"item_info\" name=\"itemInfo\" class=\"form-control\" rows=\"10\" cols=\"80\" onchange=\"itemInfoPreview()\" placeholder=\"상세내용을 입력하세요\">"+marker.itemInfo+"</textarea>"+
						"<br>"+
						"<button class=\"btn btn-default\" data-toggle=\"modal\" href=\"#preview_modal\" onclick=\"return false\">미리보기</button> "+
						"<input type=\"submit\" class=\"btn btn-success\"  value=\"수정하기\">"+



					"</div>"+
				"</div>"+
				"<div id=\"pager_wizard\">"+
					"<ul class=\"pager wizard\">"+
						"<li class=\"previous first\" style=\"display: none;\"><a href=\"#\" onclick=\"return false\">First</a></li>"+
						"<li class=\"previous\"><a id=\"previousA\"  href=\"#\" onclick=\"return false\">Previous</a></li>"+
						"<li class=\"next last\" style=\"display: none;\"><a href=\"#\" onclick=\"return false\">Last</a></li>"+
						"<li class=\"next\"><a href=\"#\" onclick=\"return false\">Next</a></li>"+
					"</ul>"+
				"</div>"+
			"</div>"+
		"</form>"+
		"</div>";
		 
		
		
 };

 
 function change(){
	 
	 console.log("누르기 전 "+flag);
	 if(flag=="1"){
	 	document.getElementById("mmodal").innerHTML=replyDiv;
	 	document.getElementById("replyButton").innerHTML="내용보기";
	 	flag="2";
	 	console.log("누른후 "+flag);
	 }else{
		document.getElementById("mmodal").innerHTML=returnDiv;
		var fakeCountMarker={
				itemNo:markerNo,
				async:false
		}
		countComment(fakeCountMarker);
		document.getElementById("replyButton").innerHTML="댓글 <span class=\"badge\">"+countCommentResult+"</span>";
		flag="1";
		console.log("누른후 "+flag);
	 }
};

 function modify(){
	console.log("수정모드");	
	console.log(markerNo);
	$('#menu1').removeClass('open');
	$('#menu-toggle1').removeClass('open');
	$('#menu2').removeClass('open');
	$('#menu-toggle2').removeClass('open');
	$('#menu3').removeClass('open');
	$('#menu-toggle3').removeClass('open');
	
	$('#menu2').addClass('open');
	$('#menu-toggle2').addClass('open');
	$('#item'+markerNo).removeClass('in');
	document.getElementById("closemodal").click();
	document.getElementById("tab2").innerHTML=modifyHtml;
	$('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
		var $total = navigation.find('li').length;
		var $current = index+1;
		var $percent = ($current/$total) * 100;
		$('#rootwizard').find('.progress-bar').css({width:$percent+'%'});
	}});
	window.onload=init(modifyform,cate1);
	window.onload=itemChange(modifyform,cate2);
	window.onload=modifyPreview();
	
	codeLatLng();
};
 
		

 </script>