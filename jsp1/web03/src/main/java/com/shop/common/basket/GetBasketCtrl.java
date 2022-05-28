package com.shop.common.basket;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BasketVO;
import com.shop.model.BasketDAO;

@WebServlet("/GetBasketCtrl")
public class GetBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetBasketCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int bno = Integer.parseInt(request.getParameter("bno"));
		BasketDAO dao = new BasketDAO();
		BasketVO basket = new BasketVO();
		basket = dao.getBasket(bno);
		if(basket != null) {
			request.setAttribute("basket", basket);
			RequestDispatcher view = request.getRequestDispatcher("./basket/getBasket.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetBasketListCtrl");
		}
	}

}
