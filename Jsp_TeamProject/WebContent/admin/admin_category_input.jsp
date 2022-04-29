<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Category Input</title>
<script type="text/javascript">
	function choosingTail(head){
		var a_var = ['001[농작물]', '002[수산물]', '003[축산물]', '004[간식]'];
		var b_var = ['001[생수·음료수]', '002[커피·차]', '003[주류]'];
		var c_var = ['001[화장품]', '002[세면도구]'];
		var d_var = ['001[생활용품]', '002[주방용품]', '003[가전제품]'];
		var z_var = ['001[기타]']
		
		var target = document.getElementById("tail");

		if(head.value=="A") { var tail = a_var; }
		else if(head.value == "B") { var tail = b_var; }
		else if(head.value == "C") { var tail = c_var; }
		else if(head.value == "D") { var tail = d_var; }
		else { var tail = z_var; }
		
		target.options.length = 0;
		
		for (i in tail){
			var opt = document.createElement("option");
			opt.value = tail[i];
			opt.innerHTML = tail[i];
			target.appendChild(opt);
		}
	}
</script>
</head>
<body onload='choosingTail(head);'>
	<!-- admin_top.jsp include 할 것 -->
	<div align="center">
		<h3>임시 admin_top.jsp</h3>
	</div>
	<div align="center">
		<form method="post" action="<%=request.getContextPath() %>/admin_category_input_ok.do">
			<table border="1" cellspacing="0" width="350">
				<tr>
					<th>카테고리 코드</th>
					<td>
						<select id="head" name="category_code_head" onchange="choosingTail(this)">
							<option value="A" selected>A[음식]</option>
							<option value="B">B[음료]</option>
							<option value="C">C[화장]</option>
							<option value="D">D[가전]</option>
							<option value="Z">Z[기타]</option>
						</select>&nbsp;
						<select id="tail" name="category_code_tail" style="width:134px;"></select>
					</td>
				</tr>
				<tr>
					<th>카테고리 이름</th>
					<td><input name="category_name" style="width:205px"></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="등록">&nbsp;&nbsp;&nbsp;
						<input type="reset" value="취소">
				</tr>
			</table>
		</form>
	</div>
	<!-- admin_bottom.jsp include 할 것 -->
</body>
</html>