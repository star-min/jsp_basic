package sec;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/FileUploadCtrl")
public class FileUploadCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FileUploadCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   request.setCharacterEncoding("UTF-8");
	   response.setCharacterEncoding("UTF-8");
	   response.setContentType("text/html; charset=UTF-8");
	   PrintWriter out = response.getWriter();	
	   String uploadPath="E:\\java_web3\\web02\\src\\main\\webapp\\upload";
	   int size = 10*1024*1024;  //업로드 가능한 최대 파일 크기
	   String name="";
	   String subject="";
	   String filename1="";
	   String filename2="";
	   try {
	      //MultipartRequest multi=new MultipartRequest(request,uploadPath,size,"UTF-8",new DefaultFileRenamePolicy());
	      MultipartRequest multi=new MultipartRequest(request,uploadPath,size,"UTF-8");  //파일 덮어쓰기
	      name=multi.getParameter("name");
	      subject=multi.getParameter("subject");
	      Enumeration files=multi.getFileNames();  //여러 파일일 경우 나열형 선언하여 활용
	      String file1 =(String)files.nextElement();	//첫 번째 파일 업로드
	      filename1=multi.getFilesystemName(file1);
	      String file2 =(String)files.nextElement();	//두 번째 파일 업로드
	      filename2=multi.getFilesystemName(file2);
	      
	      out.println("<p>이름 : "+name+"</p>");
	      out.println("<p>제목 : "+subject+"</p>");
	      out.println("<p>이미지1 : "+filename1+"</p>");
	      out.println("<p>이미지2 : "+filename2+"</p>");
	   } catch(Exception e){
	      e.printStackTrace();
	   }
	}
}