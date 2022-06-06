package com.shop.controller.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.PowderVO;
import com.shop.model.PaymentDAO;

@WebServlet("/SailFormCtrl")
public class SailFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SailFormCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int pno = Integer.parseInt(request.getParameter("pno"));
		int bno = 0;
		if(request.getParameter("bno")!=null) bno = Integer.parseInt(request.getParameter("bno"));
//		String ptaste = request.getParameter("ptaste");
		
		PaymentDAO dao = new PaymentDAO();
		PowderVO powder = dao.callByPay(pno);
		if(powder != null) {
			request.setAttribute("powder", powder);
			if(bno!=0) request.setAttribute("bno", bno);
			RequestDispatcher view = request.getRequestDispatcher("./payment/saleForm.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetPowderListCtrl");
		}
	}
}