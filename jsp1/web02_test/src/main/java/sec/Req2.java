package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Req2")
public class Req2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Req2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String no = request.getParameter("no");
		String name = request.getParameter("name");
		int jumsu = Integer.parseInt(request.getParameter("jumsu"));
		String res = "";
		if(jumsu>=70) {
			res = "합격";
		} else {
			res = "불합격";
		}
		out.println(name+"님의 점수는 "+jumsu+"점이며, "+res+"하셨습니다.");
	}

}
