/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2018-09-16 15:36:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class cinema_005frestaurant_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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

	request.setCharacterEncoding("utf-8");
	String title = "영화관 맛집";

      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("title", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(title), request.getCharacterEncoding()), out, false);
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/nav.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\t<h3>\r\n");
      out.write("\t\t");
      out.print(title);
      out.write("\r\n");
      out.write("\t\t<small class=\"text-muted\">Cinema Restaurant</small>\r\n");
      out.write("\t</h3>\r\n");
      out.write("\t<div class=\"list_serch form-inline\" align=\"center\">\r\n");
      out.write("\t\t<form>\r\n");
      out.write("\t\t\t<select class=\"form-control\" name=\"option\">\r\n");
      out.write("\t\t\t\t<option value=\"all\">전체글</option>\r\n");
      out.write("\t\t\t\t<option value=\"subject\">제목</option>\r\n");
      out.write("\t\t\t\t<option value=\"content\">내용</option>\r\n");
      out.write("\t\t\t\t<option value=\"writer\">작성자</option>\r\n");
      out.write("\t\t\t</select> \r\n");
      out.write("\t\t\t<input class=\"form-control\" type=\"text\" name=\"search\" size=\"30\" placeholder=\"궁금한 것을 검색해보세요\"> \r\n");
      out.write("\t\t\t<input class=\"btn btn-outline-secondary\" type=\"submit\" value=\"검색\" />\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"dropdown\">\r\n");
      out.write("\t\t\t<button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" id=\"selectRegion\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">지역 선택</button>\r\n");
      out.write("\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"selectRegion\">\r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">서울</a> \r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">경기도</a> \r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">경상도</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"dropdown\">\r\n");
      out.write("\t\t\t<button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" id=\"selectCinema\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">영화관 선택</button>\r\n");
      out.write("\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"selectCinema\">\r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">CGV</a> \r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">롯데시네마</a> \r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">메가박스</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"dropdown\">\r\n");
      out.write("\t\t\t<button class=\"btn btn-secondary dropdown-toggle\" type=\"button\" id=\"selectCinema\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">정렬 순서</button>\r\n");
      out.write("\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"selectCinema\">\r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">최신순</a> \r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">댓글순</a> \r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">추천순</a>\r\n");
      out.write("\t\t\t\t<a class=\"dropdown-item\" href=\"#\">조회순</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"col-sm-6 col-md-4\">\r\n");
      out.write("\t\t\t<div class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t<img src=\"/movie-dam/assets/images/pic/my-pic.png\">\r\n");
      out.write("\t\t\t\t<div class=\"caption\">\r\n");
      out.write("\t\t\t\t\t<h3>맛집제목</h3>\r\n");
      out.write("\t\t\t\t\t<p>맛집설명</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<a class=\"btn btn-sm btn-outline-secondary\" href=\"writeForm.jsp?board_id=2&article_writer=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" role=\"button\" ><i class=\"fas fa-edit\"></i>글쓰기</a>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
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
