package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import VO.MemberVO;

@WebServlet("/AddMemberCtrl")
public class AddMemberCtrl extends HttpServlet {

	private static final long serialVersionUID = 1L;	// 느낌표누르면 자동생성됨

	public AddMemberCtrl(){
		super();
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String Custname = req.getParameter("custname");
		String Phone = req.getParameter("phone");
		String Address = req.getParameter("address");
		String Grade = req.getParameter("grade");
		String City = req.getParameter("city");
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		
		vo.setCustname(Custname);
		vo.setPhone(Phone);
		vo.setAddress(Address);
		vo.setGrade(Grade);
		vo.setCity(City);
		
		int cnt;
		try {
			cnt = dao.addMember(vo);
			if(cnt>0){
				// 성공시
				resp.sendRedirect("./index.jsp");
			} else {
				//실패시
				resp.sendRedirect("./joinForm.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}
	
	
}
