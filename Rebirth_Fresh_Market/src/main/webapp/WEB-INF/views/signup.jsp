<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
			background-image: url("/resources/imgs/bg6.png");
			border-style: none;
			font-size:15px;
			font-familiy:'Nanum Gothic'
		}
		#start,#deal,#login{
			margin-top : 3px;
			color:white;
			background:none;
		}
	
		
		#start:hover, #deal:hover, #login:hover{
			color:gray;
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
		}
		
		
		/* 섹션 부분  */
		#content{
			padding-top: 60px;
		}
		
		.margin-top-20{
		  margin-top: 20px;
		}
		body{
		  background-image: url("/resources/imgs/bg6.png"); 
/* 		  background-size:100% 100%; */
		  background-attachment: fixed; 
		  background-repeat:no-repeat;
		  font-family: 'Open Sans', sans-serif;
		  padding-bottom: 40px;
		}
		.auth h1{
		  color:#fff!important;
		  font-weight:300;
		  font-family: 'Open Sans', sans-serif;
		}
		.auth h1 span{
		  font-size:21px;
		  display:block;
		  padding-top: 20px;
		}
		.auth .auth-box legend{
		  color:#fff;
		  border:none;
		  font-weight:300;
		  font-size:24px;
		}
		.auth .auth-box{
		  background-color:#fff;
		  max-width:460px;
		  margin:0 auto;
		  border:1px solid rgba(255, 255, 255, 0.4);;
		  background-color: rgba(255, 255, 255, 0.2);
		  background: rgba(255, 255, 255, 0.2);
		  margin-top:40px;
		  -webkit-box-shadow: 0px 0px 30px 0px rgba(50, 50, 50, 0.32);
		  -moz-box-shadow:    0px 0px 30px 0px rgba(50, 50, 50, 0.32);
		  box-shadow:         0px 0px 30px 0px rgba(50, 50, 50, 0.32);
		  -webkit-border-radius: 3px;
		  -moz-border-radius: 3px;
		  border-radius: 3px;
		  -webkit-transition: background 1s ease-in-out;
		  -moz-transition: background 1s ease-in-out;
		  -ms-transition: background 1s ease-in-out;
		  -o-transition: background 1s ease-in-out;
		  transition: background 1s ease-in-out;
		}
		@media(max-width:460px){
		  .auth .auth-box{
		   margin:0 10px;
		 }
		}
		
		.auth .auth-box input::-webkit-input-placeholder { /* WebKit browsers */
		  color:    #fff;
		  font-weight:300;
		}
		.auth .auth-box input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
		  color:    #fff;
		  font-weight:300;
		}
		.auth .auth-box input::-moz-placeholder { /* Mozilla Firefox 19+ */
		  color:    #fff;
		  font-weight:300;
		}
		.auth .auth-box input:-ms-input-placeholder { /* Internet Explorer 10+ */
		  color:    #fff;
		  font-weight:300;
		}
		.auth span.input-group-addon,
		.input-group-btn button{
		  border:none;
		  background: #fff!important;
		  color:#000!important;
		}
		.auth form{
		    font-weight:300!important;
		}
		.auth form input[type="text"],
		.auth form input[type="password"],
		.auth form input[type="email"],
		.auth form input[type="search"]{
		  border:none;
		  padding:10px 0 10px 0;
		  background-color: rgba(255, 255, 255, 0)!important;
		  background: rgba(255, 255, 255, 0);
		  color:#fff;
		  font-size:16px;
		  border-bottom:1px dotted #fff;
		  border-radius:0;
		  box-shadow:none!important;
		  height:auto;
		}
		.auth textarea{
		  background-color: rgba(255, 255, 255, 0)!important;
		  color:#fff!important;
		}
		.auth input[type="file"] {
		  color:#fff;
		}
		.auth form label{
		    color:#fff;
		    font-size:21px;
		    font-weight:300;
		}
		/*for radios & checkbox labels*/
		.auth .radio label,
		.auth label.radio-inline,
		.auth .checkbox label,
		.auth label.checkbox-inline{
		    font-size: 14px;    
		}
		
		.auth form .help-block{
		    color:#fff;
		}
		.auth form select{
		  background-color: rgba(255, 255, 255, 0)!important;
		  background: rgba(255, 255, 255, 0);
		  color:#fff!important;
		  border-bottom:1px solid #fff!important;
		  border-radius:0;
		  box-shadow:none;
		}
		.auth form select option{
		    color:#000;
		}
		/*multiple select*/
		.auth select[multiple] option, 
		.auth select[size] {
		  color:#fff!important;
		}
		
		/*Form buttons*/
		.auth form .btn{
		  background:none;
		  -webkit-transition: background 0.2s ease-in-out;
		  -moz-transition: background 0.2s ease-in-out;
		  -ms-transition: background 0.2s ease-in-out;
		  -o-transition: background 0.2s ease-in-out;
		  transition: background 0.2s ease-in-out;
		}
		.auth form .btn-default{
		    color:#fff;
		    border-color:#fff;
		}
		.auth form .btn-default:hover{
		    background:rgba(225, 225, 225, 0.3);
		  color:#fff;
		  border-color:#fff;
		}
		.auth form .btn-primary:hover{
		    background:rgba(66, 139, 202, 0.3);
		}
		.auth form .btn-success:hover{
		    background:rgba(92, 184, 92, 0.3);
		}
		.auth form .btn-info :hover{
		    background:rgba(91, 192, 222, 0.3);
		}
		.auth form .btn-warning:hover{
		    background:rgba(240, 173, 78, 0.3);
		}
		.auth form .btn-danger:hover{
		    background:rgba(217, 83, 79, 0.3);
		}
		.auth form .btn-link{
		  border:none;
		  color:#fff;
		  padding-left:0;
		}
		.auth form .btn-link:hover{
		  background:none;
		}
		
		
		.auth label.label-floatlabel {
		  font-weight: 300;
		  font-size: 11px;
		  color:#fff;
		  left:0!important;
		  top: 1px!important;
		}
		
		#signup_submit{
			margin-left: 340px;
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
	
	
	//이메일 체크
	function check_mail(cg) {
		mail01 = /[^@]+@[A-Za-z0-9_-]+[.]+[A-Za-z]+/;
		mail02 = /[^@]+@[A-Za-z0-9_-]+[.]+[A-Za-z0-9_-]+[.]+[A-Za-z]+/;
		mail03 = /[^@]+@[A-Za-z0-9_-]+[.]+[A-Za-z0-9_-]+[.]+[A-Za-z0-9_-]+[.]+[A-Za-z]+/;
		if(mail01.test(cg.value)) return true;
		if(mail02.test(cg.value)) return true;
		if(mail03.test(cg.value)) return true;		
		return false;
	}
	
	(function(e,t,n,r)
			{function o(t,n)
			{this.$element=e(t);
			this.settings=e.extend({},s,n);
			this.init()}
			var i="floatlabel",
				s={slideInput:true,
					labelStartTop:"20px",
					labelEndTop:"10px",
					transitionDuration:.3,
					transitionEasing:"ease-in-out",
					labelClass:"",typeMatches:/text|password|email|number|search|url/};
				o.prototype={init:function(){
					var e=this;
					var n={"-webkit-transition":"all "+this.settings.transitionDuration+"s "+this.settings.transitionEasing,
					"-moz-transition":"all "+this.settings.transitionDuration+"s "+this.settings.transitionEasing,
					"-o-transition":"all "+this.settings.transitionDuration+"s "+this.settings.transitionEasing,
					"-ms-transition":"all "+this.settings.transitionDuration+"s "+this.settings.transitionEasing,
					transition:"all "+this.settings.transitionDuration+"s "+this.settings.transitionEasing};
			if(this.$element.prop("tagName").toUpperCase()!=="INPUT"){return}if(!this.settings.typeMatches.test(this.$element.attr("type"))){return}var r=this.$element.attr("id");
			if(!r){r=Math.floor(Math.random()*100)+1;this.$element.attr("id",r)}
			var i=this.$element.attr("placeholder");var s=this.$element.data("label");
			var o=this.$element.data("class");if(!o){o=""}if(!i||i===""){i="You forgot to add placeholder attribute!"}if(!s||s===""){s=i}this.inputPaddingTop=parseFloat(this.$element.css("padding-top"))+10;
			this.$element.wrap('<div class="floatlabel-wrapper" style="position:relative"></div>');
			this.$element.before('<label for="'+r+'" class="label-floatlabel '+this.settings.labelClass+" "+o+'">'+s+"</label>");
			this.$label=this.$element.prev("label");
			this.$label.css({position:"absolute",
				top:this.settings.labelStartTop,left:this.$element.css("padding-left"),
				display:"none",
				"-moz-opacity":"0",
				"-khtml-opacity":"0",
				"-webkit-opacity":"0",
				opacity:"0"});
			if(!this.settings.slideInput){this.$element.css({"padding-top":this.inputPaddingTop})}this.$element.on("keyup blur change",
					function(t){e.checkValue(t)});
			t.setTimeout(function(){e.$label.css(n);
			e.$element.css(n)},100);
			this.checkValue()},
			checkValue:function(e){if(e){var t=e.keyCode||e.which;
			if(t===9){return}}
			var n=this.$element.data("flout");
			if(this.$element.val()!==""){this.$element.data("flout","1")}if(this.$element.val()===""){this.$element.data("flout","0")}if(this.$element.data("flout")==="1"&&n!=="1"){this.showLabel()}if(this.$element.data("flout")==="0"&&n!=="0"){this.hideLabel()}},
			showLabel:function(){var e=this;e.$label.css({display:"block"});
			t.setTimeout(function(){e.$label.css({top:e.settings.labelEndTop,
				"-moz-opacity":"1","-khtml-opacity":"1","-webkit-opacity":"1",opacity:"1"});
			if(e.settings.slideInput){e.$element.css({"padding-top":e.inputPaddingTop})}},50)},
				hideLabel:function(){var e=this;e.$label.css({top:e.settings.labelStartTop,"-moz-opacity":"0","-khtml-opacity":"0","-webkit-opacity":"0",opacity:"0"});
				if(e.settings.slideInput){e.$element.css({"padding-top":parseFloat(e.inputPaddingTop)-10})}t.setTimeout(function(){e.$label.css({display:"none"})},
						e.settings.transitionDuration*1e3)}};
			e.fn[i]=function(t){return this.each(function(){if(!e.data(this,"plugin_"+i)){e.data(this,"plugin_"+i,new o(this,t))}})}})(jQuery,window,document)

	$(document).ready(function(){
	  //Floatlabel
	  $('#main_section input').floatlabel();
/* 	  $('a, button').click(function(e){
	    e.preventDefault();
	  }); */
	});
	</script>	
