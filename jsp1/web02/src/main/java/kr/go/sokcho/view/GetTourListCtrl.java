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

import kr.go.sokcho.model.TourlistVO;

@WebServlet("/GetTourListCtrl")
public class GetTourListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public GetTourListCtrl() {
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
			sql = "select * from tuorlist";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<TourlistVO> tourList = new ArrayList<TourlistVO>();
			while(rs.next()) {
				TourlistVO tou = new TourlistVO();
				tou.setPno(rs.getInt("pno")); //오라클연결해서 여기부터 하면댐 위에 스콧으로 해놨음 안돼면 시스템으로 바꿔야함
				tou.setPid(rs.getString("pid"));
				tou.setPname(rs.getString("pname"));
				tou.setPtype(rs.getString("ptype"));
				tou.setPcoment(rs.getString("pcoment"));
				tou.setPimg1(rs.getString("pimg1"));
				tou.setPimg2(rs.getString("pimg2"));
				tou.setPimg3(rs.getString("pimg3"));
				tou.setPimg4(rs.getString("pimg4"));
				tourList.add(tou);
			}
			request.setAttribute("tourList", tourList);
			RequestDispatcher view = request.getRequestDispatcher("tourlist.jsp");
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
