package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if(id.equals("admin") && pw.equals("1234")) {
			session.setAttribute("name", "관리자");
			session.setAttribute("id", "admin");
			out.println("<h2>관리자 로그인 성공~!</h2>");
		} else {
			session.invalidate();
			out.println("<h2>관리자 로그인 실패~!</h2>");
		}
		out.println("<a href='ex03.html'>웹 문서로 가기</a>");
	}
}