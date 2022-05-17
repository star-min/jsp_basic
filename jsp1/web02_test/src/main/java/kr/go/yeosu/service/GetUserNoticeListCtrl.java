package kr.go.yeosu.service;

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

import kr.go.yeosu.model.NoticeVO;

@WebServlet("/GetUserNoticeListCtrl")
public class GetUserNoticeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetUserNoticeListCtrl() {
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
			sql = "select * from notice";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			//ArrayList형의 제네릭 해당VO로 객체 선언 : 해당 테이블의 정보를 저장할 리스트
			List<NoticeVO> list = new ArrayList<NoticeVO>();
			while(rs.next()) {
				//레코드(튜플) 데이터를 하나씩 불러와 해당VO 객체에 저장
				NoticeVO vo = new NoticeVO();
				vo.setNno(rs.getInt("nno"));
				vo.setNtitle(rs.getString("ntitle"));
				vo.setNconetnt(rs.getString("nconetnt"));
				vo.setNpic(rs.getString("npic"));
				vo.setNdata(rs.getString("ndata"));
				vo.setResdate(rs.getDate("resdate"));
				vo.setNname(rs.getString("nname"));
				vo.setViewcnt(rs.getInt("viewcnt"));
				//저장된 객체(레코드 데이터)를 리스트에 추가
				list.add(vo);
			}
			request.setAttribute("list", list); //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("userNoticeList.jsp"); //보내질 곳을 지정하기
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