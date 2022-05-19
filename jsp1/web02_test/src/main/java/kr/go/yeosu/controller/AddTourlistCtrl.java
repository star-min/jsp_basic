package kr.go.yeosu.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/AddTourlistCtrl")
public class AddTourlistCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddTourlistCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String pid = "";
		String pname = "";
		String ptype = "";
		String pcoment = "";
		String name1, name2, name3, name4;
		String file1, file2, file3, file4;
		String filename1 = "", filename2 = "", filename3="", filename4="";
		String pat = "./tourlist/";  //업로드된 폴더
		String realFolder = "E:\\java_web3\\web02\\src\\main\\webapp\\tourlist"; //관리자가 업로드할 이미지가 있는 폴더
		String saveFolder = "tourlist"; //실제 업로드된 폴더 
		String encType = "UTF-8";
		int maxSize = 5*1024*1024;  //최대 5MB 설정
		pid = request.getParameter("pid1") + request.getParameter("pid2");
		pname = request.getParameter("pname");
		ptype = request.getParameter("ptype");
		pcoment = request.getParameter("pcoment");
		name1 = request.getParameter("pimg1");
		name2 = request.getParameter("pimg2");
		name3 = request.getParameter("pimg3");
		name4 = request.getParameter("pimg4");
		
		try {
			ServletContext context = request.getServletContext();
			realFolder = context.getRealPath(saveFolder);
			
			MultipartRequest multi = null;
			//multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
			multi = new MultipartRequest(request, realFolder, maxSize, encType);
			pid = multi.getParameter("pid1") + multi.getParameter("pid2");
			pname = multi.getParameter("pname");
			ptype = multi.getParameter("ptype");
			pcoment = multi.getParameter("pcoment");

			name1 = multi.getParameter("pimg1");
			name2 = multi.getParameter("pimg2");
			name3 = multi.getParameter("pimg3");
			name4 = multi.getParameter("pimg4");
			
			Enumeration params = multi.getParameterNames();
			Enumeration files = multi.getFileNames();
			
			file4 = (String) files.nextElement();
			filename4 = multi.getFilesystemName(file4);
			System.out.println(filename4);

			file3 = (String) files.nextElement();
			filename3 = multi.getFilesystemName(file3);
			System.out.println(filename3);

			file2 = (String) files.nextElement();
			filename2 = multi.getFilesystemName(file2);
			System.out.println(filename2);


			file1 = (String) files.nextElement();
			filename1 = multi.getFilesystemName(file1);
			System.out.println(filename1);

		} catch(Exception e) {
			e.printStackTrace();
		}
		
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			//"A"+"11"+"0008"=A110008
			sql = "select count(*) as res from tourlist";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getInt("res") < 10) {
					pid = pid + "000" +(rs.getInt("res")+1);
				} else if(rs.getInt("res") < 100) {
					pid = pid + "00" +(rs.getInt("res")+1);
				} else if(rs.getInt("res") < 1000) {
					pid = pid + "0" +(rs.getInt("res")+1);
				} else {
					pid = pid + (rs.getInt("res")+1);
				}
			}
			System.out.println(pid);
			rs.close();
			pstmt.close();
			
			sql = "insert into tourlist values(tour_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			pstmt.setString(2, pname);
			pstmt.setString(3, ptype);
			pstmt.setString(4, pcoment);
			pstmt.setString(5, pat+filename1);
			pstmt.setString(6, pat+filename2);
			pstmt.setString(7, pat+filename3);
			pstmt.setString(8, pat+filename4);
			cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				response.sendRedirect("addTourlistForm.jsp");
			} else {
				response.sendRedirect("GetTourListCtrl");
			}
		} catch(Exception e) {
			System.out.println("요청한 insert SQL 문장을 처리하지 못함");
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				System.out.println("DB 닫기 실패");
				e.printStackTrace();
			}
		}
	}
}