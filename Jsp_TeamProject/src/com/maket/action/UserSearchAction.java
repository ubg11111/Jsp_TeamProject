package com.maket.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.ProductDAO;
import com.market.model.ProductDTO;

public class UserSearchAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String find_product = request.getParameter("search_product");
		
		ProductDAO dao = ProductDAO.getInstance();
		
		ProductDTO find = dao.searchProduct(find_product);
		
		request.setAttribute("Find", find);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("user/user_search.jsp");
		
		
		
		return null;
	}
}
