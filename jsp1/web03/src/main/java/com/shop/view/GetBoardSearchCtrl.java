package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BoardVO;
import com.shop.model.BoardDAO;

@WebServlet("/GetBoardSearchCtrl")
public class GetBoardSearchCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetBoardSearchCtrl() {
        super();
    }
    	//검색창 만들기
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String condition = request.getParameter("searchCondition");	// 제목인지 내용인지 를 담는곳
		String keyword = request.getParameter("searchKeyword");		// 검색할 단어를 담는곳
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardVO> list = dao.getConditionSearch(condition, keyword);
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("./board/getBoardList.jsp");
		view.forward(request, response);
	}
}