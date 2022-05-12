package com.maket.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.LikedDAO;

public class UserLikedDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 카트 넘버를 받아와서 해당 넘버 조회 후 삭제
		
		int liked_num = Integer.parseInt(request.getParameter("num"));
		
		LikedDAO dao = LikedDAO.getInstance();
		int check = dao.deleteLiked(liked_num);
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		
		if(check > 0) {
			forward.setRedirect(true);
			forward.setPath("user_liked_list.do");
		}else {
			out.println("<script>");
			out.println("alert('찜 삭제 실패!')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
