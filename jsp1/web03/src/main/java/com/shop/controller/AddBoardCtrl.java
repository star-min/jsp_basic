package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BoardVO;
import com.shop.model.BoardDAO;

@WebServlet("/AddBoardCtrl")
public class AddBoardCtrl extends HttpServlet {	//글쓰기 ctrl
	private static final long serialVersionUID = 1L;

    public AddBoardCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String nickname = request.getParameter("nickname");
		
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setNickname(nickname);
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.addBoard(vo);
		if(cnt>0) {
			response.sendRedirect("GetBoardListCtrl");
		} else {
			response.sendRedirect("./board/addBoardForm.jsp");
		}
	}

}
