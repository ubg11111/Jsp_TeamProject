<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜 목록</title>
<link rel="stylesheet" type="text/css" href="css/top.css">
<link rel="stylesheet" type="text/css" href="css/bottom.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/liked.css">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
<body>

	<jsp:include page="../include/main_top.jsp" />
	
	<div class="liked-box"> 
	<div class="liked-list">
		<c:set var="user" value="${userName }" />
		<c:set var="list" value="${likedList }" />
		<header>
			<h1>${user }님의 찜한 상품 목록</h1>
			<hr class="title-hr">
		</header>	
		<div class="liked-table">
		
			<table>
			<c:if test="${!empty list }">
			<c:forEach items="${list }" var="dto">
			<c:set var="price" value="${dto.getLiked_price() }" />
				
				<tr>
					<td class="table-img"> 
						<img class="img-size" src="<%=request.getContextPath() %>/upload/${dto.getLiked_pimage() }"> 
					</td>
					<td class="table-pname"> &nbsp;&nbsp;&nbsp;${dto.getLiked_pname() } </td>
					<td>
						<fmt:formatNumber value="${price }"/> 원
					</td>
						
		            <td>
		            <div class="button-group">
			            <a class="table-delete" href="<%=request.getContextPath() %>
							/user_liked_delete.do?num=${dto.getLiked_num() }"><i class="fa-solid fa-trash-can fa-2x"></i></a>
						
			            <form method="post" action="<%=request.getContextPath()%>/user_cart_add.do?pqty=1">
				            <input type="hidden" name="userId" value="${dto.getLiked_userId()}">
				            <input type="hidden" name="pnum" value="${dto.getLiked_pnum()}">
				            <input type="hidden" name="pname" value="${dto.getLiked_pname()}">
				            <input type="hidden" name="price" value="${dto.getLiked_price()}">
				            <input type="hidden" name="pimage" value="${dto.getLiked_pimage()}">
				            <button type="submit" class="cart_button"><i class="fa-solid fa-cart-shopping fa-2x"></i></button>
			            </form>	
		            </div>
		            </td>
		            
				</tr>
				
				
			</c:forEach>
			</c:if>
			
			<c:if test="${empty list }">
				<tr class="empty-liked">
					<td colspan="5">
						<div>
							<h3>찜한 상품이 없습니다</h3>
						</div>
					</td>
				</tr>
			</c:if>
			</table>
			
		</div>
			
	</div>
	</div>
	<jsp:include page="../include/main_bottom.jsp" />
	
	<script src="https://kit.fontawesome.com/e19f7e9074.js" crossorigin="anonymous"></script>
</body>
</html>