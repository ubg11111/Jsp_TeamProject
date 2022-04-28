package com.market.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;

public class UserJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("진입성공!!!!");
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("main.jsp");
		return forward;
	}

}
