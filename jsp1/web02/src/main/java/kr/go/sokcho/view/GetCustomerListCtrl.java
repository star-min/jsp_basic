package kr.go.sokcho.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.sokcho.model.MemberVO;

@WebServlet("/GetCustomerListCtrl")
public class GetCustomerListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetCustomerListCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			sql = "select * from customer";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<MemberVO> mamberlist = new ArrayList<MemberVO>();
			while(rs.next()) {
				MemberVO mem = new MemberVO();
				mem.setMid(rs.getString("mid")); //오라클연결해서 여기부터 하면댐 위에 스콧으로 해놨음 안돼면 시스템으로 바꿔야함
			}
		} catch(Exception e) {
			
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(Exception e) {
				
			}
		}
	}

}
