package com.shop.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BoardVO;
import com.shop.common.PowderVO;
import com.shop.model.LatestDAO;

@WebServlet("/LatestCtrl")
public class LatestCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LatestCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		LatestDAO dao = new LatestDAO();
		ArrayList<BoardVO> boardList;
		boardList = dao.latestBoard();
		ArrayList<PowderVO> powderList;
		powderList = dao.latestPowder();
		
		request.setAttribute("boardList", boardList);
		request.setAttribute("powderList", powderList);
		
		RequestDispatcher view = request.getRequestDispatcher("./latest/getlatest.jsp");
		view.forward(request, response);
	}

}
