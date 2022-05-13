package kr.go.sokcho.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.sokcho.model.MemberVO;

@WebServlet("/GetMemberListCtrl")
public class GetMemberListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetMemberListCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
			while(rs.next()) {
				MemberVO mem = new MemberVO();
				mem.setMid(rs.getString("mid")); //오라클연결해서 여기부터 하면댐 위에 스콧으로 해놨음 안돼면 시스템으로 바꿔야함
				mem.setMpw(rs.getString("mpw"));
				mem.setMname(rs.getString("mname"));
				mem.setTel(rs.getString("tel"));
				mem.setEmail(rs.getString("email"));
				mem.setBirth(rs.getDate("birth"));
				mem.setJoinday(rs.getDate("joinday"));
				memberList.add(mem);
			}
			request.setAttribute("memberList", memberList);
			RequestDispatcher view = request.getRequestDispatcher("memberList.jsp");
			view.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}
