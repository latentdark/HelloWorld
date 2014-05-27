<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <html>
  <form method="post" action="/resources/smsSend.jsp">
     <input type="hidden" name="action" value="go">
     <input type="hidden" name="msg" maxlength="80" size=80 
     	value="Fresh Market Test 인증번호[123456]"> 예)80byte 이하로 입력.
     <br>받는 번호 <input type="text" name="rphone" value="011-111-1111"> 예) 011-111-1111 , '-' 포함해서 입력.
     <input type="hidden" name="sphone1" maxlength="4" value="010">-
     <input type="hidden" name="sphone2" maxlength="4" value="4194">-
     <input type="hidden" name="sphone3" maxlength="4" value="1623">
    
   	<br>return url <input type="hidden" name="returnurl" maxlength="64" value="" >
   <!-- -->
     <input type="submit" value="전송">

  </form>
</html>

