/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.60
 * Generated at: 2022-04-26 06:31:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class mypage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/ft.jsp", Long.valueOf(1650441994996L));
    _jspx_dependants.put("/nav.jsp", Long.valueOf(1650954644736L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>회원정보 보기 및 수정</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"wrap\">\r\n");
      out.write("<header id=\"hd\" class=\"panel-heading\">\r\n");
      out.write("	<div class=\"hd_wrap\">\r\n");
      out.write("		");
      out.write("\r\n");
      out.write("\r\n");
		// <% = 스크립트릿(scriptlet)
	String[] dp1 = {"회사소개","지속가능경영","경영정보","재무정보","주식정보"};
	String[][] dp2 = {{"비전","사업소개","연혁","CI/BI","스포츠"},
			{"[ESG스토리]","ESG추진방향","ESG추진채계","이해관계자 참여","지속경영자료실"},
			{"지배구조", "주주총회","정관"},
			{"재무하이라이트","신용등급"},
			{"주주현황","주주환원","배당조회","주가정보"}
	};
	

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<a class=\"Logo\" herf=\"index.jsp\"><img alt=\"\" src=\"\"></a>\r\n");
      out.write("<nav id=\"gnb\">\r\n");
      out.write("	<ul>\r\n");
      out.write("	");
 for(int i=0;i<dp1.length;i++){ 
      out.write("\r\n");
      out.write("		<li>\r\n");
      out.write("			<span class=\"dp1\">");
      out.print(dp1[i]);
      out.write("</span>\r\n");
      out.write("			<ul class=\"sub\">\r\n");
      out.write("			");
 for(int j=0;j<dp2[i].length;j++){ 
      out.write("\r\n");
      out.write("				<li><a class=\"dp2\" href=\"\">");
      out.print( dp2[i][j] );
      out.write("</a></li>\r\n");
      out.write("			");
} 
      out.write("\r\n");
      out.write("			</ul>\r\n");
      out.write("		</li>\r\n");
      out.write("	");
 } 
      out.write("\r\n");
      out.write("	</ul>\r\n");
      out.write("</nav>\r\n");
      out.write("<p id=\"tnb\">\r\n");
      out.write("	");

		String sid = (String) session.getAttribute("uid");
		String sname = (String) session.getAttribute("name");
		if(sid == null){
	
      out.write("\r\n");
      out.write("	<a href=\"login.jsp\">로그인</a>\r\n");
      out.write("	<a href=\"\">방문객</a>\r\n");
      out.write("	<a href=\"agree.jsp\">회원가입</a>\r\n");
      out.write("	");

		} else {
	
      out.write("\r\n");
      out.write("	<a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("	<a href=\"mypage.jsp\">");
      out.print(sname);
      out.write("</a>\r\n");
      out.write("	");
 } 
      out.write("\r\n");
      out.write("	<a href=\"\">상단2</a>\r\n");
      out.write("	<a href=\"memberList.jsp\">회원목록</a>\r\n");
      out.write("	<a href=\"\">상단3</a>\r\n");
      out.write("<span id=\"msg_a\"></span>\r\n");
      out.write("</p>\r\n");
      out.write("<script>\r\n");
      out.write("	//주소 입력줄로 받은 msg를 받아 출력하는 부분임\r\n");
      out.write("	var url = location.href;  //url입력줄의 메시지를 포함한 주소를 저장\r\n");
      out.write("	var pos = url.indexOf(\"?msg=\");\r\n");
      out.write("	var msg = url.substr(pos+5); //메시지만 추출\r\n");
      out.write("	var msg_a = document.getElementById(\"msg_a\"); //해당 msg_a 아이디 요소 선택\r\n");
      out.write("	msg_a.innerHTML = msg;\r\n");
      out.write("	//msg_a.innerHTML = decodeURI(msg);\r\n");
      out.write("	if(pos>0) {\r\n");
      out.write("		if(msg!=\"\"){\r\n");
      out.write("			alert(msg);\r\n");
      out.write("		}\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("	</div>\r\n");
      out.write("</header>\r\n");
      out.write("<div class=\"content\" class=\"panel-body\">\r\n");
      out.write("	<h2>회원 정보 보기</h2>\r\n");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company", "root", "1234");
		String sql = "select * from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, sid);
		rs = pstmt.executeQuery();
		if(rs.next()){

      out.write("\r\n");
      out.write("			<form action=\"memEdit.jsp\" method=\"post\">\r\n");
      out.write("				<table>\r\n");
      out.write("					<tbody>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td>아이디 : </td>\r\n");
      out.write("							<td><input type=\"text\" name=\"uid\" value='");
      out.print(rs.getString("id") );
      out.write("' readonly></td>\r\n");
      out.write("						 </tr>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td>비밀번호 : </td>\r\n");
      out.write("							<td><input type=\"text\" name=\"upw\" value='");
      out.print(rs.getString("pw") );
      out.write("'></td>\r\n");
      out.write("						 </tr>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td>이름 : </td>\r\n");
      out.write("							<td><input type=\"text\" name=\"name\" value='");
      out.print(rs.getString("name") );
      out.write("' readonly></td>\r\n");
      out.write("						 </tr>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td>연락처 : </td>\r\n");
      out.write("							<td><input type=\"tel\" name=\"phone\" value='");
      out.print(rs.getString("phone") );
      out.write("'></td>\r\n");
      out.write("						 </tr>\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td>주소 : </td>\r\n");
      out.write("							<td><input type=\"text\" name=\"address\" value='");
      out.print(rs.getString("address") );
      out.write("'></td>\r\n");
      out.write("						 </tr>\r\n");
      out.write("						 <tr>\r\n");
      out.write("						 	<td colspan=\"2\">\r\n");
      out.write("						 		<input type=\"submit\" value=\"정보변경\"/> &nbsp; &nbsp; &nbsp;&nbsp;\r\n");
      out.write("						 		<input type=\"reset\" value=\"취소\"/>\r\n");
      out.write("						 	</td>\r\n");
      out.write("						 </tr>\r\n");
      out.write("					</tbody>\r\n");
      out.write("				</table>\r\n");
      out.write("			</form>\r\n");
			
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<footer id=\"ft\" class=\"panel-footer\">\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");
 
    	String[] fnb = {"사이트맵","윤리경영","사외내방신청","협력사신문고","공정위 4대 실천사항","보안 신고센터","개인정보처리방침"};
    	String[] sub = {"페이스북","유튜브","네이버 포스트"};
    	String[] iclass = {"xi-facebook","xi-youtube-play","xi=naver"};
    
      out.write("\r\n");
      out.write("    <div class=\"ft_wrap\">\r\n");
      out.write("    	<nav class=\"fnb\"> \r\n");
      out.write("    		");
 for(int i=0;i<fnb.length;i++){ 
      out.write("\r\n");
      out.write("    			<a href=\"\">");
      out.print( fnb[i] );
      out.write("</a>\r\n");
      out.write("    		");
 } 
      out.write("\r\n");
      out.write("\r\n");
      out.write("    		<p class=\"copyright\"> Copryright @ SKtelecom </p>\r\n");
      out.write("    	</nav>\r\n");
      out.write("    </div>");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
