package com.shop.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BoardVO;
import com.shop.model.BoardDAO;

@WebServlet("/GetBoardCtrl")
public class GetBoardCtrl extends HttpServlet {				// 글 상세정보 보기를 위한 ctrl
	private static final long serialVersionUID = 1L;
       
    public GetBoardCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDAO dao = new BoardDAO();
		BoardVO board = new BoardVO();
		board = dao.getBoard(num);			//DAO 에 있는 셀렉트 메소드를 가져온다.
		if(board != null) {
			request.setAttribute("board", board);
			RequestDispatcher view = request.getRequestDispatcher("./board/getBoard.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetBoardListCtrl");
		}
	}
}