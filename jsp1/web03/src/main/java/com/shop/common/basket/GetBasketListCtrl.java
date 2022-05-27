package com.shop.common.basket;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BasketVO;
import com.shop.model.BasketDAO;

@WebServlet("/GetBasketListCtrl")
public class GetBasketListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetBasketListCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BasketDAO dao = new BasketDAO();
		ArrayList<BasketVO> list = dao.getBasketList();
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("./basket/getBasketList.jsp");
		view.forward(request, response);
	}

}
