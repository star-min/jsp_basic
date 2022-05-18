package sec1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blz.personVO;

@WebServlet("/A05Session")
public class A05Session extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public A05Session() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String msg = "";
		personVO vo = new personVO();
		vo.setId(id);
		vo.setPw(pw);
		vo.setName("관리자");
		
		if(id.equals("admin") && pw.equals("1234")) {
			msg = "로그인성공";
		}
	}

}
