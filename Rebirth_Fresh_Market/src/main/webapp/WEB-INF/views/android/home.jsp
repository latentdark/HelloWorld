<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"> 
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>카운터 테스트</h1>

<h1>${applicationScope.count}</h1>
<%
/*
int count=(Integer)getServletContext().getAttribute("count");
getServletContext().setAttribute("temp","${name}");
getServletContext().setAttribute("count",count);
*/
%>
 
<h1>나오지?</h1>
<h1>${name}</h1>


</body>
</html>