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

import kr.go.yeosu.model.ImpressionVO;

@WebServlet("/GetUserImpressionCtrl")
public class GetUserImpressionCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetUserImpressionCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		int ino = Integer.parseInt(request.getParameter("ino"));
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from impression where ino=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ino);
			rs = pstmt.executeQuery();
			ImpressionVO vo = new ImpressionVO();
			if(rs.next()) {
				//레코드(튜플) 데이터를 하나씩 불러와 해당VO 객체에 저장
				vo.setIno(rs.getInt("ino"));
				vo.setItitle(rs.getString("ititle"));
				vo.setIplace(rs.getString("iplace"));
				vo.setItodate(rs.getDate("itodate"));
				vo.setIfromdate(rs.getDate("ifromdate"));
				vo.setIcontent(rs.getString("icontent"));
				vo.setIpic1(rs.getString("ipic1"));
				vo.setIpic2(rs.getString("ipic2"));
				vo.setCid(rs.getString("cid"));
				vo.setIpw(rs.getString("ipw"));
				vo.setIdate(rs.getDate("idate"));
				vo.setViewcnt(rs.getInt("viewcnt"));
			}
			request.setAttribute("vo", vo); //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("userImpression.jsp"); //보내질 곳을 지정하기
			view.forward(request, response);//지정된 곳에 저장된 요청 데이터를 전송하기
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