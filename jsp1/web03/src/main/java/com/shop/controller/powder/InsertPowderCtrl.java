package com.shop.controller.powder;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.PowderVO;
import com.shop.model.PowderDAO;

@WebServlet("/InsertGoodsCtrl")
public class InsertPowderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertPowderCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int pno = Integer.parseInt(request.getParameter("pno"));
		String pgory = request.getParameter("pgory");
		String pname = request.getParameter("pnname");
		int pprice = Integer.parseInt(request.getParameter("pprice"));
		String ptaste = request.getParameter("ptaste");
		int pamount = Integer.parseInt(request.getParameter("pamount"));
		String pcomment = request.getParameter("pcomment");
		String pimage = request.getParameter("pimage");
		
		PowderDAO dao = new PowderDAO();
		PowderVO vo = new PowderVO();
		vo.setPno(pno);
		vo.setPgory(pgory);
		vo.setPname(pname);
		vo.setPprice(pprice);
		vo.setPtaste(ptaste);
		vo.setPamount(pamount);
		vo.setPcomment(pcomment);
		vo.setPimage(pimage);
		
		int cnt = dao.insertPowder(vo);
		if(cnt>0) {
			response.sendRedirect("GetPowderListCtrl");
		} else {
			response.sendRedirect("./board/insertPowderForm.jsp");
		}
	}

}
