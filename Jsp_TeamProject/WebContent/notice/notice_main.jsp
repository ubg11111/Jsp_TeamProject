<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="../css/notice_main.css">
</head>
<body>
	<header>
		<jsp:include page="../include/main_top.jsp" />
	</header>

	<div id="body">
		<aside id="aside">
			<h1 class="fw-bolder">고객센터</h1>
				<ul class="list-group list-group-flush fw-bold">
					<li class="list-group-item"><a href="#">공지사항</a></li>
					<li class="list-group-item"><a href="notice_inquiry_list.jsp">1:1문의</a></li>
					<li class="list-group-item"><a href="#">메일문의</a></li>
				</ul>
		</aside>

		<main id="main">
			<section>
				<h1>공지사항</h1>
				<hr>
				<form action="">
					<table class="table table-sm">
						<tr class="table_head">
							<th>번호</th>
							<th class="notice_title">제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회</th>
						</tr>
						<tr>
							<td>공지</td>
							<td class="notice_title"><a href="">배송안내</a></td>
							<td>심규복</td>
							<td>2022-04-27</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2</td>
							<td class="notice_title"><a href="">게시판 작업중</a></td>
							<td>심규복</td>
							<td>2022-04-27</td>
							<td>0</td>
						</tr>
						<tr>
							<td>1</td>
							<td class="notice_title"><a href="">마켓컬리 클론코딩중</a></td>
							<td>심규복</td>
							<td>2022-04-26</td>
							<td>0</td>
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

			<section id="search">
				<form method="post" action="">
					<table class="search_table">
						<tr>
							<td class="search_group">
								<label>
									<input type="checkbox" name="search_name"> 이름
								</label>
								<label>
									<input type="checkbox" name="search_title"> 제목
								</label>
								<label>
									<input type="checkbox" name="search_content"> 내용
								</label>
							</td>
							<td>&nbsp;</td>
							<td>
								<div class="input-group mb-3">
									<input type="text" class="form-control">
									<button class="btn btn-outline-secondary" type="button">검색</button>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</section>
		</main>
	</div>

	<footer>
		<jsp:include page="../include/main_bottom.jsp" />
	</footer>
</body>
</html>