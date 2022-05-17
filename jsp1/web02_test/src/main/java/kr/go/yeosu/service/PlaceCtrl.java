package kr.go.yeosu.service;

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

import kr.go.yeosu.model.TourlistVO;

@WebServlet("/PlaceCtrl")
public class PlaceCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlaceCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		String pid = request.getParameter("ptype") + request.getParameter("prop") + "%";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from tourlist where pid like ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			rs = pstmt.executeQuery();
			ArrayList<TourlistVO> list = new ArrayList<TourlistVO>();
			while(rs.next()) {
				TourlistVO vo = new TourlistVO();
				vo.setPpno(rs.getInt("ppno"));
				vo.setPid(rs.getString("pid"));
				vo.setPname(rs.getString("pname"));
				vo.setPtype(rs.getString("ptype"));
				vo.setPcoment(rs.getString("pcoment"));
				vo.setPimg1(rs.getString("pimg1"));
				vo.setPimg2(rs.getString("pimg2"));
				vo.setPimg3(rs.getString("pimg3"));
				vo.setPimg4(rs.getString("pimg4"));
				list.add(vo);
			}
			request.setAttribute("list", list);  //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("place.jsp");  //보내질 곳 지정
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