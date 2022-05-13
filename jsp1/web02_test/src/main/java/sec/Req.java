package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Req")
public class Req extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Req() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();
		out.println("id:"+id+", name:"+name+"");
	}

}
