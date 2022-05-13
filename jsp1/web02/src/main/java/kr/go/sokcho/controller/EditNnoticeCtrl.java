package kr.go.sokcho.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditNnoticeCtrl")
public class EditNnoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditNnoticeCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String tno = request.getParameter("tno");
		String ntitle = request.getParameter("ntitle");
		String ncontent = request.getParameter("ncontent");
		String npic = request.getParameter("npic");
		String resdate = request.getParameter("resdate");
		String nname = request.getParameter("nname");
		String viewcnt = request.getParameter("viewcnt");
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "update nnotice set ntitle=?, ncontent=?, npic=?, resdate=?, nname=?, viewcnt=? where tno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntitle);
			pstmt.setString(2, ncontent);
			pstmt.setString(3, npic);
			pstmt.setString(4, resdate);
			pstmt.setString(5, nname);
			pstmt.setString(6, viewcnt);
			pstmt.setString(7, tno);
			cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				response.sendRedirect("GetNnoticeCtrl?tno="+tno);
			} else {
				response.sendRedirect("GetNnoticeListCtrl");
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
