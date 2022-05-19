package kr.go.sokcho.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.go.sokcho.model.MemberVO;

@WebServlet("/GetMypageCtrl")
public class GetMypageCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetMypageCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet ms = null;
		String sql = "";
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sid");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from member where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			ms = pstmt.executeQuery();
			MemberVO mem = new MemberVO();
			if(ms.next()) {
				mem.setMid(ms.getString("mid"));
				mem.setMpw(ms.getString("mpw"));
				mem.setMname(ms.getString("mname"));
				mem.setTel(ms.getString("tel"));
				mem.setEmail(ms.getString("email"));
				mem.setBirth(ms.getDate("birth"));
				mem.setJoinday(ms.getDate("joinday"));
			}
			request.setAttribute("mem", mem);  //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("mypage.jsp");  //보내질 곳 지정
			view.forward(request, response);   //지정된 곳에 저장된 요청데이터를 전송하기
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ms.close();
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}