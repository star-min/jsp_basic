package com.shop.controller.powder;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.PowderVO;
import com.shop.model.PowderDAO;

@WebServlet("/GetPowderCtrl")
public class GetPowderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetPowderCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		PowderDAO dao = new PowderDAO();
		PowderVO powder = new PowderVO();
		powder = dao.getPowder(num);
		if(powder != null) {
			request.setAttribute("powder", powder);
			RequestDispatcher view = request.getRequestDispatcher("./powder/getPowder.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetPowderListCtrl");
		}
	}
}
