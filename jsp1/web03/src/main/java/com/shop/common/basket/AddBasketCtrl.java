package com.shop.common.basket;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BasketVO;
import com.shop.model.BasketDAO;

@WebServlet("/AddBasketListCtrl")
public class AddBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddBasketCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int bno = Integer.parseInt(request.getParameter("bno"));
		int pno = Integer.parseInt(request.getParameter("pno"));
		String ptaste = request.getParameter("ptaste");
		int pamount = Integer.parseInt(request.getParameter("pamount"));
		
		BasketVO vo = new BasketVO();
		vo.setBno(bno);
		vo.setPno(pno);
		vo.setPtaste(ptaste);
		vo.setPamount(pamount);
		
		BasketDAO dao = new BasketDAO();
		int cnt = dao.editBasket(vo);
		if(cnt>0) {
			response.sendRedirect("GetBasketListCtrl");
		} else {
			response.sendRedirect("GetBasketCtrl?num="+bno);
		}
	}

}
