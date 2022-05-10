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
		
		document.frm.action="<%=request.getContextPath() %>/user_cart_add.do";
		
		document.frm.submit();
	}

</script>
</head>
<body>

	<jsp:include page="../include/main_top.jsp" />
	<br>
	
	
	<table border="1" cellspacing="0" width="500">
	   <c:set var="dto" value="${productCont }" />
	   <c:if test="${!empty dto }">
	      <tr>
	         <td colspan="2" align="center">
	            <b>[${dto.getPname() }] 상품 이름</b>
	         </td>
	      </tr>
	      
	      <tr>
	      	 <td colspan="2" align="center" height="30"> </td>
	      </tr>
	      
	      <tr>
	         <td align="center">
	            <img src="<%=request.getContextPath() %>/upload/${dto.getPimage() }"
	                      width="180" height="180">
	         </td>
	         
	         <td>
	            <form method="post" name="frm">
	               
	               <input type="hidden" name="p_num" value="${dto.getPnum() }">
	               <input type="hidden" name="p_spec" value="${dto.getPspec() }">
	               <input type="hidden" name="p_image" value="${dto.getPimage() }">
	               <input type="hidden" name="userId" value="${userId }">
	               
	               <table border="0" cellspacing="0">
	                  <tr>
	                     <th>제품번호 : </th>
	                     <td> ${dto.getPnum() } </td>
	                  </tr>
	                  
	                  <tr>
	                     <td colspan="2" align="center" height="20"> </td>
	                  </tr>
	                  
	                  <tr>
	                  	 <th>제품 이름 : </th>
	                     <td> <input name="p_name" value="${dto.getPname() }" readonly> </td>
	                  </tr>
	                  
	                  <tr>
	                     <td colspan="2" align="center" height="20"> </td>
	                  </tr>
	                  
	                  <tr>
	                  	 <th>제품 가격 : </th>
	                  	 <td> <input name="p_price" value="${dto.getPrice() }" readonly>원 </td>
	                  </tr>
	                  
	                  <tr>
	                     <td colspan="2" align="center" height="20"> </td>
	                  </tr>
	                  
	                  <tr>
	                     <th>제조사 : </th>
	                     <td><input name="p_company" value ="${dto.getPcompany() }"readonly></td>
	                  </tr>
	                  
	                  <tr>
	                     <td colspan="2" align="center" height="20"> </td>
	                  </tr>
	                  
	                  <tr>
	                     <th>제품 수량 : </th>
	                     <td> <input type="number" name="p_qty"
	                                 min="1" max="50" value="1"> </td>
	                  </tr>
	               
	                  <tr>
	                     <td colspan="2" align="center" height="20"> </td>
	                  </tr>
	                
	                  
	              	 <tr>
	                  	 <th>상세 이름 : </th>
	                     <td> <input name="p_details" value="${dto.getdetails() }" readonly> </td>
	                  </tr>
	                  
	                  <tr>
	                     <td colspan="2" align="center" height="20"> </td>
	                  </tr>
	              
	               </table>
	               
                 <div id="gocart">
                         <a href="<%=request.getContextPath()%>/user_cart_list.do">장바구니</a>
                </div>

	               

	            </form>
	         </td>
	      </tr>
	
		</c:if>
	</table>
	
    <jsp:include page="../include/main_bottom.jsp" />
	
</body>
</html>