</head>
<body>
	<header>
		<div class="navbar navbar-inverse navbar-fixed-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="/"><img src="/resources/imgs/logo5.png" width="140" height="20"></a>
	        </div>
	        <div class="collapse navbar-collapse">
	          <ul class="nav navbar-nav">
	            <li><a id="start" href="#">시작하기</a></li>
	            <li><a id="deal" href="sellBuy">사고팔기</a></li>
	          </ul>
	          <ul class="nav navbar-nav pull-right">
	            <li class="divider-vertical"></li>
	          	<li class="dropdown">
	            <a id="login" class="dropdown-toggle" href="" data-toggle="dropdown">로그인 <strong class="caret"></strong></a>
	            <div class="dropdown-menu">
	              <!-- Login form here -->
		            <form name="loginform" action="" method="post" accept-charset="UTF-8">
					  <input class="form-control" id="user_email" style="margin-bottom: 15px;" type="email" name="useremail" size="30" placeholder=" 이메일"/>
					  <input class="form-control" id="user_password" style="margin-bottom: 15px;" type="password" name="password" size="30" placeholder=" 비밀번호"/>
					  <input id="user_remember_me" style="float: left; margin-right: 10px;" type="checkbox" name="user[remember_me]" value="1" />
					  <label class="string optional" for="user_remember_me"> Remember me</label>
					 <!--  아직 적용안됐음 (remember me) -->
					  <input id="login_submit" class="btn btn-primary" type="submit" name="commit" value="Sign In" onchange='proces()'/>
					  <a id="signup" href="/signup">Sign Up</a>
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
	<header>
	<script type="text/javascript">
	//이메일칸에 입력전에 submit 버튼 활성화/비활성화
	document.loginform.commit.disabled = true;
	document.onkeyup = proces;
	document.onmouseup = proces;
	document.onmousedown = proces;
	
	//알고리즘 개선하였음.
	function proces() {
		if (document.loginform.useremail.value == '' 
			||document.loginform.user_password.value == '') {   
			document.loginform.commit.disabled = true;
		} 
		else if(document.loginform.user_password.value != ''
				&&document.loginform.user_password.value.length >=8 ){	
			document.loginform.commit.disabled = false; 
		}
	}
	</script>
	
	<div id="content">
	    <section id="main_section">
			<div class="container auth">
			   <!--  <h1 class="text-center">Sign up<span>It's nice!</span> </h1>-->
			     <div id="big-form" class="well auth-box">
			    	 
			    	 
			      <!-- 회원 가입 부분  -->
			    
			      <form action="/successSignup" method="POST">
			        <fieldset>
				
			          <!-- Form Name -->
			          <legend>Fresh Market</legend>
			      
			          <!-- Text input-->
			          <div class="form-group">
			            <!-- <label class=" control-label" for="textinput">Email</label>  
			             -->
			              <div class="">
			              <input id="email" name="email" placeholder="이메일" class="form-control input-md" type="email">
			           	  <br>
			           	  <input id="password" name="password" placeholder="비밀번호" class="form-control input-md" type="password">
			              <br>
			              <input id="confirmpassword" name="confirmpassword" placeholder="비밀번호 재확인" class="form-control input-md" type="password">
			              <br>
			              <input id="nickName" name="nickName" placeholder="별명" class="form-control input-md" type="text">
			           	  <br>
			              <input id="phoneNumber" name="phoneNumber" placeholder="휴대폰 번호" class="form-control input-md" type="text">
			              <br>
			           	  <input id="signup_submit" name="signup_submit" class="btn btn-default" type="submit" value="가입하기">
			            </div>
			          </div>
			         
					  
			          <!-- Select Basic -->
			          <!-- 
			          <div class="form-group">
			            <label class=" control-label" for="selectbasic">Country</label>
			            <div class="">
			              <select id="selectbasic" name="selectbasic" class="form-control">
			                <option value="1">Option one</option>
			                <option value="2">Option two</option>
			              </select>
			            </div>
			          </div>
			
			          Multiple Radios
			          <div class="form-group">
			            <label class=" control-label" for="radios">Are you awesome</label>
			            <div class="">
			              <div class="radio">
			                <label for="radios-0">
			                  <input name="radios" id="radios-0" value="1" checked="checked" type="radio">
			                  Yes
			                </label>
			              </div>
			              <div class="radio">
			                <label for="radios-1">
			                  <input name="radios" id="radios-1" value="2" type="radio">
			                  No
			                </label>
			              </div>
			            </div>
			          </div>
			
			          Button
			          <div class="form-group">
			            <label class=" control-label" for="singlebutton">Do you like this button</label>
			            <div class="">
			              <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
			            </div>
			          </div>
			          <div class="form-group">
			            <label class=" control-label" for="singlebutton">And this?</label>
			            <div class="">
			              <button id="singlebutton" name="singlebutton" class="btn btn-default">Button</button>
			            </div>
			          </div>
			
			
			          Button (Double)
			          <div class="form-group">
			            <label class=" control-label" for="button1id">Double the action</label>
			            <div class="">
			              <button id="button1id" name="button1id" class="btn btn-success">Good Button</button>
			              <button id="button2id" name="button2id" class="btn btn-danger">Scary Button</button>
			            </div>
			          </div>
			
			          File Button 
			          <div class="form-group">
			            <label class=" control-label" for="filebutton">Avatar</label>
			            <div class="">
			              <input id="filebutton" name="filebutton" class="input-file" type="file">
			            </div>
			          </div>
			
			          Select Multiple
			          <div class="form-group">
			            <label class=" control-label" for="selectmultiple">Category</label>
			            <div class="">
			              <select id="selectmultiple" name="selectmultiple" class="form-control" multiple="multiple">
			                <option value="1">Option one</option>
			                <option value="2">Option two</option>
			              </select>
			            </div>
			          </div>
			
			          Multiple Radios (inline)
			          <div class="form-group">
			            <label class=" control-label" for="radios">Do you like pie?</label>
			            <div class=""> 
			              <label class="radio-inline" for="radios-0">
			                <input name="radios" id="radios-0" value="1" checked="checked" type="radio">
			                yes
			              </label> 
			              <label class="radio-inline" for="radios-1">
			                <input name="radios" id="radios-1" value="2" type="radio">
			                No
			              </label> 
			              <label class="radio-inline" for="radios-2">
			                <input name="radios" id="radios-2" value="3" type="radio">
			                what is pie?
			              </label> 
			              <label class="radio-inline" for="radios-3">
			                <input name="radios" id="radios-3" value="4" type="radio">
			                I hate it!
			              </label>
			            </div>
			          </div>
			
			          Multiple Checkboxes
			          <div class="form-group">
			            <label class=" control-label" for="checkboxes">Extra features</label>
			            <div class="">
			              <div class="checkbox">
			                <label for="checkboxes-0">
			                  <input name="checkboxes" id="checkboxes-0" value="1" type="checkbox">
			                  Paper plains
			                </label>
			              </div>
			              <div class="checkbox">
			                <label for="checkboxes-1">
			                  <input name="checkboxes" id="checkboxes-1" value="2" type="checkbox">
			                  Iron man
			                </label>
			              </div>
			            </div>
			          </div>
			
			          Multiple Checkboxes (inline)
			          <div class="form-group">
			            <label class=" control-label" for="checkboxes">Any more?</label>
			            <div class="">
			              <label class="checkbox-inline" for="checkboxes-0">
			                <input name="checkboxes" id="checkboxes-0" value="1" type="checkbox">
			                One
			              </label>
			              <label class="checkbox-inline" for="checkboxes-1">
			                <input name="checkboxes" id="checkboxes-1" value="2" type="checkbox">
			                Two
			              </label>
			              <label class="checkbox-inline" for="checkboxes-2">
			                <input name="checkboxes" id="checkboxes-2" value="3" type="checkbox">
			                Drum and bass
			              </label>
			              <label class="checkbox-inline" for="checkboxes-3">
			                <input name="checkboxes" id="checkboxes-3" value="4" type="checkbox">
			                Dub
			              </label>
			            </div>
			          </div>
			
			          Search input
			          <div class="form-group">
			            <label class=" control-label" for="searchinput">Search Input</label>
			            <div class="">
			              <input id="searchinput" name="searchinput" placeholder="placeholder" class="form-control input-md" type="search">
			              <p class="help-block">help</p>
			            </div>
			          </div>
			
			          Textarea
			          <div class="form-group">
			            <label class=" control-label" for="textarea">Text Area</label>
			            <div class="">                     
			              <textarea class="form-control" id="textarea" name="textarea">default text</textarea>
			            </div>
			          </div>
			 -->
			        </fieldset>
			      </form>
			    </div>
			    <div class="clearfix"></div>
			  </div>
		</section>
	</div>
			
		
	<footer></footer>		
</body>
</html>