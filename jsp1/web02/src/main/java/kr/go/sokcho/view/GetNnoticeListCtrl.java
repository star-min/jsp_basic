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

import kr.go.sokcho.model.NnoticeVO;

@WebServlet("/GetNnoticeListCtrl")
public class GetNnoticeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetNnoticeListCtrl() {
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
			sql = "select * from Nnotice";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<NnoticeVO> nnotice = new ArrayList<NnoticeVO>();
			while(rs.next()) {
				NnoticeVO nno = new NnoticeVO();
				nno.setTno(rs.getInt("tno")); //오라클연결해서 여기부터 하면댐 위에 스콧으로 해놨음 안돼면 시스템으로 바꿔야함
				nno.setNtitle(rs.getString("ntitle"));
				nno.setNcontent(rs.getString("ncontent"));
				nno.setNpic(rs.getString("npic"));
				nno.setResdate(rs.getDate("resdate"));
				nno.setNname(rs.getString("nname"));
				nno.setViewcnt(rs.getInt("viewcnt"));
				nnotice.add(nno);
			}
			request.setAttribute("Nnotice", nnotice);
			RequestDispatcher view = request.getRequestDispatcher("nnotice.jsp");
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
