<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript">
var authNum;
function randNum(){
	authNum=Math.floor(Math.random()*1000000);
	
	//alert(authNum);
}

function authCheck(){
	//alert("눌리긴함?");
	
	//alert(document.getElementById("inputAuthNum").value);
	//alert(authNum);
	
	if(document.getElementById("inputAuthNum").value==authNum){
		//alert("== 들어옴?");
		document.getElementById('authResult').value='인증되었습니다.';
	}else{
		document.getElementById('authResult').value='인증번호가 일치하지 않습니다.';
	}
	
	/**/
}

function sendSmsButton() {
	randNum();
	//alert(authNum);
	var action = document.getElementById("action").value;
	var msg=encodeURIComponent("Fresh Market \n인증번호 [ "+authNum+" ]");
	//alert(msg);
	var rphone = document.getElementById("rphone").value;
	var sphone1 = document.getElementById("sphone1").value;
	var sphone2 = document.getElementById("sphone2").value;
	var sphone3 = document.getElementById("sphone3").value;
	
	/*
	var params = 
				+"?action="+action
				+"&msg="+msg
				+"&rphone="+rphone
				+"&sphone1="+sphone1
				+"&sphone2="+sphone2
				+"&sphone3="+sphone3;
	*/
	//mobno = mobno.split("-").join("");
	//document.getElementById("mobno").value = mobno;

	//document.getElementById("authFlag").value = "N";
	try {
		//alert("try진입");
		
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", 
				"/resources/smsSend.jsp?"
				+"action="+action
				+"&msg="+msg
				+"&rphone="+rphone
				+"&sphone1="+sphone1
				+"&sphone2="+sphone2
				+"&sphone3="+sphone3
				, false);

		alert(rphone+"번호로 인증번호가 발송되었습니다.");
		/*
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				var result = xmlhttp.responseText.substr(4, 999);

				oMsg.style.display = "block";
				if (result == "S") {
					oMsg.className = "error gm";
					oMsg.innerHTML = "인증번호가 발송되었습니다.";
					return true;
				} else if (result == "Dur") {
					oMsg.className = "error";
					oMsg.innerHTML = "동일한 인증수단은 계속해서 사용할 수 없습니다.";
					return false;
				} else if (result == "Live") {
					oMsg.className = "error";
					oMsg.innerHTML = "해당 번호는 더 이상 가입이 불가능합니다.";
					return false;
				} else if (result == "Dupl") {
					oMsg.className = "error";
					oMsg.innerHTML = "등록 가능한 아이디 수를 초과하였습니다.";
					return false;
				} else {
					oMsg.className = "error";
					oMsg.innerHTML = "전화번호를 다시 확인해주세요.";
					return false;
				}
			}
		};
		*/
		xmlhttp.send(null);
	} catch (e) {
		if (window.bridgeGotTime) {
			throw e;
		}
	}

	return false;
}
/*
function sendSmsButton() {
	//var nationNo = document.getElementById("nationNo").value;
	//var mobno = document.getElementById("mobno").value;
	//var key = document.getElementById("token_sjoin").value;
	//var oMsg = document.getElementById("mobnoMsg");
	
	
	var rphone = document.getElementById("rphone").value;
	var sphone1 = document.getElementById("sphone1").value;
	var sphone2 = document.getElementById("sphone2").value;
	var sphone3 = document.getElementById("sphone3").value;
	
	var params = "rphone="+rphone
				+"&sphone1="+sphone1
				+"&sphone2="+sphone2
				+"&sphone3="+sphone3;
	
	//mobno = mobno.split("-").join("");
	//document.getElementById("mobno").value = mobno;

	document.getElementById("authFlag").value = "N";
	try {
		var xmlhttp = getXmlHttp();
		xmlhttp.open("POST", "/resources/smsSend", true);
		
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				var result = xmlhttp.responseText.substr(4, 999);

				oMsg.style.display = "block";
				if (result == "S") {
					oMsg.className = "error gm";
					oMsg.innerHTML = "인증번호가 발송되었습니다.";
					return true;
				} else if (result == "Dur") {
					oMsg.className = "error";
					oMsg.innerHTML = "동일한 인증수단은 계속해서 사용할 수 없습니다.";
					return false;
				} else if (result == "Live") {
					oMsg.className = "error";
					oMsg.innerHTML = "해당 번호는 더 이상 가입이 불가능합니다.";
					return false;
				} else if (result == "Dupl") {
					oMsg.className = "error";
					oMsg.innerHTML = "등록 가능한 아이디 수를 초과하였습니다.";
					return false;
				} else {
					oMsg.className = "error";
					oMsg.innerHTML = "전화번호를 다시 확인해주세요.";
					return false;
				}
			}
		};
		
		xmlhttp.send(params);
	} catch (e) {
		if (window.bridgeGotTime) {
			throw e;
		}
	}

	return false;
}
*/
</script>
</head>

<html>
 <html>
  <form method="post" action="/resources/smsSend.jsp">
     <input id="action" type="hidden" name="action" value="go">
    
     <br>받는 번호 
     <input id="rphone" type="text" name="rphone" value="011-111-1111">
   	<input type="button" onClick="javascript:sendSmsButton()" value="전송">
   	<br>  
      예) 011-111-1111 , '-' 포함해서 입력.
      <!--  
     <input id="sphone1" type="hidden" name="sphone1" maxlength="4" value="010">-
     <input id="sphone2" type="hidden" name="sphone2" maxlength="4" value="4194">-
     <input id="sphone3" type="hidden" name="sphone3" maxlength="4" value="1623">
    -->
     <input id="sphone1" type="hidden" name="sphone1" maxlength="4" value="02">-
     <input id="sphone2" type="hidden" name="sphone2" maxlength="4" value="5555">-
     <input id="sphone3" type="hidden" name="sphone3" maxlength="4" value="5555">
    
   	<br>
   	<input type="hidden" name="returnurl" maxlength="64" value="" >
   <!-- 
   <input type="submit" value="전송">
   -->
    
    
    <input id="inputAuthNum" style='width:200px' type="text" value="">
    
    <input type="button" onClick="javascript:authCheck()" value="인증">
    
    
    <input type="button" onClick="javascript:randNum()" value="랜덤넘버 받아보기">
	<!--  -->
	<br>
	<input id="authResult" style='width:200px' type="text" value="">
  </form>
</html>

