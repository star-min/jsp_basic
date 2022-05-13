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

@WebServlet("/AddNoticeCtrl")
public class AddNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddNoticeCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String ntitle = request.getParameter("ntitle");
		String nconetnt = request.getParameter("nconetnt");
		String npic = request.getParameter("npic");
		String ndata = request.getParameter("ndata");
		String nname = request.getParameter("nname");
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "insert into notice values(noti_seq.nextval, ?, ?, ?, ?, sysdate, ?, 1)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntitle);
			pstmt.setString(2, nconetnt);
			pstmt.setString(3, npic);
			pstmt.setString(4, ndata);
			pstmt.setString(5, nname);
			cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				response.sendRedirect("addNoticeForm.jsp");
			} else {
				response.sendRedirect("GetNoticeListCtrl");
			}
		} catch(Exception e) {
			System.out.println("요청한 insert SQL 문장을 처리하지 못함");
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