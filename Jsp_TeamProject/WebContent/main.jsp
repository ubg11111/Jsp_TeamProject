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
					<div class="main_content" >
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
							    	<span class="sale_price1">10%</span> <span class="sale_price2">4,500원</span><br>
							    	<span class="event_price">5,000원</span>
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
							    	<span class="sale_price1">10%</span> <span class="sale_price2">2,700원</span><br>
							    	<span class="event_price">3,000원</span>
							    </p>
							  </div>
						</div>
						<div class="card" style="width: 20rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/송이버섯.jpg" class="card-img-top" alt="...">
							  </a> 
							  
							  <div class="card-body">
							    <p class="card-text">
							  		<span class="nomal_price">국산 송이버섯 100%</span><br><br>
							    	<span class="sale_price1">20%</span> <span class="sale_price2">3,200원</span><br>
							    	<span class="event_price">4,000원</span>
							    </p>
							  </div>
						</div>
					</div>
					
					
					<!-- 메인컨텐트 두번째 -->
				<div class="main_content2" id="main1">
					<div class="event_box">
						<div class="main_event">
							<h2>일일 특가</h2>
							<h4>24시간 한정 특가</h4>
							<h6>빨리 픽해주세요</h6>
						</div>
						
						<div class="main_img2">
							<div class="card" style="width: 20rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/소세지.jpg" class="card-img-top" alt="...">
							  </a> 
							  
							  <div class="card-body">
							    <p class="card-text">
							  		<span class="nomal_price">독일에서 만든 엄청난 소세지</span><br><br>
							    	<span class="sale_price1">50%</span> <span class="sale_price2">3,000원</span><br>
							    	<span class="event_price">6,000원</span>
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
							    	<span class="sale_price1">30%</span> <span class="sale_price2">9,000원</span><br>
							    	<span class="event_price">12,000원</span>
							    </p>
							 </div>
							</div>
						</div>
					</div>	
						
				</div>
				
				
				
				<!-- 메인박스 첫번쨰 -->
				<div class="main-box1" id="main2">
					<div class="main_content" >
							<h3>현재 인기있는 상품</h3>
					</div>
					<div class="main-img1" >
						<div class="card" style="width: 18rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/바게트.png" class="card-img-top" alt="...">
							  </a>
							  
							  <div class="card-body">
							    <p class="card-text">
							    	<span class="nomal_price">바게트빵</span><br><br>
							    	<span class="sale_price2">5,500원</span><br>
							    </p>
							  </div>
						</div>
						
						<div class="card" style="width: 18rem;">
							<a href="#">
							  <img src="<%=request.getContextPath()%>/uploadFile/치즈케이크.jpg" class="card-img-top" alt="...">
							</a> 
							  
							  
							  <div class="card-body">
							    <p class="card-text">
							   		<span class="nomal_price">치즈케이크</span><br><br>
							    	<span class="sale_price2">9,500원</span><br>
							    </p>
							  </div>
						</div>
						<div class="card" style="width: 18rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/크로아상.jpg" class="card-img-top" alt="...">
							  </a> 
							  
							  <div class="card-body">
							    <p class="card-text">
							  		<span class="nomal_price">크로아상</span><br><br>
							    	<span class="sale_price2">3,500원</span><br>
							    </p>
							  </div>
						</div>
					</div>
				</div>	
					
			
			<!-- 메인박스 2번째 -->
			<div class="main-box2" id="main3">
					<div class="main_content">
							<h3>호불호 없는 맛잘알 상품</h3>
					</div>
					<div class="main-img1">
						<div class="card" style="width: 18rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/햄버거.jpg" class="card-img-top" alt="...">
							  </a>
							  
							  <div class="card-body">
							    <p class="card-text">
							    	<span class="nomal_price">진짜순패티 햄버거</span><br><br>
							    	<span class="sale_price1">20%</span> <span class="sale_price2">5,500원</span><br>
							    	<span class="event_price">8,500원</span>
							    </p>
							  </div>
						</div>
						<div class="card" style="width: 20rem;">
							<a href="#">
							  <img src="<%=request.getContextPath()%>/uploadFile/마카롱.jpg" class="card-img-top" alt="...">
							</a> 
							  
							  
							  <div class="card-body">
							    <p class="card-text">
							   		<span class="nomal_price">마카롱 종합세트</span><br><br>
							    	<span class="sale_price2">10,500원</span><br>
							    </p>
							  </div>
						</div>
						<div class="card" style="width: 20rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/피자.jpg" class="card-img-top" alt="...">
							  </a> 
							  
							  <div class="card-body">
							    <p class="card-text">
							  		<span class="nomal_price">치즈피자</span><br><br>
							    	<span class="sale_price2">7,000원</span><br>
							    </p>
							  </div>
						</div>
					</div>
				</div>
				
				
				<!-- 메인박스 3번째 -->
				<div class="main-box3" id="main4">
					<div class="main_content">
							<h3>오늘 저녁은 이걸면 끝!</h3>
					</div>
					<div class="main-img1">
						<div class="card" style="width: 18rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/스테이크.jpg" class="card-img-top" alt="...">
							  </a>
							  
							  <div class="card-body">
							    <p class="card-text">
							    	<span class="nomal_price">등심 스테이크</span><br><br>
							    	<span class="sale_price2">15,500원</span><br>
							    </p>
							  </div>
						</div>
						<div class="card" style="width: 19.5rem;">
							<a href="#">
							  <img src="<%=request.getContextPath()%>/uploadFile/연어롤스시.jpg" class="card-img-top" alt="...">
							</a> 
							  
							  
							  <div class="card-body">
							    <p class="card-text">
							   		<span class="nomal_price">연어롤 스시</span><br><br>
							    	<span class="sale_price2">7,500원</span><br>
							    </p>
							  </div>
						</div>
						<div class="card" style="width:20rem;">
							  <a href="#">
							  	<img src="<%=request.getContextPath()%>/uploadFile/감자튀김.jpg" class="card-img-top" alt="...">
							  </a> 
							  
							  <div class="card-body" style="margin-top: 5px;">
							    <p class="card-text">
							  		<span class="nomal_price">감자튀김</span><br><br>
							    	<span class="sale_price1">20%</span> <span class="sale_price2">4,000원</span><br>
							    	<span class="event_price">5,000원</span>
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
	
	<!-- TOP 버튼  -->
	<div style="position: fixed; bottom: 5px; right: 5px" class="top_button">
		<a href="#header"><i class="fa-solid fa-circle-arrow-up fa-3x"></i></a>	
	</div>
	
	
	<!-- 하단 인클루드  -->
	<hr width="100%">
	<br><br>
	<jsp:include page="/include/main_bottom.jsp"></jsp:include>


<script type="text/javascript" src="<%=request.getContextPath()%>/js/Top.js"></script>
</body>
</html>