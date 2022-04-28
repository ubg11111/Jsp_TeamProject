package com.maket.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.CartDAO;

public class UserCartDeleteAllAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 세션으로 아이디 받아와서 해당하는 장바구니를 비우는 로직
		
//		HttpSession session = request.getSession();
//		String userId = (String)session.getAttribute("userId");
		String userId = "id1";
		
		CartDAO dao = CartDAO.getInstance();
		int check = dao.deleteAllCart(userId);
		
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		
		if(check > 0) {
			forward.setRedirect(true);
			forward.setPath("user_cart_list.do");
		}else {
			out.println("<script>");
			out.println("alert('장바구니 초기화 실패!')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
