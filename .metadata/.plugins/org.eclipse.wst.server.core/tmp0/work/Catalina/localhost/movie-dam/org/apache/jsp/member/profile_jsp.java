/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2018-09-13 14:31:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import moviedam.member.MemberDBBean;
import moviedam.member.MemberDataBean;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1536840093378L));
    _jspx_dependants.put("jar:file:/D:/_server/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/movie-dam/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1090214156000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("moviedam.member.MemberDBBean");
    _jspx_imports_classes.add("moviedam.member.MemberDataBean");
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

	request.setCharacterEncoding("utf-8");
	String mem_userid = request.getParameter("mem_userid");
	
	try{
		MemberDBBean mem_db = MemberDBBean.getInstance(); 
		MemberDataBean profile =  mem_db.getProfile(mem_userid);

		String title = profile.getMem_nickname()+"님의 프로필";

      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("title", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(title), request.getCharacterEncoding()), out, false);
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/nav.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"card bg-secondary mb-3\" style=\"max-width: 20rem;\">\r\n");
      out.write("  \t\t\t<h3 class=\"card-header\">");
      out.print(profile.getMem_nickname() );
      out.write("</h3>\r\n");
      out.write("    \t\t<img style=\"height: 200px; width: 100%; display: block;\" src=\"/movie-dam/assets/images/user_profile.png\" alt=\"Card image cap\">\r\n");
      out.write("  \t\t\t<div class=\"card-body\">\r\n");
      out.write("\t    \t\t<h4 class=\"card-title\"></h4>\r\n");
      out.write("\t    \t\t<a href=\"./profile_follower.jsp?mem_userid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userid }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"card-link\">팔로워 xx명</a>\r\n");
      out.write("    \t\t\t<a href=\"./profile_following.jsp?mem_userid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userid }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"card-link\">팔로잉 xx명</a>\r\n");
      out.write("\t    \t\t<a href=\"#\" class=\"btn btn-info\">팔로우</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"card-footer text-muted\">\r\n");
      out.write("    \t\t\t최근 접속 시간 : \r\n");
      out.write("  \t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"list-group list-group-flush\">\r\n");
      out.write("\t\t\t\t<a href=\"./profile.jsp?mem_userid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userid }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"list-group-item list-group-item-action active\">기본 정보</a>\r\n");
      out.write("\t\t\t\t<a href=\"#\" class=\"list-group-item list-group-item-action\">활동</a>\r\n");
      out.write("\t\t\t\t<a href=\"./message_received.jsp?mem_userid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userid }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"list-group-item list-group-item-action\">메시지</a>\r\n");
      out.write("\t\t\t\t<a href=\"./profile_setting.jsp?mem_userid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userid }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"list-group-item list-group-item-action\">설정</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("  \t\t<div class=\"col-lg-8\">\r\n");
      out.write("  \t\t\t<h3>\r\n");
      out.write("\t\t\t\t기본 정보\r\n");
      out.write("\t\t\t\t<small class=\"text-muted\">Profile</small>\r\n");
      out.write("\t\t\t</h3>\r\n");
      out.write("\t\t\t<table class=\"table table-bordered\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>아이디</th>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(profile.getMem_userid() );
      out.write("</td>\r\n");
      out.write("    \t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>이메일</th>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(profile.getMem_email() );
      out.write("</td>\r\n");
      out.write("    \t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>이름</th>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(profile.getMem_name() );
      out.write("</td>\r\n");
      out.write("    \t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>생년월일</th>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(profile.getMem_birth() );
      out.write("</td>\r\n");
      out.write("    \t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>성별</th>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(profile.getMem_gender() );
      out.write("</td>\r\n");
      out.write("    \t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>닉네임</th>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(profile.getMem_nickname() );
      out.write("</td>\r\n");
      out.write("    \t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>주소</th>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(profile.getMem_address() );
      out.write("</td>\r\n");
      out.write("    \t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>가입일</th>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(profile.getJoin_date() );
      out.write("</td>\r\n");
      out.write("    \t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");

	} catch(Exception e){

      out.write("\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\talert('잘못된 접근입니다!');\r\n");
      out.write("\t\thistory.go(-1);\r\n");
      out.write("\t</script>\t\t\r\n");

	}

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
