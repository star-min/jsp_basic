package sec1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blz.personVO;

@WebServlet("/A03VOContext")
public class A03VOContext extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext ctx = null;
       
    public A03VOContext() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		personVO seongmin = new personVO();
		seongmin.setName("김성민");
		seongmin.setAddress("일산");
		seongmin.setAge(26);
		seongmin.setIq(120.8);
		ctx.setAttribute("seongmin", seongmin);
		ctx.setAttribute("year", 2022);
		ctx.setAttribute("nick", "안녕하세요 여러분");
		PrintWriter out = response.getWriter();
		out.println("<a href='A04VOResult'>결과 서블릿으로 이동</a>");
		out.close();
	}

}
