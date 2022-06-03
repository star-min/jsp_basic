package com.shop.controller.payment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.PaymentVO;
import com.shop.model.PaymentDAO;

@WebServlet("/AddPaymentCtrl")
public class AddPaymentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddPaymentCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String hid = (String) session.getAttribute("sid");
		
		int ono = Integer.parseInt(request.getParameter("ono"));
		String paytype = request.getParameter("paytype");
		String payno = request.getParameter("payno");
		int money = Integer.parseInt(request.getParameter("money"));
		String sdate = request.getParameter("sdate");
		int pno = Integer.parseInt(request.getParameter("pno"));
		int pamount = Integer.parseInt(request.getParameter("pamount"));
		String rname =  request.getParameter("rname");
		String tel = request.getParameter("tel");
		String addr1 =request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String postcode = request.getParameter("postcode");
		String transno = request.getParameter("transno");
		String transco = request.getParameter("transco");
		String rstatus = request.getParameter("rstatus");
		String rdate = request.getParameter("rdate");
		String memo = request.getParameter("memo");

		PaymentVO vo = new PaymentVO();
		vo.setHid(hid);
		vo.setOno(ono);
		vo.setPaytype(paytype);
		vo.setPayno(payno);
		vo.setMoney(money);
		vo.setSdate(sdate);
		vo.setPno(pno);
		vo.setPamount(pamount);
		vo.setRname(rname);
		vo.setTel(tel);
		vo.setAddr1(addr1);
		vo.setAddr2(addr2);
		vo.setPostcode(postcode);
		vo.setTransno(transno);
		vo.setTransco(transco);
		vo.setRstatus(rstatus);
		vo.setRdate(rdate);
		vo.setMemo(memo);
		
		PaymentDAO dao = new PaymentDAO();
		int cnt = dao.addPayment(vo);
		
		if(cnt>0) {
			response.sendRedirect("GetPowderListCtrl");
		} else {
			response.sendRedirect("GetPowderCtrl?pno="+pno);
		}
	}

}
