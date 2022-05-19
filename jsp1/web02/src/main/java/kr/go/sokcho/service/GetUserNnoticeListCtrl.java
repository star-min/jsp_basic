package kr.go.sokcho.service;

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

import kr.go.sokcho.model.NnoticeVO;

@WebServlet("/GetUserNnoticeListCtrl")
public class GetUserNnoticeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetUserNnoticeListCtrl() {
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
			sql = "select * from nnotice";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<NnoticeVO> nno = new ArrayList<NnoticeVO>();
			while(rs.next()) {
				NnoticeVO vo = new NnoticeVO();
				vo.setTno(rs.getInt("tno"));
				vo.setNtitle(rs.getString("ntitle"));
				vo.setNcontent(rs.getString("ncontent"));
				vo.setNpic(rs.getString("npic"));
				vo.setResdate(rs.getDate("resdate"));
				vo.setNname(rs.getString("nname"));
				vo.setViewcnt(rs.getInt("viewcnt"));
				nno.add(vo);
			}
			request.setAttribute("nno", nno); 
			RequestDispatcher view = request.getRequestDispatcher("userNnoticeList.jsp");
			view.forward(request, response);
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