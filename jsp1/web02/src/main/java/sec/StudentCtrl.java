package sec;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Student;

@WebServlet("/StudentCtrl")
public class StudentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudentCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		Student stl = new Student();
		stl.setNo(1);
		stl.setName("김성민");
		stl.setEng(90);
		stl.setKor(100);
		stl.setMat(100);
		request.setAttribute("student", stl);
		RequestDispatcher view = request.getRequestDispatcher("ex06.jsp");
		view.forward(request,response);
	}

}
