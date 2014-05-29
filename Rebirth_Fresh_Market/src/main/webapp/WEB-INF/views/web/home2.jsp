<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
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
    	<%@include file="itemMapView.jsp"%>
    </div>   
</div>
<div>


<div>
	
</div>
</body>
</html>