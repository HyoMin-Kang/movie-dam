/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2018-09-10 12:18:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class profile_005ffollowing_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\r');
      out.write('\n');

	request.setCharacterEncoding("utf-8");
	String title = "ㅇㅇㅇ님의 프로필";

      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("title", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(title), request.getCharacterEncoding()), out, false);
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/nav.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"main\">\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- About Me (Left Sidebar) Start -->\r\n");
      out.write("\t\t\t<div class=\"col-md-3\">\r\n");
      out.write("\t\t\t\t<div class=\"about-fixed\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"my-pic\">\r\n");
      out.write("\t\t\t\t\t\t<img src=\"/movie-dam/assets/images/pic/my-pic.png\" alt=\"\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"javascript:void(0)\" class=\"collapsed\" data-target=\"#menu\" data-toggle=\"collapse\"><i class=\"icon-menu menu\"></i></a>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div id=\"menu\" class=\"collapse\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"menu-link\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">프로필</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">활동</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">메시지</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">설정</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"my-detail\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"white-spacing\">\r\n");
      out.write("\t\t\t\t\t\t\t<h1>Nick Name</h1>\r\n");
      out.write("\t\t\t\t\t\t\t<h5>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"./profile_follower.jsp\">팔로워 00명</a>&nbsp;/&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"./profile_following.jsp\">팔로잉 00명</a>\r\n");
      out.write("\t\t\t\t\t\t\t</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<span><a class=\"btn btn-default\" href=\"#\" role=\"button\">팔로우</a></span> \r\n");
      out.write("\t\t\t\t\t\t\t<span><a class=\"btn btn-default\" href=\"#\" role=\"button\">팔로우 해제</a></span> \r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"social-icon\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\" class=\"facebook\"><i class=\"fa fa-facebook\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\" class=\"twitter\"><i class=\"fa fa-twitter\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\" class=\"linkedin\"><i class=\"fa fa-linkedin\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\" class=\"github\"><i class=\"fa fa-github\"></i></a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- About Me (Left Sidebar) End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- Blog Post (Right Sidebar) Start -->\r\n");
      out.write("\t\t\t<div class=\"col-md-9\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-12 page-body\">\r\n");
      out.write("\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"sub-title\">\r\n");
      out.write("\t\t\t\t\t\t\t<nav class=\"navbar\">\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"collapse navbar-collapse\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tid=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tdata-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\">프로필<span\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tclass=\"caret\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\" role=\"menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"profile_profile.html\">보기</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"profile_edit.html\">편집</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tdata-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\">활동<span\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tclass=\"caret\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\" role=\"menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"active_individual.html\">개인</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"active_like.html\">좋아요</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"active_friend.html\">친구</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tdata-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\">메시지<span\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\tclass=\"caret\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\" role=\"menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"message.html\">받은 메시지</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"message_send.html\">메시지 보내기</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li class=\"nav\"><a href=\"setting.html\" role=\"button\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\taria-expanded=\"false\">설정</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- /.navbar-collapse -->\r\n");
      out.write("\t\t\t\t\t\t\t</nav>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!-- /.container-fluid -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-12 content-page\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav nav-tabs nav-justified\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li role=\"presentation\"><a href=\"./profile_follower.jsp\">팔로워</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li role=\"presentation\" class=\"active\"><a href=\"./profile_following.jsp\">팔로잉</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<!-- Default panel contents -->\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-sm-6 col-md-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"/movie-dam/assets/images/pic/my-pic.png\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"caption\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h3>Nickname</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>친구설명</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default\" role=\"button\">언팔로우</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-sm-6 col-md-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"/movie-dam/assets/images/pic/my-pic.png\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"caption\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h3>Nickname</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>친구설명</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default\" role=\"button\">언팔로우</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-sm-6 col-md-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"thumbnail\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"/movie-dam/assets/images/pic/my-pic.png\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"caption\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h3>Nickname</h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>친구설명</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default\" role=\"button\">언팔로우</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<!-- Footer Start -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-12 page-body margin-top-50 footer\">\r\n");
      out.write("\t\t\t\t\t\t\t<footer>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"menu-link\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">프로필</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">활동</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">메시지</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">설정</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>©2018 영화담</p>\r\n");
      out.write("\t\t\t\t\t\t\t</footer>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!-- Footer End -->\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- Blog Post (Right Sidebar) End -->\r\n");
      out.write("\r\n");
      out.write("\t\t</div> <!-- /.row -->\r\n");
      out.write("\t</div> <!-- /.container -->\r\n");
      out.write("</div> <!-- /.main -->\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/footer.jsp", out, false);
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
