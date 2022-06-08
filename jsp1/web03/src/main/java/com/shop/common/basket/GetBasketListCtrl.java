package com.shop.common.basket;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.BasketDetailVO;
import com.shop.model.BasketDAO;

@WebServlet("/GetBasketListCtrl")
public class GetBasketListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetBasketListCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		String hid = (String) session.getAttribute("sid");
		
		BasketDAO dao = new BasketDAO();
		ArrayList<BasketDetailVO> list = dao.getBasketList(hid);
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("./basket/getBasketList.jsp");
		view.forward(request, response);

	}

}
