package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Student;

/**
 * Servlet implementation class StudentCtrl
 */
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
		PrintWriter out = response.getWriter();
		Student st1 = new Student();
		st1.setNo(1);
		st1.setName("김기태");
		st1.setKor(95);
		st1.setEng(90);
		st1.setMat(100);
		request.setAttribute("student", st1);	//보내질 데이터 저장
		RequestDispatcher view = request.getRequestDispatcher("ex06.jsp"); //보내질 곳 지정
		view.forward(request, response); //실제 데이터 전송
	}
}