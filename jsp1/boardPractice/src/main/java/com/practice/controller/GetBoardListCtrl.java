package com.practice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice.common.Board1VO;
import com.practice.model.Board1DAO;

@WebServlet("/GetBoardListCtrl")
public class GetBoardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public GetBoardListCtrl() {
		super();
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Board1DAO dao = new Board1DAO();
		ArrayList<Board1VO> list = dao.getBoardList();
		req.setAttribute("list", list);
		RequestDispatcher view = req.getRequestDispatcher("./board1/getBoardList.jsp");
		view.forward(req, resp);
		
	}
	

}
