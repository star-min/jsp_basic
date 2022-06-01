package com.shop.common.basket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.BasketVO;
import com.shop.model.BasketDAO;

@WebServlet("/AddBasketCtrl")
public class AddBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddBasketCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//getpowder.jsp에서 보내온 hid, pno, ptaste, pamount 를 getParameter로 가져와 해당 변수에 저장
		int pno = Integer.parseInt(request.getParameter("pno"));
		String ptaste = request.getParameter("ptaste");
		HttpSession session = request.getSession();
		String hid = (String) session.getAttribute("sid");
		int pamount = 1;

		BasketVO vo = new BasketVO();
		vo.setHid(hid);
		vo.setPno(pno);
		vo.setPtaste(ptaste);
		vo.setPamount(pamount);
		
		//BasketDAO의 객체 dao를 생성하여 addBasket()을 호출하면서 vo를 전달한 후 cnt를 결과로 받음 
		BasketDAO dao = new BasketDAO();
		int cnt = dao.addBasket(vo);
		
		//이동할 주소 지정 -> response.sendRedirect("");
		if(cnt>0) {
			response.sendRedirect("GetPowderListCtrl");
		} else {
			response.sendRedirect("GetPowderCtrl?pno="+pno);
		}
	}

}
