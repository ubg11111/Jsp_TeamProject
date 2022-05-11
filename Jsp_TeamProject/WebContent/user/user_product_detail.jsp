<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function goCart() { 	
		
		document.frm.action="<%=request.getContextPath()%>/user_cart_add.do";
		
		document.frm.submit();
	}

</script>
</head>
<body>

	<jsp:include page="../include/main_top.jsp" />
	<br>

 	

	
    <jsp:include page="../include/main_bottom.jsp" />
	
</body>
</html>