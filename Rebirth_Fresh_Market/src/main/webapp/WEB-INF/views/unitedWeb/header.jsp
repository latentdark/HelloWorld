<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<style type="text/css">

/*로고 크기,위치 결정*/
#mainlogo{
	position: fixed;
	z-index: 1000;
	bottom:13px;
	right:1px;
	width: 500px;
}

#searchBar {
	position: fixed;	
	top: 40px;
	left:calc(50% - 205px);
	margin:auto;
	z-index: 1000;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: all 0.3s ease;
	width: 410px;
    z-index: 500;
    padding: 5px;
    background: #444;
    background: rgba(0,0,0,.2);
    border-radius: 10px;
    box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
}
.cf:before, .cf:after{
    content:"";
    display:table;
}
 
.cf:after{
    clear:both;
}
 
.cf{
    zoom:1;
}    
/* Form wrapper styling */

.form-wrapper {

    width: 400px;
 /* 
    z-index: 1000;
   
    padding: 15px;
    margin: 150px auto 50px auto;
    background: #444;
    background: rgba(0,0,0,.2);
    border-radius: 10px;
    box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
 */   
}

 
/* Form text input */
 
.form-wrapper input {
    width: 330px;
    height: 40px;
    padding: 10px 5px;
    float: left;    
    font: bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma';
    border: 0;
    background: #eee;
    border-radius: 3px 0 0 3px;      
}
 
.form-wrapper input:focus {
    outline: 0;
    background: #fff;
    box-shadow: 0 0 2px rgba(0,0,0,.8) inset;
}
 
.form-wrapper input::-webkit-input-placeholder {
   color: #999;
   font-weight: normal;
   	font-familiy: 'Nanum Gothic';
   /*
   font-style: italic;
   */
}
 
.form-wrapper input:-moz-placeholder {
    color: #999;
    font-weight: normal;
    font-style: italic;
}
 
.form-wrapper input:-ms-input-placeholder {
    color: #999;
    font-weight: normal;
    font-style: italic;
}    
 
/* Form submit button */
/*
.form-wrapper button {
    overflow: visible;
    position: relative;
    float: right;
    border: 0;
    padding: 0;
    cursor: pointer;
    height: 40px;
    width: 110px;
    font: bold 15px/40px 'lucida sans', 'trebuchet MS', 'Tahoma';
    color: #fff;
    text-transform: uppercase;
    background: #d83c3c;
    border-radius: 0 3px 3px 0;      
    text-shadow: 0 -1px 0 rgba(0, 0 ,0, .3);
}   
*/
.form-wrapper button {
    overflow: visible;
    position: relative;
    float: right;
    border: 0;
    padding: 0;
    cursor: pointer;
    height: 40px;
    width: 70px;
    font: bold 15px/40px 'lucida sans', 'trebuchet MS', 'Tahoma';
    color: #fff;
    text-transform: uppercase;
    background: #d83c3c;
    border-radius: 0 3px 3px 0;      
    text-shadow: 0 -1px 0 rgba(0, 0 ,0, .3);
}  
.allSearch button {
	background: #4374D9;
}
   
.form-wrapper button:hover{     
    background: #e54040;
}   
   
.form-wrapper button:active,
.form-wrapper button:focus{   
    background: #c42f2f;
    outline: 0;   
}
 
.form-wrapper button:before { /* left arrow */
    content: '';
    position: absolute;
    border-width: 8px 8px 8px 0;
    border-style: solid solid solid none;
    border-color: transparent #d83c3c transparent;
    top: 12px;
    left: -6px;
}
 
.form-wrapper button:hover:before{
    border-right-color: #e54040;
}
 
.form-wrapper button:focus:before,
.form-wrapper button:active:before{
        border-right-color: #c42f2f;
}      
 
.form-wrapper button::-moz-focus-inner { /* remove extra button spacing for Mozilla Firefox */
    border: 0;
    padding: 0;
}    


</style>

<div id="searchBar">
	<form class="form-wrapper cf" action="#" onsubmit="return itemSearch('Quick')">
	        <input id="searchKeywordQuick" type="text" placeholder=" ex)한식, 양식" ><!-- required -->
	        <button type="submit"><span class="glyphicon glyphicon-search"></span></button>
	        	
	</form>  	 
</div>

<!-- 로고 소스 -->
<div>
<a href="/">
	<!--
	<img id="mainlogo" src="resources/imgs/TastyRoadIcon/Title/FreshMaket-TastyRoad.png">
	-->
	<img id="mainlogo" src="resources/imgs/TastyRoadIcon/Title/FreshMaket-TastyRoad orange.png">
</a>
</div>