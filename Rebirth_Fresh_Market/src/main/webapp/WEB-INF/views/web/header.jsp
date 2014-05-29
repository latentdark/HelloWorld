<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<div class="navbar navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            </button>
		            <a class="navbar-brand" href="/"><img id="brand_img" src="/resources/imgs/logo5.png" width="140" height="20"></a>
		        </div>
		        <div class="collapse navbar-collapse">
		        	<ul class="nav navbar-nav">
		            	<li><a id="start" href="#">시작하기</a></li>
		            	<li><a id="deal" href="/itemMapView">사고팔기</a></li>
		            </ul>
		          	<ul class="nav navbar-nav pull-right">
		            	<li class="divider-vertical"></li>
		          		<li class="dropdown">
		     
		     		    <!-- 로그인버튼, 로그인차, 마이페이지 --> 		
		     	     	<c:if test="${user==null}">
		         	  		<a id="login" class="dropdown-toggle" href="" data-toggle="dropdown">로그인 <strong class="caret"></strong></a>
			            	<div class="dropdown-menu">
				                <!-- Login form here -->
				              	<form name="loginform" action="/signin" method="post">
									<input class="form-control" id="user_email" style="margin-bottom: 15px;" type="email" name="email" size="30" placeholder=" 이메일"/>
									<input class="form-control" id="user_password" style="margin-bottom: 15px;" type="password" name="password" size="30" placeholder=" 비밀번호"/>
									<input id="user_remember_me" style="float: left; margin-right: 10px;" type="checkbox" name="user[remember_me]" value="1" />
									<label class="string optional" for="user_remember_me"> Remember me</label>
								 	<!--  아직 적용안됐음 (remember me) -->
								  	<input id="login_submit" class="btn btn-primary" type="submit" name="commit" value="Sign In" onchange='process()'/>
								  	<a id="signup" href="http://192.168.200.56:3000/node.js/signupForm">Sign Up</a>
								</form>
				            </div>
			            </c:if>
		            
		            	<c:if test="${user!=null}">
		               		<a id="welcome" class="dropdown-toggle" href="" data-toggle="dropdown">${user.nickname} 님 환영합니다! <strong class="caret"></strong></a>
							<div class="dropdown-menu">
			              	<!-- Login form here -->
			              		<form name="loginform" action="/signin" method="post">
							    	<a id="signup" href="signupForm">Sign Up</a>
								</form>
			            	</div>            
		           		</c:if>
		             
		      			<!--  로그인버튼, 로그인차, 마이페이지  끝 -->
		          
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
		<script type="text/javascript">
			//이메일칸에 입력전에 submit 버튼 활성화/비활성화
			document.loginform.commit.disabled = true;
			document.onkeyup = process;
			document.onmouseup = process;
			document.onmousedown = process;
			
			function process() {
				if (document.loginform.email.value == '' 
					||document.loginform.password.value == '') {   
					document.loginform.commit.disabled = true;
				} 
				else if(document.loginform.password.value != ''
						&&document.loginform.password.value.length >=8 ){	
					document.loginform.commit.disabled = false; 
				}
			}
		</script>
