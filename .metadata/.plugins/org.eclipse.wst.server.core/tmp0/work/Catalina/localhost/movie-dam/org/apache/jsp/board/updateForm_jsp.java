/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2018-09-27 13:24:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import moviedam.board.ArticleDBBean;
import moviedam.board.ArticleDataBean;
import moviedam.board.BoardDBBean;
import moviedam.board.BoardDataBean;
import moviedam.member.MemberDBBean;
import moviedam.member.MemberDataBean;

public final class updateForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("moviedam.board.ArticleDataBean");
    _jspx_imports_classes.add("moviedam.board.BoardDBBean");
    _jspx_imports_classes.add("moviedam.board.ArticleDBBean");
    _jspx_imports_classes.add("moviedam.board.BoardDataBean");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

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
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
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

	request.setCharacterEncoding("utf-8");

      out.write('\r');
      out.write('\n');

	String title = "게시글 수정";
	int article_id = Integer.parseInt(request.getParameter("article_id"));
	String pageNum = request.getParameter("pageNum");
	int board_id = Integer.parseInt(request.getParameter("board_id"));
	String userid = (String)session.getAttribute("userid");
	
	
	ArticleDBBean dbPro = ArticleDBBean.getInstance();
	ArticleDataBean article = dbPro.updateGetArticle(article_id);

	BoardDBBean board_db = BoardDBBean.getInstance();
	BoardDataBean board = board_db.getBoard(board_id);

	MemberDBBean member_db = MemberDBBean.getInstance();
	MemberDataBean profile = member_db.getProfile(userid);

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
      out.write("\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<form method=\"post\" name=\"updateform\" action=\"updatePro.jsp?board_id=");
      out.print(board_id);
      out.write("&pageNum=");
      out.print(pageNum);
      out.write("&article_id=");
      out.print(article_id );
      out.write("\" onsubmit=\"return writeSave()\" enctype=\"multipart/form-data\">\r\n");
      out.write(" \t\t<input type=\"hidden\" name=\"article_id\" value=\"");
      out.print(article_id);
      out.write("\"> \r\n");
      out.write("\t\r\n");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      boolean _jspx_th_c_005fif_005f0_reused = false;
      try {
        _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fif_005f0.setParent(null);
        // /board/updateForm.jsp(47,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fif_005f0.setTest(board_id == 1 );
        int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
        if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t<div class=\"form-group col\">\r\n");
            out.write("\t\t\t\t<label for=\"inputCategory\">카테고리</label> \r\n");
            out.write("\t\t\t\t<select class=\"form-control\" id=\"inputCategory\" name=\"category\" value=\"");
            out.print(article.getCategory());
            out.write("\">\r\n");
            out.write("\t\t\t\t\t<option value=\"전체\" selected=\"selected\">전체</option>\r\n");
            out.write("\t\t\t\t\t<option value=\"사담\">사담</option>\r\n");
            out.write("\t\t\t\t\t<option value=\"영화후기\">영화후기</option>\r\n");
            out.write("\t\t\t\t\t<option value=\"스포일러\">스포일러</option>\r\n");
            out.write("\t\t\t\t\t<option value=\"영화TMI\">영화TMI</option>\r\n");
            out.write("\t\t\t\t\t<option value=\"자랑하기\">자랑하기</option>\r\n");
            out.write("\t\t\t\t\t<option value=\"덕질공간\">덕질공간</option>\r\n");
            out.write("\t\t\t\t</select>\r\n");
            out.write("\t\t\t</div>\r\n");
            int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
        _jspx_th_c_005fif_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
      }
      out.write("\r\n");
      out.write("\t\t\t<div class=\"form-group col\">\r\n");
      out.write("\t\t\t\t<label for=\"inputWriter\" class=\"col-sm-2 col-form-label\">작성자</label>\r\n");
      out.write("\t\t\t\t<div class=\"col-sm-10\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" class=\"form-control\" id=\"inputWriter\" name=\"article_writer\" value=\"");
      out.print(article.getArticle_writer() );
      out.write("\" readonly=\"readonly\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"form-group col\">\r\n");
      out.write("\t\t\t\t<label for=\"inputTitle\" class=\"col-sm-2 col-form-label\">제목</label>\r\n");
      out.write("\t\t\t\t<div class=\"col-sm-10\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" class=\"form-control\" id=\"inputTitle\" name=\"article_title\" value=\"");
      out.print(article.getArticle_title());
      out.write("\" maxlength=\"100\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      boolean _jspx_th_c_005fif_005f1_reused = false;
      try {
        _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
        _jspx_th_c_005fif_005f1.setParent(null);
        // /board/updateForm.jsp(73,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fif_005f1.setTest(board_id == 2 );
        int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
        if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t<div class=\"form-group col\">\r\n");
            out.write("\t\t\t\t<div class=\"form-group\">\r\n");
            out.write("\t\t\t\t\t<label for=\"inputLoc\" class=\"col-sm-2 col-form-label\">장소</label>\r\n");
            out.write("\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
            out.write("\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" id=\"searchLoc\" name=\"search_loc\" placeholder=\"위치를 입력하세요.\">\r\n");
            out.write("\t\t\t\t\t\t<div class=\"input-group-append\">\r\n");
            out.write("\t\t\t\t\t\t\t<button class=\"btn btn-primary\" type=\"button\" onclick=\"searchLocation();\">검색</button>\r\n");
            out.write("\t\t\t\t\t\t</div>\r\n");
            out.write("\t\t\t\t\t</div>\r\n");
            out.write("\t\t\t\t</div>\r\n");
            out.write("\t\t\t\t<div id=\"map\" style=\"width: 500px; height: 400px;\"></div>\r\n");
            out.write("\t\t\t</div>\r\n");
            int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
        _jspx_th_c_005fif_005f1_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
      }
      out.write("\r\n");
      out.write("\t\t\t<div class=\"form-group col\">\r\n");
      out.write("\t\t\t\t<label for=\"exampleTextarea\">내용</label>\r\n");
      out.write("\t\t\t\t<textarea class=\"form-control\" id=\"inputContent\" name=\"article_content\" rows=\"3\" value=\"");
      out.print(article.getArticle_content());
      out.write('"');
      out.write('>');
      out.print(article.getArticle_content());
      out.write("</textarea>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"form-group col\">\r\n");
      out.write("\t\t\t\t<label for=\"exampleInputFile\">첨부파일</label> \r\n");
      out.write("\t\t\t\t<input type=\"file\" class=\"form-control-file\" id=\"inputFile\" name=\"article_file\" aria-describedby=\"fileHelp\" accept=\"image/*\"> \r\n");
      out.write("\t\t\t\t<small id=\"fileHelp\" class=\"form-text text-muted\">이미지 파일만 첨부 가능합니다.</small>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<button type=\"submit\" class=\"btn btn-primary\">작성하기</button>\r\n");
      out.write("\t\t\t<button type=\"reset\" class=\"btn btn-secondary\">다시 작성</button>\r\n");
      out.write("\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\" onclick=\"window.location='./free_board.jsp'\">목록으로</button>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "getMap.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("   \r\n");
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