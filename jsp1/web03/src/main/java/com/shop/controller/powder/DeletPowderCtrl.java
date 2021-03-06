package com.shop.controller.powder;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.PowderDAO;

@WebServlet("/DeletPowderCtrl")
public class DeletPowderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeletPowderCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int pno = Integer.parseInt(request.getParameter("pno")); 
		PowderDAO dao = new PowderDAO();		
		int cnt = dao.deletePowder(pno); 
		if(cnt>0) {  // 보충제 삭제 성공
			response.sendRedirect("GetPowderListCtrl");
		} else {  // 보충제 삭제 실패
			response.sendRedirect("GetPowderCtrl?num="+pno);
		}	
		
	}

}
