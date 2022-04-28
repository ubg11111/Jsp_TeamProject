package com.maket.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.CartDAO;
import com.market.model.CartDTO;

public class UserCartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// session으로 id를 받아와서 해당 아이디의 장바구니 목록을 조회하여 view page로 이동
		
//		HttpSession session = request.getSession();
//		String userId = (String)session.getAttribute("userId");
//		String userAddr = (String)session.getAttribute("userAddress");
		String userId = "id2";
		String userAddr = "서초구 청계산로";
		
		CartDAO dao = CartDAO.getInstance();
		
		List<CartDTO> list = dao.getCartList(userId);
		
		request.setAttribute("cartList", list);
		request.setAttribute("userAddr", userAddr);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("user/user_cart_list.jsp");
		
		return forward;
	}

}
