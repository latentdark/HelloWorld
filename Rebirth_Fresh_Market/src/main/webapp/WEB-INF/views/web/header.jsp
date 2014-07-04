<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<style type="text/css">
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
#loginInjection{
position: fixed;
	
	top: 40px;
	background: #5DCD9D;
	right:0px;
	width:auto;
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
}

 
/* Form text input */
 
.form-wrapper input {
    width: 330px;
    height: 40px;
    padding: 10px 5px;
    float: left;    
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
}
 
.form-wrapper input:-ms-input-placeholder {
    color: #999;
    font-weight: normal;
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
    font: bold 15px/40px;
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


#mainlogo{
	position: fixed;
	z-index: 1000;
	bottom:13px;
	right:1px;
	width: 700px;
}

#whoMadeIt{
	position: fixed;
	z-index: 1000;
	bottom:3px;
	left:70px;
	font-family:'impact';
	font-size:20px;
	color:#5dcd9d;
}

#whoMadeIt:hover{
	color:#944AC5;
}

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



#sign_in_menu {
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
	left:-75px;
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

</style>
</head>
<script>
	//alert("응?");
	function FakeMarker(data,map){
			this.position			=new google.maps.LatLng(data.gridX1 , data.gridY1 );
			this.map				=map;
			this.icon				=data.markerImage;
			this.stateCode			=data.stateCode;
			this.itemName			=data.itemName;
			this.userNo				=data.userNo;
			this.itemNo				=data.itemNo;
			this.itemInfo			=data.itemInfo;
			this.itemPicturePath1	=data.itemPicturePath1;
			this.itemPicturePath2	=data.itemPicturePath2;
			this.itemPicturePath3	=data.itemPicturePath3;
			this.category1			=data.category1;
			this.category2			=data.category2;
			this.gridX1				=data.gridX1,
			this.gridY1				=data.gridY1,
			this.distance			=data.distance;
			this.distance_m			=(Math.round(getDistanceFromLatLonInKm(myPosition.k, myPosition.A, data.gridX1, data.gridY1))*10000)/10000;
			this.price				=data.price;
			this.regiDate			=data.regiDate;
			this.identity			='fake';
		}
	
	
	var user={
			userNo		:	null,
			email		:	null,
			phoneNumber :	null,
			nickname	:	null,
			active		:	null
		};
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
				
				user.userNo		=temp[0].substring(temp[0].search("=")+1);
				user.email		=temp[1].substring(temp[1].search("=")+1);
				user.phoneNumber=temp[3].substring(temp[3].search("=")+1);
				user.nickname	=temp[4].substring(temp[4].search("=")+1);
				user.active		=temp[6].substring(temp[6].search("=")+1);
			
				var content;
				content=
					"<ul class=\"nav navbar-nav navbar-right\" >"+
	    				"<li class=\"divider-vertical\"></li>"+
	  						"<li class=\"dropdown\">"+
	    						"<a id=\"signin_on\" class=\"dropdown-toggle\" href=\"\" data-toggle=\"dropdown\">"+
	    						"["+user.nickname+"] 님  <strong class=\"caret\"></strong></a>"+
	    						
								"<ul id=\"dropdown_on\"  class=\"dropdown-menu\" role=\"menu\">"+
									"<li><a id=\"mypage\" class=\"dropdown_a\" href=\"\">My Page</a></li>"+
			   						"<li><a id=\"signout\" class=\"dropdown_a\" href=\"\">Your Page</a></li>"+	
			   						"<li role=\"presentation\" class=\"divider\"></li>"+		              			    	
			          				"<li><a id=\"signout\" class=\"dropdown_a\" href=\"/\" onclick=\"signOut()\">Sign Out</a></li>"+	
			          			"</ul>"+    
	   				"</ul>";
				$('#loginInjection').html(content);
				
				
				//var menu_toggle2_injection;
				$('#menu-toggle2-injection').html("");
					
				
				//var menu_toggle3_injection;
				$('#menu-toggle3-injection').html("");
				
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
			if(res.redirect){
	            window.location.href = response.redirect;
	        }
			/*
			console.log(res);
			console.log("성공");
			var content;
			content=
				"<ul class=\"nav navbar-nav pull-right\">"+
	     			"<li class=\"divider-vertical\"></li>"+
  						"<li class=\"dropdown\">"+
 	  					"<a id=\"signin\" class=\"dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\">Sign In <strong class=\"caret\"></strong></a>"+
        				"<div id=\"sign_in_menu\"  class=\"dropdown-menu\">"+
               
            			"<form name=\"signinform\" action=\"#\" method=\"post\" onsubmit=\"return signIn()\">"+
							"<input class=\"form-control\" id=\"user_email\" style=\"margin-bottom: 15px;\" type=\"email\" name=\"email\" size=\"30\" placeholder=\" 이메일\"/>"+
							"<input class=\"form-control\" id=\"user_password\" style=\"margin-bottom: 15px;\" type=\"password\" name=\"password\" size=\"30\" placeholder=\" 비밀번호\"/>"+
							"<input id=\"user_remember_me\" type=\"checkbox\" name=\"user[remember_me]\" value=\"1\" />"+
							"<label class=\"string optional\" for=\"user_remember_me\"> Remember me</label>"+
						 	"<input id=\"signin_submit\" class=\"btn btn-primary\" type=\"submit\" name=\"commit\" value=\"Sign In\" onchange='process()'/>"+
						  	"<a id=\"signup\" href=\"http://192.168.200.4:3000/\">Sign Up</a>"+
						"</form>"+
		            "</div>"+
		            "</li>"+
		        "</ul>";
			$('#loginInjection').html(content);
			
			
			var menu_toggle2_injection=
				"<div id=\"menu-toggle2-mirror\">"+
					"<a> <img src=\"resources/imgs/slider/Cloud_Add_black.png\" width=70"+
						"height=70 ></img>"+ 
						"<span>물건 팔기/사기<br>로그인이 필요합니다.</span>"+
					"</a>"+
				"</div>";	
			$('#menu-toggle2-injection').html(menu_toggle2_injection);
				
			
			var menu_toggle3_injection=
				"<div id=\"menu-toggle3-mirror\">"+
					"<a> <img src=\"resources/imgs/slider/Handshake-icon.png\" width=70"+
						"height=70></img>"+ 
						"<span>거래현황<br>로그인이 필요합니다.</span>"+
					"</a>"+
				"</div>";
			$('#menu-toggle3-injection').html(menu_toggle3_injection);
			*/
		}).fail(function(res){
			console.log(res);
			console.log("실패");
		});
		console.log("나가네");
	}
	<c:if test="${user!=null}">
		user.userNo		='${user.userNo}';
		user.email		='${user.email}';
		user.phoneNumber='${user.phoneNumber}';
		user.nickname	='${user.nickname}';
		user.active		='${user.active}';
	</c:if>
	/*디버깅용*/
	/*
	console.log("user.usreNo __"+user.userNo);
	console.log("user.email __"+user.email);
	console.log("user.phoneNumber __"+user.phoneNumber);
	console.log("user.nickname __"+user.nickname);
	console.log("user.active __"+user.active);
	*/
	/*임시 작업공간 */
	var countCommentResult;
	function countComment(marker){
		$.ajax({
			type:"POST",
			url:"/countComment",
			data:{
				itemNo:marker.itemNo
			}
		}).done(function(res){
			console.log("marker.itemNo__"+marker.itemNo);
			console.log("ajax__countComment__res__"+res);
			countCommentResult=res;
			console.log("ajax__countCommentResult__"+countCommentResult);
			//console.log(res);
			//refreshData();
			//var combine="'#item"+markerNo+"'";
			//$('#item'+markerNo).modal('hide');
			return true;
			console.log("성공");
		}).fail(function(res){
			console.log(res);
			console.log("실패");
			return false;
		});
	}
	
	
	function Comment(comment){
			this.commentNo			=comment.commentNo;
			this.commentUserNo		=comment.commentUserNo;
			this.replyNo			=comment.replyNo;
			this.replyUserNo		=comment.replyUserNo;
			this.commentWriter		=comment.commentWriter;
			this.replyWriter		=comment.replyWriter;
			this.commentContent		=comment.commentContent;
			this.replyContent		=comment.replyContent;
			this.commentRegiDate	=comment.commentRegiDate;
			this.replyRegiDate		=comment.replyRegiDate;
			this.commentTime		=comment.commentTime;
			this.replyTime			=comment.replyTime;
			this.commentStateCode	=comment.commentStateCode;
			this.replyStateCode		=comment.replyStateCode;
	}
	
	var commentList=[];
	function findComment(marker){
		var async_choice=(marker.async==false)?false:true;
		console.log("marker async 확인_"+marker.async);
		$.ajax({
			async : async_choice,
			type:"POST",
			url:"/findComment",
			data:{
				itemNo:marker.itemNo
			}
		}).done(function(res){
			commentList=[];
			//var temp=res.split(',');
			for(var i=0;i<res.length;i++){
				//console.log("input_i_"+i+"__"+res[i].commentWriter);
				commentList.push(new Comment(res[i]));
			}
			/*디버깅용 - 주석처리*/
			
			/*
			for(var i=0;i<commentList.length;i++){
				console.log("push확인_i_"+i+".commentNo________"+commentList[i].commentNo);
				console.log("push확인_i_"+i+".commentNo________"+commentList[i].commentUserNo);
				console.log("push확인_i_"+i+".replyNo__________"+commentList[i].replyNo);
				console.log("push확인_i_"+i+".replyNo__________"+commentList[i].replyUserNo);
				console.log("push확인_i_"+i+".commentWriter____"+commentList[i].commentWriter);
				console.log("push확인_i_"+i+".replyWriter______"+commentList[i].replyWriter);
				console.log("push확인_i_"+i+".commentContent___"+commentList[i].commentContent);
				console.log("push확인_i_"+i+".replyContent_____"+commentList[i].replyContent);
				console.log("push확인_i_"+i+".commentStateCode_"+i+commentList[i].commentStateCode);
				console.log("push확인_i_"+i+".replyStateCode___"+commentList[i].replyStateCode	);
			}
			*/
			//console.log("itemNo__"+itemNo);
			//console.log("/findComment__"+res);
			/**/
			
			//덧글 innerHTML
			
			replyDiv="<div  class=\"mousescroll\" style=\"height:500px; text-align:left; font-size:13px;\" id=\"accordion\">"+
					"<table class=\"table\">";
			
			for(var i=0;i<commentList.length;i++){				
				
				/*디버깅용 주석처리*/
				/*
				console.log("outer for - i_"+i+"_");
				console.log("commentRegiDate- i_"+commentList[i].commentRegiDate +"_");		
				console.log("commentTime - i_"+ commentList[i].commentTime +"_");	
				*/
			
				replyDiv+="<tr><td><div>";
				replyDiv+="<b>"+commentList[i].commentWriter+"</b>"+
							"<span style=\"color:gray; font-size:12px;\">"+ commentList[i].commentRegiDate+ " / "  + commentList[i].commentTime +" </span>"+
							"<a class=\"accordion-toggle\" data-toggle=\"collapse\" data-parent=\"#accordion\"";
				if(user.userNo!=null){
					replyDiv+="href=\"#replyacco"+commentList[i].commentNo+"\">답글</a>";
				}else{
					replyDiv+="href=\""+commentList[i].commentNo+"\"></a>";
				}
				
				if(user.userNo==commentList[i].commentUserNo){
					replyDiv+="<a style=\"cursor:pointer\" onclick=\"removeComment("+commentList[i].commentNo+","+marker.itemNo+")\"> 삭제</a>";
				}
				
				replyDiv+="<p><span>"+commentList[i].commentContent+"</span></p>";
				
				//depth 2 level In
				if(commentList[i].replyNo !=null){
					var commentNoCheck=commentList[i].commentNo;
					
					
					while(i<commentList.length){
						/*디버깅용 주석처리*/
						//console.log("inner for - i_"+i+"_");
						
						//depth 2 level comment write
						replyDiv+="<tr><td><div class=\"reReply\">"+
									"<span style=\"float:left;color: orangered;margin-right:3.3px;\">"+
										"┗</span><b>"+commentList[i].replyWriter+"</b>"+
										"<span style=\"color:gray; font-size:12px;\">"+ commentList[i].replyRegiDate+ " / " + commentList[i].replyTime +
										" </span><a class=\"accordion-toggle\" data-toggle=\"collapse\" data-parent=\"#accordion\" ";
						if(user.userNo!=null){
							replyDiv+="href=\"#replyacco"+commentList[i].commentNo+"\">답글</a>";
						}else{
							replyDiv+="href=\""+commentList[i].commentNo+"\"></a>";
						}
						if(user.userNo==commentList[i].replyUserNo){
							replyDiv+="<a style=\"cursor:pointer\" onclick=\"removeReply("+commentList[i].replyNo+","+marker.itemNo+")\"> 삭제</a>";
						}
						
						
						replyDiv+=		"<p style=\"margin-left:16.5px;\">"+
										"<span>"+commentList[i].replyContent+"</span></p>"+
								  "</div></td></tr>";
						//next not null일경우 
					    if((i+1)<commentList.length){
					    	if(commentNoCheck!=commentList[i+1].commentNo){
					    		replyDiv+=
					    			"<tr class=\"success\"><td><div class=\"reReply\">"+
										"<div id=\"replyacco"+commentList[i].commentNo+"\"  class=\"panel-collapse collapse\">"+
									      "<div class=\"panel-body\" style=\"padding-top:0px; padding-bottom:5px; padding-left:0px; padding-right:0px\">"+
										     // "<hr>"+
										      "<span style=\"float:left;color: orangered;\">┗</span>"+
									    	  "<div style=\"width:380px; float:left; margin-right:10px; margin-left:5px;\">"+
										  	  	"<textarea id=\"addReplyArea"+commentList[i].commentNo+"\" name=\"replyTextarea\" class=\"form-control\" rows=\"3\" placeholder=\"덧글 내용을 입력하세요\"></textarea>"+
										      "</div>"+
										  	  "<div>"+	
											  	"<button type=\"button\" id=\"replyregi\" class=\"btn btn-default\" onclick=\"addReply("+commentList[i].commentNo+","+marker.itemNo+")\" style=\"margin-top: 40px;\">덧글입력</button>"+
										      "</div>"+
										     // "<hr>"+
									 	  "</div>"+
									    "</div>"+
								    "</div></td></tr>";
								break;
							}/*else{
						    	replyDiv+=
					    			"<tr class=\"success\"><td><div class=\"reReply\">"+
										"<div id=\"replyacco"+commentList[i].commentNo+"\"  class=\"panel-collapse collapse\">"+
									      "<div class=\"panel-body\" style=\"padding-top:0px; padding-bottom:5px; padding-left:0px; padding-right:0px\">"+
										     // "<hr>"+
										      "<span style=\"float:left;color: orangered;\">┗</span>"+
									    	  "<div style=\"width:380px; float:left; margin-right:10px; margin-left:5px;\">"+
										  	  	"<textarea name=\"replyTextarea\" class=\"form-control\" rows=\"3\" placeholder=\"덧글 내용을 입력하세요\"></textarea>"+
										      "</div>"+
										  	  "<div>"+	
											  	"<button type=\"button\" id=\"replyregi\" class=\"btn btn-default\" onclick=\"addReply("+commentList[i].commentNo+","+marker.itemNo+")\" style=\"margin-top: 40px;\">덧글입력</button>"+
										      "</div>"+
										     // "<hr>"+
									 	  "</div>"+
									    "</div>"+
								    "</div></td></tr>";
						    }
					    	*/
					    }else{
					    	replyDiv+=
				    			"<tr class=\"success\"><td><div class=\"reReply\">"+
									"<div id=\"replyacco"+commentList[i].commentNo+"\"  class=\"panel-collapse collapse\">"+
								      "<div class=\"panel-body\" style=\"padding-top:0px; padding-bottom:5px; padding-left:0px; padding-right:0px\">"+
									     // "<hr>"+
									      "<span style=\"float:left;color: orangered;\">┗</span>"+
								    	  "<div style=\"width:380px; float:left; margin-right:10px; margin-left:5px;\">"+
									  	  	"<textarea id=\"addReplyArea"+commentList[i].commentNo+"\" name=\"replyTextarea\" class=\"form-control\" rows=\"3\" placeholder=\"덧글 내용을 입력하세요\"></textarea>"+
									      "</div>"+
									  	  "<div>"+	
										  	"<button type=\"button\" id=\"replyregi\" class=\"btn btn-default\" onclick=\"addReply("+commentList[i].commentNo+","+marker.itemNo+")\" style=\"margin-top: 40px;\">덧글입력</button>"+
									      "</div>"+
									     // "<hr>"+
								 	  "</div>"+
								    "</div>"+
							    "</div></td></tr>";
					    }
					    i++;
					}
				}else{
			    	replyDiv+=
		    			"<tr class=\"success\"><td><div class=\"reReply\">"+
							"<div id=\"replyacco"+commentList[i].commentNo+"\"  class=\"panel-collapse collapse\">"+
						      "<div class=\"panel-body\" style=\"padding-top:0px; padding-bottom:5px; padding-left:0px; padding-right:0px\">"+
							     // "<hr>"+
							      "<span style=\"float:left;color: orangered;\">┗</span>"+
						    	  "<div style=\"width:380px; float:left; margin-right:10px; margin-left:5px;\">"+
							  	  	"<textarea id=\"addReplyArea"+commentList[i].commentNo+"\" name=\"replyTextarea\" class=\"form-control\" rows=\"3\" placeholder=\"덧글 내용을 입력하세요\"></textarea>"+
							      "</div>"+
							  	  "<div>"+	
								  	"<button type=\"button\" id=\"replyregi\" class=\"btn btn-default\" onclick=\"addReply("+commentList[i].commentNo+","+marker.itemNo+")\"  style=\"margin-top: 40px;\">덧글입력</button>"+
							      "</div>"+
							     // "<hr>"+
						 	  "</div>"+
						    "</div>"+
					    "</div></td></tr>";
			    }
				replyDiv+="</div></td></tr>";
			}
			replyDiv+=	"</table>"+
						"</div>";
						
			//여기서부터 댓글 섹터
			if(user.userNo==null){
				console.log("user==null");
				replyDiv+=	"<hr>"+
					 		"<div style=\"width: 450px;float: left;\">"+
								"<textarea name=\"replyTextarea\" class=\"form-control\" rows=\"3\" placeholder=\"로그인 후에 이용하실수 있습니다.\"></textarea>"+
							"</div>"+
							"<div>"+	
								"<button type=\"button\" id=\"replyregi\" class=\"btn btn-default\" onclick=\"alert('로그인 후에 이용해주세요~^^')\" style=\"margin-top: 40px;\">덧글입력</button>"+
						    "</div>";
			}
			if(user.userNo!=null){
				console.log("user not null");
				console.log("user=="+user);
				replyDiv+=	"<hr>"+
					 		"<div style=\"width: 450px;float: left;\">"+
								"<textarea id=\"addCommentArea\" name=\"replyTextarea\" class=\"form-control\" rows=\"3\" placeholder=\"덧글 내용을 입력하세요\"></textarea>"+
							"</div>"+
							"<div>"+	
								"<button type=\"button\" id=\"replyregi\" class=\"btn btn-default\" onclick=\"addComment("+marker.itemNo+")\"  style=\"margin-top: 40px;\">덧글입력</button>"+
						    "</div>";
			}
			//-----------------------------------------------------------------------
			
			console.log("findComment(marker) 성공 및 완료");
			if(async_choice==false){
				$('#mmodal').html(replyDiv);
				$('#replyButton').html("내용보기");
			}
			return "success";
		}).fail(function(res){
			console.log(res);
			console.log("실패");
			return "fail";
		});
	}
	
	function addComment(itemNo_temp){
		var content=document.getElementById("addCommentArea").value;
		if(content.length<2){
			alert("댓글은 2자 이상 입력하셔야 합니다.");
			return false;
		}
		
		//var userNo;
		$.ajax({
			async : false,
			type:"POST",
			url:"/addComment",
			data:{
				itemNo:itemNo,
				userNo:user.userNo,
				content:content
			}
		}).done(function(res){
			var temp={
					itemNo:itemNo_temp,
					async : false
			}
			console.log("temp async 확인_"+temp.async);
			findComment(temp);

			console.log("/addComment 종료지점");
			console.log(res);
			
			console.log("addComment(itemNo_temp) 성공 및 완료");
			return true;
			
		}).fail(function(res){
			console.log(res);
			console.log("실패");
			return false;
		});
	}
	
	
	function addReply(commentNo,itemNo_temp){
		var content=document.getElementById("addReplyArea"+commentNo).value;
		if(content.length<2){
			alert("댓글은 2자 이상 입력하셔야 합니다.");
			return false;
		}
		
		//var userNo;
		$.ajax({
			async : false,
			type:"POST",
			url:"/addReply",
			data:{
				commentNo:commentNo,
				userNo:user.userNo,
				content:content
			}
		}).done(function(res){
			var temp={
					itemNo:itemNo_temp,
					async : false
			}
			console.log("temp async 확인_"+temp.async);
			findComment(temp);
			
			console.log("/addReply 종료지점");
			console.log(res);
			
			console.log("addReply(itemNo_temp) 성공 및 완료");
			return true;
			
		}).fail(function(res){
			console.log(res);
			console.log("실패");
			return false;
		});
	}
	
	function removeComment(commentNo, itemNo_temp){
		if(confirm("정말 삭제하시겠습니까?")){
	        alert("삭제되었습니다.");
	    }else{
	        alert("삭제취소"); 
	       	return false;
	    }
		console.log("remove Comment Half");
		console.log("commentNo_"+commentNo);
		//var userNo;
		$.ajax({
			async : false,
			type:"POST",
			url:"/removeComment",
			data:{
				commentNo:commentNo
			}
		}).done(function(res){
			var temp={
					itemNo:itemNo_temp,
					async : false
			}
			console.log("temp async 확인_"+temp.async);
			findComment(temp);
			
			console.log("/removeComment 종료지점");
			console.log(res);
			
			console.log("removeComment(itemNo_temp) 성공 및 완료");
			return true;
			
		}).fail(function(res){
			console.log(res);
			console.log("실패");
			return false;
		});
	}
	
	function removeReply(replyNo, itemNo_temp){
		if(confirm("정말 삭제하시겠습니까?")){
	        alert("삭제되었습니다.");
	    }else{
	        alert("삭제취소"); 
	       	return false;
	    }
		console.log("removeReply Half");
		console.log("replyNo_"+replyNo);
		//var userNo;
		$.ajax({
			async : false,
			type:"POST",
			url:"/removeReply",
			data:{
				replyNo:replyNo
			}
		}).done(function(res){
			var temp={
					itemNo:itemNo_temp,
					async : false
			}
			console.log("temp async 확인_"+temp.async);
			findComment(temp);
			
			console.log("/removeComment 종료지점");
			console.log(res);
			
			console.log("removeComment(itemNo_temp) 성공 및 완료");
			return true;
			
		}).fail(function(res){
			console.log(res);
			console.log("실패");
			return false;
		});
	}
	
	function removeWish(temp_itemNo){			
		$.ajax({
			async : false,
			type:"POST",
			url:"/removeWish",
			data:{
				userNo:user.userNo,
				itemNo:temp_itemNo
			}
		}).done(function(res){
			console.log("res"+res);
			console.log("ajax 정상응답");
			findWishList(false);
			aleft("삭제되었습니다.");
			
		}).fail(function(res){
			console.log(res);
			console.log("ajax error");
		});
	}
	/*임시 작업공간 */
