<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="/Jsp_TeamProject/css/notice_main.css?1">
</head>
<body>
	<header>
		<jsp:include page="../include/main_top.jsp" />
	</header>
	
	<div id="body">
		<aside id="aside">
			<jsp:include page="../include/notice_aside.jsp" />
		</aside>

		<main id="main">
			<section>
				<h1>공지사항</h1> <hr>
				<c:set var="list" value="${noticeList }" />
				<table class="table table-sm">
					<tr class="table_head">
						<th>번호</th>
						<th class="notice_title">제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회</th>
					</tr>
					<c:forEach items="${list }" var="dto">
						<tr class="table_content">
							<td>${dto.getNotice_no() }</td>
							<td>
							<a href="<%=request.getContextPath() %>/notice_detail.do?no=${dto.getNotice_no() }">${dto.getNotice_title() }</a>
							</td>
							<td>${dto.getNotice_writer() }</td>
							<td>${dto.getNotice_date().substring(0, 10) }</td>
							<td>${dto.getNotice_hit() }</td>
						</tr>
					</c:forEach>
				</table>
			</section>

			<section>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<c:if test="${page > block}">
							<li class="page-item">
								<a class="page-link" 
									href="notice_search.do?page=1&search_field=${search_field }&search_keyword=${search_keyword }">«
								</a>
							</li>
							<li class="page-item"><a class="page-link" href="notice_search.do?page=${startBlock -1 }&search_field=${search_field }&search_keyword=${search_keyword }">‹</a></li>
						</c:if>
						<c:forEach begin="${startBlock }" end="${endBlock }" var="i">
							<li class="page-item"><a class="page-link" href="notice_search.do?page=${i }&search_field=${search_field }&search_keyword=${search_keyword }">${i }</a></li>
						</c:forEach>
						<c:if test="${endBlock < allPage }">
							<li class="page-item"><a class="page-link" href="notice_search.do?page=${endBlock + 1 }&search_field=${search_field }&search_keyword=${search_keyword }">›</a></li>
							<li class="page-item"><a class="page-link" href="notice_search.do?page=${allPage }&search_field=${search_field }&search_keyword=${search_keyword }">»</a></li>
						</c:if>
					</ul>
				</nav>
				<hr>
			</section>

			<section id="search">
				<form method="post" action="<%=request.getContextPath() %>/notice_search.do">
					<table class="search_table">
						<tr>
							<td class="search_group">
								<label>
									<input type="checkbox" name="search_field" value="writer" checked> 이름
								</label>
								<label>
									<input type="checkbox" name="search_field" value="title"> 제목
								</label>
								<label>
									<input type="checkbox" name="search_field" value="content"> 내용
								</label>
							</td>
							<td>&nbsp;</td>
							<td>
								<div class="input-group mb-3">
									<input class="form-control" name="search_keyword" required>
									<input class="btn btn-outline-secondary" type="submit" value="검색">
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