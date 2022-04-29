package com.maket.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.NoticeDAO;
import com.market.model.NoticeDTO;

public class UserNoticeListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 공지사항 버튼 클릭 시 공지사항 목록을 조회
		
		int rowsize = 10; 		// 한 페이지당 보여질 게시물의 수
		int block = 5;	 		// 아래에 보여질 페이지의 최대 수
		int totalRecord = 0; 	// DB 상의 게시물의 전체 수
		int allPage = 0;		// 전체 페이지 수 
		
		int page = 0;			// 현재 페이지 변수
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		} else {
			page = 1;
		}
		
		// 해당 페이지에서의 시작 번호
		int startBlock = page - ((page - 1) % block);
		
		// 해당 페이지에서 끝 블럭
		int endBlock = (((page - 1) / block) * block) + block;
		
		NoticeDAO dao = NoticeDAO.getInstance();
		
		// DB상의 전체 게시물 수
		totalRecord = dao.getBoardCount();	

		allPage = (int) Math.ceil(totalRecord / (double)rowsize); 
		
		if(endBlock > allPage) {
			endBlock = allPage;
		}
		
		List<NoticeDTO> list = dao.getNoticeList(page, rowsize);
		
		// 데이터 view 이동
		request.setAttribute("page", page);
		request.setAttribute("rowsize", rowsize);
		request.setAttribute("block", block);
		request.setAttribute("totalRecord", totalRecord);
		request.setAttribute("allPage", allPage);
		request.setAttribute("startBlock", startBlock);
		request.setAttribute("endBlock", endBlock);
		request.setAttribute("noticeList", list);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("notice/notice_main.jsp");
		
		return forward;
	}

}
