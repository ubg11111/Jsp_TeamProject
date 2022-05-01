<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin_top.css">
</head>
<body>

	<div id="header">
			<a href="#">
				<img class="logo_img" src="<%=request.getContextPath()%>/uploadFile/logo.png">
			</a>
	</div>

	<div id="admin_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
        
            <div class="container-fluid">
              <a class="navbar-brand" href="#">${adminCont.getAdmin_name()}님</a>
              
				<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="navbar-nav">
						<li class="nav-item">
						<a class="nav-link active"aria-current="page" href="<%=request.getContextPath()%>/admin/admin_main.jsp">관리자 홈</a>
						</li>

						<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						 회원관리 
						</a>
							<ul class="dropdown-menu"
								aria-labelley="navbarDropdownMenuLink">
								<li><a class="dropdown-item" href="#">회원목록 & 수정</a></li>
								<li><a class="dropdown-item" href="#">1:1문의 현황 & 답변</a></li>
								<li><a class="dropdown-item" href="#">메일문의 현황 & 답변</a></li>
							</ul>
						</li>

						<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						 매출관리 
						</a>
						
							<ul class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<li><a class="dropdown-item" href="#">매출현황</a></li>
								<li><a class="dropdown-item" href="#">거래내역</a></li>
							</ul>
						</li>
						
						<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						 제품관리
						</a>
							<ul class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<li><a class="dropdown-item" href="#">카테고리등록</a></li>
								<li><a class="dropdown-item" href="#">제품등록</a></li>
							</ul>
						</li>
						
						<li class="nav-item">
						<a class="nav-link active"aria-current="page" href="<%=request.getContextPath()%>/admin_logout.do">관리자 로그아웃</a>
						</li>
						
					</ul>
				</div>
			</div>
          </nav>
    </div>
</body>
</html>