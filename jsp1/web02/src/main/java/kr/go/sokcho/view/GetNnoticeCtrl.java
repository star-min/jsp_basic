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

import kr.go.sokcho.model.NnoticeVO;

@WebServlet("/GetNnoticeCtrl")
public class GetNnoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetNnoticeCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		String mid = request.getParameter("tno");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from nnotice where tno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			NnoticeVO nno = new NnoticeVO();
			if(rs.next()) {
				nno.setTno(rs.getInt("tno")); //오라클연결해서 여기부터 하면댐 위에 스콧으로 해놨음 안돼면 시스템으로 바꿔야함
				nno.setNtitle(rs.getString("ntitle"));
				nno.setNcontent(rs.getString("ncontent"));
				nno.setNpic(rs.getString("npic"));
				nno.setResdate(rs.getDate("resdate"));
				nno.setNname(rs.getString("nname"));
				nno.setViewcnt(rs.getInt("viewcnt"));
			}
			request.setAttribute("nno", nno);  //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("nnotice.jsp");  //보내질 곳 지정
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
