package kr.go.sokcho.view;

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
		String rno = request.getParameter("rno");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from review where rno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rno);
			rs = pstmt.executeQuery();
			ReviewVO vo = new ReviewVO();
			if(rs.next()) {
				vo.setRno(rs.getInt("rno"));
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
			}
			request.setAttribute("vo", vo);  //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("review.jsp");  //보내질 곳 지정
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
		}// TODO Auto-generated method stub
	}

}
