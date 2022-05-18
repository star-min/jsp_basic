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

@WebServlet("/A01Context")
public class A01Context extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext sc = null;

    public A01Context() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		sc = config.getServletContext();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		sc.setAttribute("name", "김성민");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<tutle>ServletContext</title>");
		out.println("</head>");
		
		out.println("<body>");
		out.println("<h1>ContextPath : "+sc.getContextPath()+"</h1>");
		out.println("<h1>Servlet Module Major version : "+sc.getMajorVersion()+"</h1>");
		out.println("<h1>Servlet Module Minor version : "+sc.getMinorVersion()+"</h1>");
		out.println("<h1>Web02_1 Context Real Path : "+sc.getRealPath("/data")+"</h1>");
		out.println("<h1>Server 정보 : "+sc.getServerInfo()+"</h1>");
		out.println("<h1>Servlet Context Name : "+sc.getServletContextName()+"</h1>");
		out.println("<h1>name Context 불러오기 : "+sc.getAttribute("name")+"</h1>");
		out.println("<h1>컨텍스트 초기화 파라미터 : "+sc.getInitParameter("logEnabled")+"</h1>");
		out.println("<h1>컨텍스트 초기화 디버그레벨 : "+sc.getInitParameter("debugLevel")+"</h1>");
		out.println("</body>");
		out.println("</html>");
	}

}
