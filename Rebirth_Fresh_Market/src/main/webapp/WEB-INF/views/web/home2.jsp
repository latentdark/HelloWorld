<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
  function change_content(elementname, filename)
  {
    new Ajax.Updater(elementname, filename);
  }
</script>
<title>Insert title here</title>
</head>
<body>
<div>
	<%@include file="header.jsp"%>
</div>

<div class="target">
    <div id="body">
    	<%@include file="slide.jsp"%>
    </div>   
</div>
<div>


<div>
	
</div>
</body>
</html>