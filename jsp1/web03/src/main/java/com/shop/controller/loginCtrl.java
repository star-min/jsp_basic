package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.common.MemberVO;
import com.shop.model.MemberDAO;
@WebServlet("/loginCtrl")
public class loginCtrl extends HttpServlet {			//로그인 ctrl
	private static final long serialVersionUID = 1L;
    public loginCtrl() {super();}
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String hid = request.getParameter("hid");
		String hpw = request.getParameter("hpw");
		String hname = request.getParameter("hname");
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setHid(hid);
		vo.setHpw(hpw);
		vo.setHpw(hname);
		int cnt = dao.login(vo);
		HttpSession session = request.getSession();
		if(cnt>0) {
			session.setAttribute("sid", hid);
			session.setAttribute("sname", hname);
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("./member/login.jsp");
			}
		}
	}