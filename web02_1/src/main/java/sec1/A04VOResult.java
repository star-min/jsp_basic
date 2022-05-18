package sec1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blz.personVO;

@WebServlet("/A04VOResult")
public class A04VOResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext ctx = null;
       
    public A04VOResult() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		ctx = config.getServletContext();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		personVO seongmin = (personVO) ctx.getAttribute("seongmin");
		String nick = (String) ctx.getAttribute("nick");
		int year = (int) ctx.getAttribute("year");
		
		out.println("<h1>이름 : "+seongmin.getName()+"</h1>");
		
	}

}
