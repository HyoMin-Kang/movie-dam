/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2018-09-27 13:24:42 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import moviedam.board.ArticleDBBean;
import moviedam.board.RestaurantDBBean;
import moviedam.member.MemberDBBean;
import moviedam.member.MemberDataBean;
import java.sql.Timestamp;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import java.util.*;
import java.io.*;

public final class updatePro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("moviedam.member.MemberDBBean");
    _jspx_imports_classes.add("moviedam.board.RestaurantDBBean");
    _jspx_imports_classes.add("moviedam.member.MemberDataBean");
    _jspx_imports_classes.add("com.oreilly.servlet.multipart.DefaultFileRenamePolicy");
    _jspx_imports_classes.add("java.sql.Timestamp");
    _jspx_imports_classes.add("moviedam.board.ArticleDBBean");
    _jspx_imports_classes.add("com.oreilly.servlet.MultipartRequest");
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

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
 
	request.setCharacterEncoding("utf-8"); 
	


      out.write('\r');
      out.write('\n');


	String fileName = ""; //서버에 저장된 파일 이름
	String uploadPath = getServletContext().getRealPath("/imageFolder"); //파일을 저장할 서버의 경로
	int maxSize = 5*1024*1024; //5MB
	
	MultipartRequest multi = null;
	
	try {
		//파일업로드 (request, 파일 저장경로, 용량, 인코딩타입, 중복 파일명에 대한 기본 정책)
		multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
	
		//파일 정보 가져와 출력
		Enumeration <?> files = multi.getFileNames();
		while(files.hasMoreElements()) {
			String name = (String)files.nextElement();
			fileName = multi.getFilesystemName(name);
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	}

      out.write("\r\n");
      out.write("\r\n");
      moviedam.board.ArticleDataBean article = null;
      article = (moviedam.board.ArticleDataBean) _jspx_page_context.getAttribute("article", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (article == null){
        article = new moviedam.board.ArticleDataBean();
        _jspx_page_context.setAttribute("article", article, javax.servlet.jsp.PageContext.PAGE_SCOPE);
        out.write("\r\n");
        out.write("   ");
        org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("article"), request);
        out.write('\r');
        out.write('\n');
      }
      out.write('\r');
      out.write('\n');
      moviedam.board.RestaurantDataBean restaurant = null;
      restaurant = (moviedam.board.RestaurantDataBean) _jspx_page_context.getAttribute("restaurant", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (restaurant == null){
        restaurant = new moviedam.board.RestaurantDataBean();
        _jspx_page_context.setAttribute("restaurant", restaurant, javax.servlet.jsp.PageContext.PAGE_SCOPE);
        out.write("\r\n");
        out.write("   ");
        org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("restaurant"), request);
        out.write('\r');
        out.write('\n');
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");

	//게시판 구분
	int board_id = Integer.parseInt(multi.getParameter("board_id"));
	String pageNum = request.getParameter("pageNum");
	int currentPage = Integer.parseInt(pageNum);
	String userid = (String)session.getAttribute("userid");;
	
	//가져올 데이터
	String article_writer = multi.getParameter("article_writer");
	String article_title = multi.getParameter("article_title");
	String article_content = multi.getParameter("article_content");
	Timestamp reg_date = new Timestamp(System.currentTimeMillis());

	if(board_id == 1) { //자유게시판
		String category = multi.getParameter("category");

	    article.setArticle_title(article_title);
	    article.setArticle_content(article_content);
	    article.setArticle_file(fileName);
	    article.setCategory(category);
	    
	    MemberDBBean member_db = MemberDBBean.getInstance();
		MemberDataBean profile = member_db.getProfile(userid);
	    
	    ArticleDBBean dbPro = ArticleDBBean.getInstance();
	    int check = dbPro.updateArticle(article,profile.getMem_nickname()); 
	    if(check==1){

      out.write("\r\n");
      out.write("\t   <meta http-equiv=\"Refresh\" content=\"0;url=content.jsp?board_id=");
      out.print(board_id );
      out.write("&article_id=");
      out.print(article.getArticle_id());
      out.write("&pageNum=");
      out.print(currentPage);
      out.write("\" >\r\n");
 }else{ 
      out.write("\r\n");
      out.write("      <script>      \r\n");
      out.write("      <!--      \r\n");
      out.write("        alert(\"작성자만 수정할 수 있습니다.\");\r\n");
      out.write("      \thistory.go(-2);\r\n");
      out.write("      -->\r\n");
      out.write("     </script>\r\n");

  } 

	    
	} else if(board_id == 2) { //맛집게시판
		String search_loc = multi.getParameter("search_loc");
	
		restaurant.setArticle_writer(article_writer);
		restaurant.setArticle_title(article_title);
		restaurant.setArticle_content(article_content);
		restaurant.setReg_date(new Timestamp(System.currentTimeMillis()));
		restaurant.setSearch_loc(search_loc);
		
		RestaurantDBBean restaurant_db = RestaurantDBBean.getInstance();
		restaurant_db.insertArticle(restaurant);
		response.sendRedirect("./cinema_restaurant.jsp");
	}	


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