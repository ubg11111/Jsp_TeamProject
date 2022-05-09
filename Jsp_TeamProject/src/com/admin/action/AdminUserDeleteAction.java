package com.admin.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.UserDAO;

public class AdminUserDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int user_no = Integer.parseInt(request.getParameter("no").trim());
		
		UserDAO dao = UserDAO.getInstance();
		
		int check = dao.userOut(user_no);
		
		PrintWriter out = response.getWriter();
		
		ActionForward forward = new ActionForward();
		
		if(check > 0) {
			forward.setRedirect(true);
			forward.setPath("admin_user_list.do");
		}else {
			out.println("<script>");
			out.println("alert('삭제실패')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return forward;
	}

}
