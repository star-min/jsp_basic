package kr.go.yeosu.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditTourlistCtrl")
public class EditTourlistCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditTourlistCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int ppno = Integer.parseInt(request.getParameter("ppno"));
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
			sql = "update tourlist set ptype=?, pcoment=?, pimg1=?, pimg2=?, pimg3=?, pimg4=?, pname=? where ppno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ptype);
			pstmt.setString(2, pcoment);
			pstmt.setString(3, pimg1);
			pstmt.setString(4, pimg2);
			pstmt.setString(5, pimg3);
			pstmt.setString(6, pimg4);
			pstmt.setString(7, pname);
			pstmt.setInt(8, ppno);
			cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				response.sendRedirect("GetTourCtrl?ppno="+ppno);
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