package kr.go.yeosu.view;

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

import kr.go.yeosu.model.CustomerVO;
//고객정보를 검색하여 vo(dto)의 목록인 customList에 저장하여 view인 jsp파일에 보낸다.
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
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from customer";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<CustomerVO> customList = new ArrayList<CustomerVO>();
			while(rs.next()) {
				CustomerVO cus = new CustomerVO();
				cus.setCid(rs.getString("cid"));
				cus.setUpw(rs.getString("upw"));
				cus.setUname(rs.getString("uname"));
				cus.setTel(rs.getString("tel"));
				cus.setEmail(rs.getString("email"));
				cus.setBirth(rs.getDate("birth"));
				cus.setRegdate(rs.getDate("regdate"));
				cus.setVisited(rs.getInt("visited"));
				cus.setUpoint(rs.getInt("upoint"));
				cus.setUrank(rs.getInt("urank"));
				customList.add(cus);
			}
			request.setAttribute("customList", customList);  //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("customerList.jsp");  //보내질 곳 지정
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