package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.MemberVO;
import com.shop.model.MemberDAO;

@WebServlet("/EditMemberCtrl")
public class EditMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;		// 회원 정보 수정 서블렛

    public EditMemberCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String hid = request.getParameter("hid");
		String hpw = request.getParameter("hpw");
		String hname = request.getParameter("hname");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setHid(hid);
		vo.setHpw(hpw);
		vo.setHname(hname);
		vo.setTel(tel);
		vo.setTel(addr);
		vo.setEmail(email);
		int cnt = dao.editMember(vo);
		if(cnt>0) {  //회원정보수정 성공
			response.sendRedirect("index.jsp");
		} else {  //회원정보수정 실패
			response.sendRedirect("./member/myPage.jsp");
		}	
	}

}
