package kr.go.sokcho.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.sokcho.model.ReviewVO;

@WebServlet("/GetReviewListCtrl")
public class GetReviewListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public GetReviewListCtrl() {
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
			sql = "select * from review";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<ReviewVO> regeno = new ArrayList<ReviewVO>();
			while(rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setRno(rs.getInt("rno")); //오라클연결해서 여기부터 하면댐 위에 스콧으로 해놨음 안돼면 시스템으로 바꿔야함
				vo.setRtitle(rs.getString("rtitle"));
				vo.setRplace(rs.getString("rplace"));
				vo.setRtodate(rs.getDate("rtodate"));
				vo.setRfromdate(rs.getDate("rfromdate"));
				vo.setIcontent(rs.getString("icontent"));
				vo.setIpic1(rs.getString("ipic1"));
				vo.setIpic2(rs.getString("ipic2"));
				vo.setRid(rs.getString("rid"));
				vo.setRpw(rs.getString("rpw"));
				vo.setRdate(rs.getDate("rdate"));
				vo.setViewcnt(rs.getInt("viewcnt"));
				regeno.add(vo);
			}
			request.setAttribute("regeno", regeno);
			RequestDispatcher view = request.getRequestDispatcher("reviewList.jsp");
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
