package com.admin.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.CategoryDAO;
import com.market.model.CategoryDTO;

public class AdminProductInputAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		// 카테고리 코드 전체 리스트를 DB에서 조회하여 상품 등록 폼 페이지(view page)로 이동
		
		// Category DAO,DTO 필요		
		CategoryDAO dao = CategoryDAO.getInstance();
		
		List<CategoryDTO> list = dao.getCategoryList();
		
		request.setAttribute("categoryList", list);
		
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		
		forward.setPath("admin/admin_product_input.jsp");
		
		
		return forward;
		
		
	}

}
