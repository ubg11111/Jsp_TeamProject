<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리</title>
<link rel="stylesheet" type="text/css" href="css/top.css">
<link rel="stylesheet" type="text/css" href="css/bottom.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<jsp:include page="/include/main_top.jsp"></jsp:include>
	<hr width="100%">
	<br><br>

	<div id="main">
		<div id="content">
			<div id="TalkMain" class="page_main">
				<div class="bannaer">
					<div class="bannaer_content">
					<!-- 메인컨텐트 첫번째 -->
					<div class="main_content">
							<h3>이 상품 어때요?</h3>
					</div>
					<div class="main-img1">
						<div class="card" style="width: 18rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/딸기.jpg" class="card-img-top" alt="...">
							  </a>
							  
							  <div class="card-body">
							    <p class="card-text">
							    	<span class="nomal_price">국산 딸기 100%</span><br><br>
							    	<span class="sale_price1">10%</span> <span class="sale_price2">14,500원</span><br>
							    	<span class="event_price">17,600원</span>
							    </p>
							  </div>
						</div>
						<div class="card" style="width: 18rem;">
							<a href="#">
							  <img src="<%=request.getContextPath()%>/uploadFile/양파.jpg" class="card-img-top" alt="...">
							</a> 
							  
							  
							  <div class="card-body">
							    <p class="card-text">
							   		<span class="nomal_price">국산 양파 100%</span><br><br>
							    	<span class="sale_price1">10%</span> <span class="sale_price2">14,500원</span><br>
							    	<span class="event_price">13,600원</span>
							    </p>
							  </div>
						</div>
						<div class="card" style="width: 18rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/송이버섯.jpg" class="card-img-top" alt="...">
							  </a> 
							  
							  <div class="card-body">
							    <p class="card-text">
							  		<span class="nomal_price">국산 송이버섯 100%</span><br><br>
							    	<span class="sale_price1">10%</span> <span class="sale_price2">14,500원</span><br>
							    	<span class="event_price">9,600원</span>
							    </p>
							  </div>
						</div>
					</div>
					
					
					<!-- 메인컨텐트 두번째 -->
				<div class="main_content2">
						<div class="main_event">
							<h2>일일 특가</h2>
							<h4>24시간 한정 특가</h4>
							<h6>빨리 픽해주세요</h6>
						</div>
						
						<div class="main_img2">
							<div class="card" style="width: 18rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/소세지.jpg" class="card-img-top" alt="...">
							  </a> 
							  
							  <div class="card-body">
							    <p class="card-text">
							  		<span class="nomal_price">독일에서 만든 엄청난 소세지</span><br><br>
							    	<span class="sale_price1">10%</span> <span class="sale_price2">14,500원</span><br>
							    	<span class="event_price">9,600원</span>
							    </p>
							 </div>
							</div>
							
							<div class="card" style="width: 18rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/연어스테이크.jpg" class="card-img-top" alt="...">
							  </a> 
							  
							  <div class="card-body">
							    <p class="card-text">
							  		<span class="nomal_price">오늘은 연어스테이크</span><br><br>
							    	<span class="sale_price1">10%</span> <span class="sale_price2">14,500원</span><br>
							    	<span class="event_price">9,600원</span>
							    </p>
							 </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
	
	
	
	<hr width="100%">
	<br><br>
	<jsp:include page="/include/main_bottom.jsp"></jsp:include>



</body>
</html>