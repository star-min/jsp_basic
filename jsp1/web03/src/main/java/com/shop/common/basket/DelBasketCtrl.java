package com.shop.common.basket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.BasketDAO;

@WebServlet("/DelBasketCtrl")
public class DelBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DelBasketCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BasketDAO dao = new BasketDAO();
		int cnt = dao.delBasket(bno);
		
		if(cnt>0) {
			response.sendRedirect("GetBasketListCtrl");
		} else {
			response.sendRedirect("GetBasketCtrl?num"+bno);
		}
	}

}
