package kr.go.yeosu.service;

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

import kr.go.yeosu.model.CustomerVO;

@WebServlet("/GetUserCtrl")
public class GetUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetUserCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		HttpSession session = request.getSession();
		String cid = (String) session.getAttribute("sid");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from customer where cid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			rs = pstmt.executeQuery();
			CustomerVO cus = new CustomerVO();
			if(rs.next()) {
				cus.setCid(rs.getString("cid"));
				cus.setUpw(rs.getString("upw"));
				cus.setUname(rs.getString("uname"));
				cus.setTel(rs.getString("tel"));
				cus.setEmail(rs.getString("email"));
				cus.setBirth(rs.getDate("birth"));
				cus.setRegdate(rs.getDate("regdate"));
				cus.setVisited(rs.getInt("visited"));
				cus.setUpoint(rs.getInt("upoint"));
				cus.setUrank(rs.getInt("urank"));
			}
			request.setAttribute("cus", cus);  //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("userinfo.jsp");  //보내질 곳 지정
			view.forward(request, response);   //지정된 곳에 저장된 요청데이터를 전송하기
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}