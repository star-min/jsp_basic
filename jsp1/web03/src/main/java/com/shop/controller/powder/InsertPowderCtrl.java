package com.shop.controller.powder;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.shop.common.PowderVO;
import com.shop.model.PowderDAO;

@WebServlet("/InsertPowderCtrl")
public class InsertPowderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertPowderCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String saveFolder = "D:\\ksm\\jsp_basic\\jsp1\\web03\\src\\main\\webapp\\upload";
		String encType = "UTF-8";
		int maxSize = 10 * 1024 * 1024;	// 10MB
		
		MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, encType);
		
		String pgory = multi.getParameter("pgory");
		String pname = multi.getParameter("pnname");
		int pprice = Integer.parseInt(multi.getParameter("pprice"));
		String ptaste = multi.getParameter("ptaste");
		int pamount = Integer.parseInt(multi.getParameter("pamount"));
		String pcomment = multi.getParameter("pcomment");
		String pimage = "";
		
		try {			
			if (multi.getFilesystemName("pimage") != null) {
				String name = multi.getFilesystemName("pimage");
				pimage = name;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		PowderDAO dao = new PowderDAO();
		PowderVO vo = new PowderVO();
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
