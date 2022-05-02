<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>
<link rel="stylesheet" type="text/css" href="css/top.css">
<link rel="stylesheet" type="text/css" href="css/bottom.css">
</head>
<body>
	
	<jsp:include page="../include/main_top.jsp" />
	
	<h1>주문내역</h1>
	
	<c:set var="list" value="${orderList }" />
	
	<div class="cartList">
		
		<c:if test="${!empty list }">
			<c:set var="date" value="${list.get(0).getOrder_date() }" />
			<h2>${date.substring(0, 10) } (${date.substring(11, 13) }시 ${date.substring(14, 16) }분)</h2>
			
			<hr>
			<table>
			<c:forEach items="${list }" var="dto">
				
				<tr>
					<td> <img src="<%=request.getContextPath() %>/upload/${dto.getOrder_image() }"
						width="50" height="50"> </td>
					<td> ${dto.getOrder_pname() } </td>
					<td>
						<c:set var="amount" value="${dto.getOrder_pqty() }" />
						${amount } 개
					</td>
					<td>
						<c:set var="price" value="${dto.getOrder_price() }" />
						<fmt:formatNumber value="${amount * price }"/> 원
					</td>
					
					<c:set var="total" value="${total + (price * amount) }" />
				</tr>
				
			</c:forEach>
			</table>
			
			<hr>
			
			<div class="cartResult">
				<div class="cart_delivery">
					<h3>배송지</h3>
					<c:set var="userAddr" value="${list.get(0).getOrder_userAddr() }" />
					<c:set var="detailAddr" value="${list.get(0).getOrder_detailAddr() }" />
					<p> 
						${userAddr } <br>
						<span> ${detailAddr } </span>
					</p>
				</div>
				
				<hr>
				
				<div class="cart_amount">
					
					<h3>결제정보</h3>
					
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
						<dt>결제금액</dt>
						<dd>
							<span>
								<fmt:formatNumber value="${total + 3000}"/> 원
							</span>
						</dd>
					</dl>
				
				</div>
			</div>
		</c:if>
		
		<c:if test="${empty list }">
			<h3>주문 내역이 없습니다.</h3>
		</c:if>
		
	</div>
	
	<jsp:include page="../include/main_bottom.jsp" />
		
</body>
</html>