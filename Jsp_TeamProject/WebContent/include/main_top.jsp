<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>푸드이야기</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/top.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>


	<div id="header">
		<div id="userMenu">
			<ul class="list_menu">
				<li class="menu_join">
					<a href="<%=request.getContextPath()%>/user_Join.do">회원가입 <span>|</span></a>
				</li>
				
				<li class="menu_login">
					<a href="<%=request.getContextPath()%>/user_login.do">로그인 <span>|</span></a>
				</li>
				
				<li class="nav-item dropdown" id="menu_comunity">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		          	  고객센터
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
		            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/notice/notice_main.jsp">공지사항</a></li>
		            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/notice/notice_inquiry_list.jsp">1:1문의</a></li>
		          </ul>
			    </li>
			</ul>
		</div>
			
			
		<div id="headerLogo">
			<a href="<%=request.getContextPath()%>/main.jsp" class="link_menu">
				<img class="logo_img" src="<%=request.getContextPath()%>/uploadFile/logo.png">
			</a>
		</div>
		
		
			
		<div id="gnb">
			<nav class="navbar navbar-expand-lg navbar-light bg-white" id="navbar1">
			  <div class="container-fluid" id="container">
			    
			    <div class="dropdown">
				  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
				    	전체 카테고리
				  </button>
				  
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
				    <li><a class="dropdown-item" href="#">과일</a></li>
				    <li><a class="dropdown-item" href="#">주류</a></li>
				    <li><a class="dropdown-item" href="#">육류</a></li>
				    <li><a class="dropdown-item" href="#">생활용품</a></li>
				    <li><a class="dropdown-item" href="#">가전제품</a></li>
				    <li><a class="dropdown-item" href="#">채소</a></li>
				  </ul>
				</div>
			    
			    
			    <div class="collapse navbar-collapse" id="navbarScroll">
			      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
			        <li>
			          <a href="#">상품</a>
			        </li>
			        
			        <li>
			          <a href="#">베스트상품</a>
			        </li>
			        
			        <li>
			          <a href="#">특가상품</a>
			        </li>
			      
			      </ul>
			      <form class="d-flex">
			        <input id="Serarch_flex" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			        <button class="btn btn-outline-success" type="submit">검색</button>
			        
			        <span class="main_icon">
				        <a href="#"><i class="fa-solid fa-heart fa-2x"></i></a>
				        <a href="<%=request.getContextPath()%>/user_cart_list.do"><i class="fa-solid fa-cart-shopping fa-2x"></i></a>
			        </span>
			      
			      </form>
			      
			      
			    </div>
			  
			  </div>
			</nav>
		</div>
	</div>




<script src="https://kit.fontawesome.com/27a0dd965d.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>