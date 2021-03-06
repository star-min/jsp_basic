package kr.go.sokcho.service;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import filter.SHA256;

@WebServlet("/JoinProCtrl")
public class JoinProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		try {
			mpw = SHA256.encrypt(mpw);
		} catch (NoSuchAlgorithmException e1) {
			e1.printStackTrace();
		}
		String mname = request.getParameter("mname");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "insert into member values(?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			pstmt.setString(3, mname);
			pstmt.setString(4, tel);
			pstmt.setString(5, email);
			pstmt.setString(6, birth);
			cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				response.sendRedirect("joinForm.jsp");
			} else {
				response.sendRedirect("login.jsp");
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