package com.maket.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.NoticeDAO;
import com.market.model.NoticeDTO;

public class UserNoticeDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 공지 제목 클릭 시 공지 내용 출력

		int pre_no = Integer.parseInt(request.getParameter("no")) - 1;
		int notice_no = Integer.parseInt(request.getParameter("no"));
		int post_no = Integer.parseInt(request.getParameter("no")) + 1;
		
		NoticeDAO dao = NoticeDAO.getInstance();
		
		// 조회수 증가
		dao.updateHit(notice_no);
		
		// 이전글 목록 조회
		NoticeDTO preList = dao.getNoticeDetail(pre_no);
		request.setAttribute("preList", preList);
		
		// 해당글 목록 조회
		NoticeDTO curList = dao.getNoticeDetail(notice_no);
		request.setAttribute("curList", curList);
		
		// 다음글 목록 조회
		NoticeDTO postList = dao.getNoticeDetail(post_no);
		request.setAttribute("postList", postList);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("notice/notice_detail.jsp");

		return forward;
	}

}
