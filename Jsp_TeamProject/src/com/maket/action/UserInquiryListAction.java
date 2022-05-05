package com.maket.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.InquiryDTO;
import com.market.model.NoticeDAO;
import com.market.model.UserDTO;

public class UserInquiryListAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 1:1 문의 리스트 목록
		
		// 해당 회원의 문의 목록만 조회
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("userCont");
		
		// 문의 리스트 조회
		NoticeDAO dao = NoticeDAO.getInstance();
		List<InquiryDTO> dto = dao.getInquiryList(userDTO.getUser_id());
		
		request.setAttribute("inquiryList", dto);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("notice/notice_inquiry_list.jsp");
		
		return forward;
	}

}
