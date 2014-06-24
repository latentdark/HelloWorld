<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<style type="text/css">
#searchBar {
/*position: fixed;*/
	position: fixed;
	
	top: 50px;
	left: 440px;
	/*
	background: #A2F6FF;
	*/
	z-index: 1000;
	/*
	padding-left: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-right: 10px;
	*/
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	transition: all 0.3s ease;
	
	
	
	width: 410px;
    z-index: 500;
   
    padding: 5px;
    /* margin: 150px auto 50px auto; */
    background: #444;
    background: rgba(0,0,0,.2);
    border-radius: 10px;
    box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);
}
#loginInjection{
position: fixed;
	
	top: 45px;
	background: #5DCD9D;
	right:0px;
	width:100px;
	height:50px;
	/*
	left: 860px;
	
	
	*/
	z-index: 600;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;

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
</head>
<script>
	//alert("응?");
	var user;
	function signIn(){
		$.ajax({
			type:"POST",
			url:"/signIn",
			//dataType : "json",
			data:{
				email:document.getElementById("user_email").value,
				password:document.getElementById("user_password").value
				}
		}).done(function(res){
			if(res!="fail"){
				var temp=res.split(',');
				for(var i=0;i<temp.length;i++){
					console.log("i_"+i+"__"+temp[i]);
				}
				
				user={
					userNo		:	temp[0].substring(temp[0].search("=")+1),
					email		:	temp[1].substring(temp[1].search("=")+1),
					phoneNumber :	temp[3].substring(temp[3].search("=")+1),
					nickname	:	temp[4].substring(temp[4].search("=")+1),
					active		:	temp[6].substring(temp[6].search("=")+1)
				};
			
				var content;
				content=
					"<ul class=\"nav navbar-nav navbar-right\">"+
	    				"<li class=\"divider-vertical\"></li>"+
	  						"<li class=\"dropdown\">"+
	    						"<a id=\"signin_on\" class=\"dropdown-toggle\" href=\"\" data-toggle=\"dropdown\">"+
	    						"["+user.nickname+"] 님  <strong class=\"caret\"></strong></a>"+
	    						
								"<ul id=\"dropdown_on\" class=\"dropdown-menu\" role=\"menu\">"+
									"<li><a id=\"mypage\" class=\"dropdown_a\" href=\"\">My Page</a></li>"+
			   						"<li><a id=\"signout\" class=\"dropdown_a\" href=\"\">Your Page</a></li>"+	
			   						"<li role=\"presentation\" class=\"divider\"></li>"+		              			    	
			          				"<li><a id=\"signout\" class=\"dropdown_a\" href=\"#\" onclick=\"signOut()\">Sign Out</a></li>"+	
			          			"</ul>"+    
	   				"</ul>";
				$('#loginInjection').html(content);
			}else{
				alert("아이디 또는 비밀번호가 일치하지 않습니다.");
			}
		}).fail(function(res){
			console.log(res);
			console.log("실패");
		});

		return false;
	}
	
	function signOut(){
		console.log("들어오네");
		$.ajax({
			type:"GET",
			url:"/signOut"
		}).done(function(res){
			user=null;
			console.log(res);
			console.log("성공");
			var content;
			content=
				"<ul class=\"nav navbar-nav pull-right\">"+
	     			"<li class=\"divider-vertical\"></li>"+
  						"<li class=\"dropdown\">"+
 	  					"<a id=\"signin\" class=\"dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\">Sign In <strong class=\"caret\"></strong></a>"+
        				"<div class=\"dropdown-menu\">"+
               
            			"<form name=\"signinform\" action=\"#\" method=\"post\" onsubmit=\"return signIn()\">"+
							"<input class=\"form-control\" id=\"user_email\" style=\"margin-bottom: 15px;\" type=\"email\" name=\"email\" size=\"30\" placeholder=\" 이메일\"/>"+
							"<input class=\"form-control\" id=\"user_password\" style=\"margin-bottom: 15px;\" type=\"password\" name=\"password\" size=\"30\" placeholder=\" 비밀번호\"/>"+
							"<input id=\"user_remember_me\" type=\"checkbox\" name=\"user[remember_me]\" value=\"1\" />"+
							"<label class=\"string optional\" for=\"user_remember_me\"> Remember me</label>"+
						 	"<input id=\"signin_submit\" class=\"btn btn-primary\" type=\"submit\" name=\"commit\" value=\"Sign In\" onchange='process()'/>"+
						  	"<a id=\"signup\" href=\"http://192.168.200.56:3000/node.js/signupForm\">Sign Up</a>"+
						"</form>"+
		            "</div>"+
		            "</li>"+
		        "</ul>";
			$('#loginInjection').html(content);
		}).fail(function(res){
			console.log(res);
			console.log("실패");
		});
		console.log("나가네");
	}
</script>
<div id="searchBar">
	<form class="form-wrapper cf" action="#" onsubmit="return itemSearch('Quick')">
	        <input id="searchKeywordQuick" type="text" placeholder="검색어를 입력해주세요" ><!-- required -->
	        <button type="submit">Search</button>
	        	
	</form>  
	 
</div>

<div id="loginInjection">		     		
 	   <ul class="nav navbar-nav pull-right">
 	     		<li class="divider-vertical"></li>
      			<li class="dropdown">
     	  		<a id="signin" class="dropdown-toggle" href="#" data-toggle="dropdown">Sign In <strong class="caret"></strong></a>
         	<div class="dropdown-menu">
              <!-- Login form here -->
            	<form name="signinform" action="#" method="post" onsubmit="return signIn()">
			<input class="form-control" id="user_email" style="margin-bottom: 15px;" type="email" name="email" size="30" placeholder=" 이메일"/>
			<input class="form-control" id="user_password" style="margin-bottom: 15px;" type="password" name="password" size="30" placeholder=" 비밀번호"/>
			<input id="user_remember_me" type="checkbox" name="user[remember_me]" value="1" />
			<label class="string optional" for="user_remember_me"> Remember me</label>
		 	<!--  아직 적용안됐음 (remember me) -->
		  	<input id="signin_submit" class="btn btn-primary" type="submit" name="commit" value="Sign In" onchange='process()'/>
		  	<a id="signup" href="http://192.168.200.56:3000/node.js/signupForm">Sign Up</a>
		</form>
          </div>
          </li>
      </ul>
</div>
	
<script type="text/javascript">
	//이메일칸에 입력전에 submit 버튼 활성화/비활성화
 	document.signinform.commit.disabled = true;  
	document.signinform.onkeyup = process;
	document.signinform.onmouseup = process;
	document.signinform.onmousedown = process;
	
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
