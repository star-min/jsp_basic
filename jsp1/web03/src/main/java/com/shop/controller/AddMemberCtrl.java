package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.MemberVO;
import com.shop.model.MemberDAO;

@WebServlet("/AddMemberCtrl")
public class AddMemberCtrl extends HttpServlet {			// 회원가입 ctrl 입니다.
	private static final long serialVersionUID = 1L;

    public AddMemberCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String Hid = request.getParameter("hid");
		String Hpw = request.getParameter("hpw");
		String Hname = request.getParameter("hname");
		String Tel = request.getParameter("tel");
		String Addr = request.getParameter("addr");
		String Email = request.getParameter("email");
		String Birth = request.getParameter("birth");
//		String Joinday = request.getParameter("joinday");	가입일 인데 없어도 될것같다.
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setHid(Hid);
		vo.setHpw(Hpw);
		vo.setHname(Hname);
		vo.setTel(Tel);
		vo.setAddr(Addr);
		vo.setEmail(Email);
		vo.setBirth(Birth);
		int cnt = dao.addMember(vo);
		
		if(cnt>0) {  //회원가입 성공
			response.sendRedirect("./member/login.jsp");
		} else {  //회원가입 실패
			response.sendRedirect("./member/join.jsp");
		}	
	}

}