</script>
<div id="searchBar">
	<form class="form-wrapper cf" action="#" onsubmit="return itemSearch('Quick')">
	        <input id="searchKeywordQuick" type="text" placeholder=" 물품명을 입력해주세요" ><!-- required -->
	        <button type="submit"><span class="glyphicon glyphicon-search"></span></button>
	        	
	</form>  	 
</div>

<div>
<a href="/" id="whoMadeIt">
<!-- 	<img id="whoMadeIt"  src="resources/imgs/WMI3.png">
 -->
 WHO MADE IT?
 </a>
</div>

<div>
<a href="/">
	<img id="mainlogo" src="resources/imgs/logo5re.png">
</a>
</div>

<c:if test='${user==null}'>
<div id="loginInjection">		     		
 	   <ul class="nav navbar-nav pull-right">
 	     		<li class="divider-vertical"></li>
      			<li class="dropdown">
     	  		<a id="signin" class="dropdown-toggle" href="#" data-toggle="dropdown">Sign In <strong class="caret"></strong></a>
         	<div id="sign_in_menu" class="dropdown-menu">
              <!-- Login form here -->
            	<form name="signinform" action="#" method="post" onsubmit="return signIn()">
			<input class="form-control" id="user_email" style="margin-bottom: 15px;" type="email" name="email" size="30" placeholder=" 이메일"/>
			<input class="form-control" id="user_password" style="margin-bottom: 15px;" type="password" name="password" size="30" placeholder=" 비밀번호"/>
			<input id="user_remember_me" type="checkbox" name="user[remember_me]" value="1" />
			<label class="string optional" for="user_remember_me"> Remember me</label>
		 	<!--  아직 적용안됐음 (remember me) -->
		  	<input id="signin_submit" class="btn btn-primary" type="submit" name="commit" value="Sign In" onchange='process()'/>
		  	<a id="signup" href="http://192.168.200.80:3000/">Sign Up</a>
		</form>
          </div>
          </li>
      </ul>  
</div>
</c:if>	

<c:if test='${user!=null}'>
<div id="loginInjection">
	<ul class="nav navbar-nav navbar-rightz">
		<li class="divider-vertical"></li>
			<li class="dropdown">
				<a id="signin_on" class="dropdown-toggle" href="" data-toggle="dropdown">
				${user.nickname} 님  <strong class="caret"></strong></a>
						
		<ul id="dropdown_on" class="dropdown-menu" role="menu">
			<li><a id="mypage" class="dropdown_a" href="">My Page</a></li>
				<li><a id="signout" class="dropdown_a" href="">Your Page</a></li>	
				<li role="presentation" class="divider"></li>		              			    	
      			<li><a id="signout" class="dropdown_a" href="" onclick="signOut()">Sign Out</a></li>	
      	</ul>   
	</ul>
</div>
</c:if>	
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
