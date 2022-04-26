<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓컬리</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/top.css">
</head>
<body>


	<div id="header">
		
		
		<div id="userMenu">
			<ul class="list_menu">
				<li class="menu_join">
					<a href="<%=request.getContextPath()%>/user_Join.do">회원가입</a>
				</li>
				
				<li class="menu_login">
					<a href="<%=request.getContextPath()%>/user_login.do">로그인</a>
				</li>
				
				<li class="menu_login">
					<a href="<%=request.getContextPath()%>/user_comunity.do">고객센터</a>
				</li>
			</ul>
			
			
		<div id="headerLogo">
			<h1>
				<a href="/" class="link_menu">홈</a>
			</h1>
		</div>
			
		</div>
		
	
	</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>