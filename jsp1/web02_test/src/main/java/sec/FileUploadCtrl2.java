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

@WebServlet("/FileUploadCtrl2")
public class FileUploadCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FileUploadCtrl2() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   request.setCharacterEncoding("UTF-8");
		   response.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html; charset=UTF-8");
		   PrintWriter out = response.getWriter();
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   String sql = "";
		   int cnt = 0;		
		   
		   //String uploadPath=request.getRealPath("upload");
		   String uploadPath="E:\\java_web3\\web02\\src\\main\\webapp\\upload";
		   FileVO vo = new FileVO();
		   int size = 10*1024*1024;
		   String name="";
		   String subject="";
		   String filename1="";
		   String filename2="";
		   
		   try{
		      //MultipartRequest multi=new MultipartRequest(request,uploadPath,size,"UTF-8",new DefaultFileRenamePolicy());
		      MultipartRequest multi=new MultipartRequest(request,uploadPath,size,"UTF-8");
		      name=multi.getParameter("name");
		      subject=multi.getParameter("subject");
		      
		      Enumeration files=multi.getFileNames();
		      
		      String file1 =(String)files.nextElement();
		      filename1=multi.getFilesystemName(file1);
		      String file2 =(String)files.nextElement();
		      filename2=multi.getFilesystemName(file2);
		      
		      vo.setName(name);
		      vo.setSubject(subject);
		      vo.setFilename1(filename1);
		      vo.setFilename1(filename2);
		      
		   } catch(Exception e){
		      e.printStackTrace();
		   }

		   
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
				sql = "insert into filelist values(file_seq.nextval,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, subject);
				pstmt.setString(3, filename1);
				pstmt.setString(4, filename2);
				cnt = pstmt.executeUpdate();
				if(cnt!=0) {
					out.println("<p>이름 : "+name+"</p>");
					out.println("<p>제목 : "+subject+"</p>");
					out.println("<p>파일명1 : "+filename1+"</p>");
					out.println("<p>파일명2 : "+filename2+"</p>");
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				try {
					pstmt.close();
					conn.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
	}
}