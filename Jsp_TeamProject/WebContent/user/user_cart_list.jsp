<%@page import="com.market.model.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 목록</title>
<link rel="stylesheet" type="text/css" href="css/top.css">
<link rel="stylesheet" type="text/css" href="css/bottom.css">
</head>
<body>
	
	<jsp:include page="../include/main_top.jsp" />
	
	<h1>장바구니</h1>
	
	<form method="post" action="<%=request.getContextPath() %>/user_order_maybe.do">
		<c:set var="list" value="${cartList }" />
		
		<div class="cartForm">
			<div id="cartSelect">
				<a href="<%=request.getContextPath() %>/user_cart_deleteAll.do"
					onclick ="return confirm('장바구니를 비우시겠습니까?')">전체삭제</a>
			</div>
			
			<hr>
			
				<div class="cartList">
					<table>
					<c:if test="${!empty list }">
					<c:forEach items="${list }" var="dto">
					<c:set var="price" value="${dto.getCart_price() }" />
						
						<tr>
							<td> <img src="<%=request.getContextPath() %>/upload/${dto.getCart_pimage() }"
								width="50" height="50"> </td>
							<td> ${dto.getCart_pname() } </td>
							<td>
								<c:set var="amount" value="${dto.getCart_pqty() }" />
								${amount } 개
							</td>
							<td>
								<fmt:formatNumber value="${amount * price }"/> 원
							</td>
							<td> 
							<a href="<%=request.getContextPath() %>
							/user_cart_delete.do?num=${dto.getCart_num() }">X</a>
							</td>
							
							<c:set var="total" value="${total + (price * amount) }" />
						</tr>
						
						<input type="hidden" name="pnum" value="${dto.getCart_pnum() }">
						<input type="hidden" name="pname" value="${dto.getCart_pname() }">
						<input type="hidden" name="pimage" value="${dto.getCart_pimage() }">
						<input type="hidden" name="pqty" value="${dto.getCart_pqty() }">
						<input type="hidden" name="price" value="${dto.getCart_price() }">
						<input type="hidden" name="total" value="${price * amount }">
						
					</c:forEach>
					</c:if>
					
					<c:if test="${empty list }">
						<tr>
							<td colspan="5">
								<h3>장바구니에 담긴 상품이 없습니다</h3>
							</td>
						</tr>
					</c:if>
					</table>
				</div>
				
			<hr>
			
			<div class="cartResult">
				<div class="cart_delivery">
				<c:set var="userAddr" value="${userAddr }"></c:set>
					<h4>배송지</h4>
					<p> ${userAddr } </p>
				</div>
				
				<div class="cart_amount">
					<dl>
						<dt>상품금액</dt>
						<dd>
							<span>
								<fmt:formatNumber value="${total }"/> 원
							</span>
						</dd>
						
						<dt>배송비</dt>
						<dd>
							<span>
								<fmt:formatNumber value="3000"/> 원
							</span>
						</dd>
						<dt>결제예정금액</dt>
						<dd>
							<span>
								<fmt:formatNumber value="${total + 3000}"/> 원
							</span>
						</dd>
					</dl>
				</div>
				
				<div class="cart_submit">
					<input type="submit" value="주문하기">
				</div>
				
			</div>
		</div>
	</form>
	
	<jsp:include page="../include/main_bottom.jsp" />
</body>
</html>