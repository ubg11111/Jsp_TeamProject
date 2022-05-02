<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<link rel="stylesheet" type="text/css" href="css/top.css">
<link rel="stylesheet" type="text/css" href="css/bottom.css">
<script type="text/javascript">
	function check(pwd) {
		var test = prompt("비밀번호를 입력하세요.");
		
		if(test == pwd) {
			location.href="user_order.do";
		} else {
			alert("비밀번호가 틀렸습니다.");
		}
	}
</script>
</head>
<body>
	<jsp:include page="../include/main_top.jsp" />
	
	<h1>주문서</h1>
	
	<h2>주문상품</h2>
	<hr>
			
	<div class="orderList">
		<table>
		<c:set var="list" value="${cartList }" />
		<c:if test="${!empty list }">
		<c:forEach items="${list }" var="dto">
			
			<tr>
				<td> <img src="<%=request.getContextPath() %>/upload/${dto.getCart_pimage() }"
					width="50" height="50"> </td>
				<td> ${dto.getCart_pname() } </td>
				<td>
					<c:set var="amount" value="${dto.getCart_pqty() }" />
					${amount } 개
				</td>
				<td>
					<c:set var="price" value="${dto.getCart_price() }" />
					<fmt:formatNumber value="${amount * price }"/> 원
				</td>
			</tr>
		<c:set var="total" value="${total + (price * amount) }" />
		</c:forEach>
		</c:if>
		
		<c:if test="${empty list }">
			<tr>
				<td colspan="5">
					<h3>주문상품이 없습니다.</h3>
				</td>
			</tr>
		</c:if>
		</table>
	</div>
	
	<div class="info">
		<h2>주문자 정보</h2>
		<hr>
		
		<table>
		<c:set var="dto" value="${userDTO }" />
			<tr>
				<td>보내는 분</td>
				<td> ${dto.getUser_name() } </td>
			</tr>
			
			<tr>
				<td>휴대폰</td>
				<td> ${dto.getUser_phone() } </td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td>
					${dto.getUser_email() } <br>
					<span>
						이메일을 통해 주문처리과정을 보내드립니다.<br>
						정보 변경은 마이페이지 > 개인정보 수정 메뉴에서 가능합니다.
					</span>
				</td>
			</tr>
		</table>
	</div>
	
	<div class="deliver">
		<h2>배송 정보</h2>
		<hr>
		
		<table>
			<tr>
				<td>배송지</td>
				<td>
					${dto.getUser_address() }<br>
					${dto.getUser_detailaddress() }
				</td>
			</tr>
			<tr>
				<td>상세 정보</td>
				<td> ${dto.getUser_name() }, ${dto.getUser_phone() } </td>
			</tr>
		</table>
	</div>
	
	<div class="payment">
		<h2>결제금액</h2>
		<hr>
		
		<table>
			<tr>
				<td>주문금액</td>
				<td>
					<fmt:formatNumber value="${total }" /> 원
				</td>
			</tr>
			<tr>
				<td>배송비</td>
				<td> 
					<fmt:formatNumber value="3000" /> 원
				</td>
			</tr>
			<tr>
				<td>최종결제금액</td>
				<td> 
					<fmt:formatNumber value="${total + 3000}" /> 원
				</td>
			</tr>
		</table>
	</div>
	
	<button onclick="check(${dto.getUser_pwd() })">주문하기</button>
	<jsp:include page="../include/main_bottom.jsp" />
</body>
</html>