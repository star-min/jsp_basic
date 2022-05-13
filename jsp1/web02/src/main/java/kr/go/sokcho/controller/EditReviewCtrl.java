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

@WebServlet("/EditReviewCtrl")
public class EditReviewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditReviewCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String rno = request.getParameter("rno");
		String rtitle = request.getParameter("rtitle");
		String rplace = request.getParameter("rplace");
		String rdodate = request.getParameter("rdodate");
		String rfromdate = request.getParameter("rfromdate");
		String icontent = request.getParameter("icontent");
		String ipic1 = request.getParameter("ipic1");
		String ipic2 = request.getParameter("ipic2");
		String rid = request.getParameter("rid");
		String rpw = request.getParameter("rpw");
		String rdate = request.getParameter("rdate");
		String viewcnt = request.getParameter("viewcnt");
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "update review set rtitle=?, rplace=?, rdodate=?, rfromdate=?, icontent=?, ipic1=?, ipic2=?, rid=?, rpw=?, rdate=?, viewcnt=? where rno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rtitle);
			pstmt.setString(2, rplace);
			pstmt.setString(3, rdodate);
			pstmt.setString(4, rfromdate);
			pstmt.setString(5, icontent);
			pstmt.setString(6, ipic1);
			pstmt.setString(7, ipic2);
			pstmt.setString(8, rid);
			pstmt.setString(9, rpw);
			pstmt.setString(10, rdate);
			pstmt.setString(11, viewcnt);
			pstmt.setString(12, rno);
			cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				response.sendRedirect("GetReviewCtrl?rno="+rno);
			} else {
				response.sendRedirect("GetReviewListCtrl");
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
