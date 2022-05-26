package com.shop.controller.powder;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.PowderVO;
import com.shop.model.PowderDAO;

@WebServlet("/GetPowderListCtrl")
public class GetPowderListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetPowderListCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PowderDAO dao = new PowderDAO();
		ArrayList<PowderVO> list = dao.getPowderList();
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("./powder/getPowderList.jsp");
		view.forward(request, response);
	}
}
