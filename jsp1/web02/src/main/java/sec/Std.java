package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Std")
public class Std extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Std() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("시작");
	}

	public void destroy() {
		System.out.println("종료");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String res;
		if (age >= 18) {
			res = "성인";
		} else {
			res = "미성년자";
		}
		
		out.println("당신의 이름은 "+name+"이며. 나이는 "+age+"이고. "+res+"입니다.");
	}
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}

}
