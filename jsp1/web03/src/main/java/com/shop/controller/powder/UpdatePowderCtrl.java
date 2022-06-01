package com.shop.controller.powder;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.shop.common.PowderVO;
import com.shop.model.PowderDAO;

@WebServlet("/UpdatePowderCtrl")
public class UpdatePowderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdatePowderCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String saveFolder = "E:/java/jsp_basic/jsp1/web03/src/main/webapp/upload";
		String encType = "UTF-8";
		int maxSize = 10 * 1024 * 1024;	// 10MB
		
		MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, encType);
		
		int pno = Integer.parseInt(multi.getParameter("pno"));
		String pgory = request.getParameter("pgory");
		String pname = request.getParameter("pname");
		int pprice = Integer.parseInt(multi.getParameter("pprice"));
		String ptaste = request.getParameter("ptaste");
		int pamount = Integer.parseInt(multi.getParameter("pamount"));
		String pcomment = request.getParameter("pcomment");
		String pimage = "";
		
		try {			
			if (multi.getFilesystemName("pimage") != null) {
				String name = multi.getFilesystemName("pimage");
				File f = multi.getFile(name);
				pimage = name;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		PowderVO vo = new PowderVO();
		vo.setPno(pno);
		vo.setPgory(pgory);
		vo.setPname(pname);
		vo.setPprice(pprice);
		vo.setPtaste(ptaste);
		vo.setPamount(pamount);
		vo.setPcomment(pcomment);
		vo.setPimage(pimage);
		
		PowderDAO dao = new PowderDAO();
		int cnt = dao.updatePowder(vo);
		if(cnt>0){  // 성공
			response.sendRedirect("GetPowderListCtrl");
		} else {  // 실패
			response.sendRedirect("GetPowderCtrl?pno="+pno);
		}
	}
}
