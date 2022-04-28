<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의</title>
<link rel="stylesheet" type="text/css" href="../css/notice_inquiry_list.css">
</head>
<body>
	<header>
		<jsp:include page="../include/main_top.jsp" />
	</header>

	<div id="body">
		<aside id="aside">
			<h1 class="fw-bolder">고객센터</h1>
				<ul class="list-group list-group-flush fw-bold">
					<li class="list-group-item"><a href="notice_main.jsp">공지사항</a></li>
					<li class="list-group-item"><a href="#">1:1문의</a></li>
					<li class="list-group-item"><a href="#">메일문의</a></li>
				</ul>
		</aside>

		<main id="main">
			<section>
				<h1>1:1 문의</h1>
				<hr>
				<form action="">
					<table class="table table-sm">
						<tr>
							<th class="notice_title">제목</th>
							<th>작성일</th>
							<th>답변상태</th>
						</tr>
						<tr>
							<td class="notice_title"><a href="">문의제목</a></td>
							<td>2022-04-27</td>
							<td>처리중</td>
						</tr>
					</table>
				</form>
			</section>

			<section>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#">«</a></li>
						<li class="page-item"><a class="page-link" href="#">‹</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">6</a></li>
						<li class="page-item"><a class="page-link" href="#">7</a></li>
						<li class="page-item"><a class="page-link" href="#">8</a></li>
						<li class="page-item"><a class="page-link" href="#">9</a></li>
						<li class="page-item"><a class="page-link" href="#">10</a></li>
						<li class="page-item"><a class="page-link" href="#">›</a></li>
						<li class="page-item"><a class="page-link" href="#">»</a></li>
					</ul>
				</nav>
				<hr>
			</section>

			<div class="inquiry_btn">
				<input type="button" class="btn btn-secondary btn-lg" value="문의하기" onclick="location.href='notice_inquiry_form.jsp'"> 
			</div>
		</main>
	</div>

	<footer>
		<jsp:include page="../include/main_bottom.jsp" />
	</footer>
</body>
</html>