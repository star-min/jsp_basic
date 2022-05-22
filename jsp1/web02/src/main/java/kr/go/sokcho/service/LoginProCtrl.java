package kr.go.sokcho.service;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import filter.SHA256;
import kr.go.sokcho.model.MemberVO;

@WebServlet("/LoginProCtrl")
public class LoginProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginProCtrl() {
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
		String lid = "";
		String lpw = "";
		String lname = "";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet os = null;
		String sql = "";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from member where mid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			os = pstmt.executeQuery();
			MemberVO vo = new MemberVO();
			HttpSession session = request.getSession();
			if(os.next()) {
				lid = os.getString("mid");
				lpw = os.getString("mpw");
				lname = os.getString("mname");
				if(lpw.equals(mpw)) {
					session.setAttribute("sid", lid);
					session.setAttribute("sname", lname);
					response.sendRedirect("index.jsp");	
				} else {
					session.invalidate();
					response.sendRedirect("login.jsp");	
				}
			} else { 
				session.invalidate();
				response.sendRedirect("login.jsp");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				os.close();
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}