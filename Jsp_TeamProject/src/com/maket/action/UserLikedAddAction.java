package com.maket.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maket.controller.Action;
import com.maket.controller.ActionForward;
import com.market.model.LikedDAO;
import com.market.model.LikedDTO;

public class UserLikedAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 상품 상세 페이지에서 찜 목록에 추가
		
		int liked_pnum = Integer.parseInt(request.getParameter("pnum").trim());
		String liked_userId = request.getParameter("userId").trim();
		String liked_pname = request.getParameter("pname").trim();
		int liked_price = Integer.parseInt(request.getParameter("price").trim());
		String liked_pimage = request.getParameter("pimage").trim();
		
		LikedDTO dto = new LikedDTO();
		dto.setLiked_pnum(liked_pnum);
		dto.setLiked_userId(liked_userId);
		dto.setLiked_pname(liked_pname);
		dto.setLiked_price(liked_price);
		dto.setLiked_pimage(liked_pimage);
		
		LikedDAO dao = LikedDAO.getInstance();
		int check = dao.insertLiked(dto);
		PrintWriter out = response.getWriter();
		
		if(check > 0) {
			out.println("<script>");
			out.println("history.back()");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('찜 실패!')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		return null;
	}

}
