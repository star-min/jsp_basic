package kr.go.sokcho.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditTourListCtrl")
public class EditTourListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditTourListCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String pno = request.getParameter("pno");
		String pid = request.getParameter("pid");
		String pname = request.getParameter("pname");
		String ptype = request.getParameter("ptype");
		String pcoment = request.getParameter("pcoment");
		String pimg1 = request.getParameter("pimg1");
		String pimg2 = request.getParameter("pimg2");
		String pimg3 = request.getParameter("pimg3");
		String pimg4 = request.getParameter("pimg4");
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "update tourlist set pid=?, pname=?, ptype=?, pcoment=?, pimg1=?, pimg2=?, pimg3=?, pimg4=? where pno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			pstmt.setString(2, pname);
			pstmt.setString(3, ptype);
			pstmt.setString(4, pcoment);
			pstmt.setString(5, pimg1);
			pstmt.setString(6, pimg2);
			pstmt.setString(7, pimg3);
			pstmt.setString(8, pimg4);
			pstmt.setString(9, pno);
			cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				response.sendRedirect("GetTourCtrl?pno="+pno);
			} else {
				response.sendRedirect("GetTourListCtrl");
			}
		} catch(Exception e) {
			System.out.println("요청한 update SQL 문장을 처리하지 못함");
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				System.out.println("DB 닫기 실패");
				e.printStackTrace();
			}
		}
	}

}
