<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Category List Page</title>
<script type="text/javascript">
	function deleteConfirm(num){
		let res = confirm("정말로 삭제하시겠습니까?");
		if(res){
			alert(num + "번 카테고리의 삭제 시도가 성공했습니다. ※ 아직 삭제 안 만듦");
			/* location.href = "delete.do?넘버="+받은숫자 */
		}
	}
</script>
</head>
<body>
	<!-- admin_top.jsp include 할 것 -->
	<div align="center">
		<h3>임시 admin_top.jsp</h3>
	</div>
	<div align="center">
		<table border="1" cellspacing="0" width="500">
			<tr bgcolor="lightgray">
				<th>카테고리 번호</th>
				<th>카테고리 코드</th>
				<th>카테고리 이름</th>
				<th>삭제</th>
			</tr>
			<c:set var="list" value="${categoryList }" />
			<c:if test="${!empty list }">
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.getCategory_num() }</td>
							<td>${dto.getCategory_code() }</td>
							<td>${dto.getCategory_name() }</td>
							<td><input type="button" value="삭제" onclick="check(${dto.getCategory_num() })"></td>
						</tr>
					</c:forEach>
			</c:if>
			<!-- <tr>
				<td>01</td>
				<td>A0010001</td>
				<td>농작물</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(01)"></td>
			</tr>
			<tr>
				<td>02</td>
				<td>A0010002</td>
				<td>해산물</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(02)"></td>
			</tr>
			<tr>
				<td>03</td>
				<td>A0010003</td>
				<td>육류</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(03)"></td>
			</tr>
			<tr>
				<td>04</td>
				<td>A0020001</td>
				<td>면</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(04)"></td>
			</tr>
			<tr>
				<td>05</td>
				<td>B0010001</td>
				<td>탄산음료</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(05)"></td>
			</tr>
			<tr>
				<td>06</td>
				<td>B0010002</td>
				<td>카페인음료</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(06)"></td>
			</tr>
			<tr>
				<td>07</td>
				<td>B0020001</td>
				<td>술</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(07)"></td>
			</tr>
			<tr>
				<td>08</td>
				<td>C0010001</td>
				<td>화장품</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(08)"></td>
			</tr>
			<tr>
				<td>09</td>
				<td>D0010001</td>
				<td>주방용품</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(09)"></td>
			</tr>
			<tr>
				<td>10</td>
				<td>D0010002</td>
				<td>가전제품</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(10)"></td>
			</tr>
			<tr>
				<td>11</td>
				<td>D0010003</td>
				<td>육아용품</td>
				<td align="center"><input type="button" value="삭제" onclick="deleteConfirm(11)"></td>
			</tr> -->
			<c:if test="${empty list }">
				<tr>
					<td colspan="4" align="center"> 아직 입력된 카테고리 리스트가 없습니다 </td>
				</tr>
			</c:if>
			<td colspan="4" align="right">
			<input type="button" value="카테고리 추가" onclick="location.href='admin_category_input.do'"></td>
		</table>
	</div>
	<!-- admin_bottom.jsp include 할 것 -->
</body>
</html>