<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>푸드톡</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	
	<jsp:include page="/include/main_top.jsp"></jsp:include>
	
	<div class="search_main">
		<c:set var="find" value="${Find}"/>
		
		<!-- 검색된 제품이 존재하는 경우 -->
		<c:if test="${!empty find}">
				
			<div class="card" style="width: 18rem;">
				  <a href="#">
				  	<img src="<%=request.getContextPath()%>/uploadFile/딸기.jpg" class="card-img-top" alt="...">
				  </a>
				  
				  <div class="card-body">
				    <p class="card-text">
				    	<span class="nomal_price">${find.getPname()}</span><br><br>
				    	<span class="sale_price2">${find.getPrice()} 원</span><br>
				    	<span class="event_price">${find.getPdetails() }</span>
				    </p>
				</div>
			</div>
			
		</c:if>
		
		<!-- 검색된 제품이 없는경우 -->
		<c:if test="${empty find}">
			
			<div>
				<h3>검색된 제품이 없습니다.</h3>
			</div>
		
		</c:if>
		
		
	</div>
	
	
	<jsp:include page="/include/main_bottom.jsp"></jsp:include>
	
</body>
</html>