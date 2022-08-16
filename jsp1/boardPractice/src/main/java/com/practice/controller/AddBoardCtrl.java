package com.practice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice.common.Board1VO;
import com.practice.model.Board1DAO;

@WebServlet("/AddBoardCtrl")
public class AddBoardCtrl extends HttpServlet {
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
		String writer = request.getParameter("writer");
		// jsp로부터 받아온 값을 각 객체에 저장한다.
		
		Board1VO vo = new Board1VO();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setWriter(writer);
		// 저장된 값을 vo의 해당 객체에 저장한다.
		
		Board1DAO dao = new Board1DAO();
		int cnt = dao.addBoard(vo);
		// updateQuery 는 1 또는 -1 의 값을 반환하기 때문에 int로 선언된 cnt에 담아두는 것이다.
		if(cnt>0) {
			response.sendRedirect("GetBoardListCtrl");
		} else {
			response.sendRedirect("./board/addBoardForm.jsp");
		}
		// sendRedirect 는 view 를 전환시켜준다, 값을 전달해 처리하는 RequestDispatcher 의 forward 와는 다르다.
	}
}
