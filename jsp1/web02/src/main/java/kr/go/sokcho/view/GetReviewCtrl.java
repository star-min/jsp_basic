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

import kr.go.sokcho.model.ReviewVO;

@WebServlet("/GetReviewCtrl")
public class GetReviewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public GetReviewCtrl() {
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
			sql = "select * from review";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<ReviewVO> review = new ArrayList<ReviewVO>();
			while(rs.next()) {
				ReviewVO rev = new ReviewVO();
				rev.setRno(rs.getInt("rno")); //오라클연결해서 여기부터 하면댐 위에 스콧으로 해놨음 안돼면 시스템으로 바꿔야함
				rev.setRtitle(rs.getString("rtitle"));
				rev.setRplace(rs.getString("rplace"));
				rev.setRtodate(rs.getDate("rtodate"));
				rev.setRfromdate(rs.getDate("rfromdate"));
				rev.setIcontent(rs.getString("icontent"));
				rev.setIpic1(rs.getString("ipic1"));
				rev.setIpic2(rs.getString("ipic2"));
				rev.setRid(rs.getString("rid"));
				rev.setRpw(rs.getString("rpw"));
				rev.setRdate(rs.getDate("rdate"));
				rev.setViewcnt(rs.getInt("viewcnt"));
				review.add(rev);
			}
			request.setAttribute("review", review);
			RequestDispatcher view = request.getRequestDispatcher("Review.jsp");
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
