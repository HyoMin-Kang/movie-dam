/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2018-09-27 14:38:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import moviedam.board.ArticleDBBean;
import moviedam.board.ArticleDataBean;
import moviedam.board.ArticlelikeDataBean;
import moviedam.board.CommentDBBean;
import moviedam.board.CommentDataBean;
import java.text.SimpleDateFormat;
import java.util.List;
import java.sql.*;

public final class content_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("moviedam.board.ArticlelikeDataBean");
    _jspx_imports_classes.add("moviedam.board.CommentDataBean");
    _jspx_imports_classes.add("moviedam.board.CommentDBBean");
    _jspx_imports_classes.add("moviedam.board.ArticleDataBean");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
    _jspx_imports_classes.add("moviedam.board.ArticleDBBean");
    _jspx_imports_classes.add("java.util.ArrayList");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

	request.setCharacterEncoding("utf-8");
	String title = "게시글 상세보기";
	String userid = (String)session.getAttribute("userid");
	String category = request.getParameter("category");
	int board_id = Integer.parseInt(request.getParameter("board_id"));
	int count = 0;
	int likecount = 0;

      out.write('\n');
      out.write('\n');

	int article_id = Integer.parseInt(request.getParameter("article_id"));
	String pageNum = request.getParameter("pageNum");
	
	if (pageNum == null) {
        pageNum = "1";
    }

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

	try {
		ArticleDBBean article_db = ArticleDBBean.getInstance();
		ArticleDataBean article = article_db.getArticle(article_id);

		ArticleDBBean like_db = ArticleDBBean.getInstance();
		likecount = like_db.getlikeCount(userid, article_id);

      out.write('\n');
      out.write('\n');

	ArrayList<CommentDataBean> commentList = null;
		CommentDBBean cmt_db = CommentDBBean.getInstance();
		count = cmt_db.getCommentCount(article_id);
		if (count > 0) {
			commentList = cmt_db.getComments(article_id);
		}
		
	try{
		  if(session.getAttribute("userid")==null)
			  userid="not";
		  else
			  userid= (String)session.getAttribute("userid");    
		}catch(Exception e){}	

      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("title", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(title), request.getCharacterEncoding()), out, false);
      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/nav.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("\t<h3>\n");
      out.write("\t\t게시판명\n");
      out.write("\t\t<small class=\"text-muted\">Detail View</small>\n");
      out.write("\t</h3>\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\" onclick=\"location.href='free_board.jsp?pageNum=");
      out.print(pageNum);
      out.write("&category=");
      out.print(category);
      out.write("'\">글목록</button>\n");
      out.write("\t\t<table class=\"table table-bordered\">\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>글번호</td>\n");
      out.write("\t\t\t\t<td>");
      out.print(article.getArticle_id() );
      out.write("</td>\n");
      out.write("\t\t\t\t<td>조회수</td>\n");
      out.write("\t\t\t\t<td>");
      out.print(article.getArticle_hits() );
      out.write("</td>\n");
      out.write("\t\t\t\t<td>추천수</td>\n");
      out.write("\t\t\t\t<td>");
      out.print(article.getArticle_gets() );
      out.write("</td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>작성자</td>\n");
      out.write("\t\t\t\t<td>");
      out.print(article.getArticle_writer());
      out.write("님</td>\n");
      out.write("\t\t\t\t<td>작성일</td>\n");
      out.write("\t\t\t\t<td>");
      out.print(sdf.format(article.getReg_date()));
      out.write("</td>\n");
      out.write("\t\t\t\t<td>카테고리</td>\n");
      out.write("\t\t\t\t<td>");
      out.print(article.getCategory());
      out.write("</td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>제목</td>\n");
      out.write("\t\t\t\t<td colspan=\"5\">");
      out.print(article.getArticle_title());
      out.write("</td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>내용</td>\n");
      out.write("\t\t\t\t<td colspan=\"5\">");
      out.print(article.getArticle_content().replace("\r\n", "<br>") );
      out.write("</td>\n");
      out.write("\t\t\t</tr>\n");

if(article.getArticle_file() != null) {

      out.write("\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td colspan=\"6\"><img src=\"/movie-dam/imageFolder/");
      out.print(article.getArticle_file());
      out.write("\" width=\"250px\"></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td colspan=\"6\">첨부된 파일 : <a href=\"#\">");
      out.print(article.getArticle_file() );
      out.write("</a></td>\n");
      out.write("\t\t\t</tr>\n");

}
if(userid.equals("not")) {

      out.write("\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td colspan=\"6\">\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\" disabled=\"disabled\">수정</button>\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\" disabled=\"disabled\">삭제</button>\n");
      out.write("\t\t\t\t</td>\n");
      out.write("\t\t\t</tr>\n");
}else{ 
      out.write("\t\t\t\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td colspan=\"6\">\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\" onclick=\"location.href='updateForm.jsp?board_id=");
      out.print(board_id);
      out.write("&article_id=");
      out.print(article_id);
      out.write("&pageNum=");
      out.print(pageNum);
      out.write("&article_writer=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'\">수정</button>\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\" onclick=\"location.href='deletePro.jsp?board_id=");
      out.print(board_id);
      out.write("&article_id=");
      out.print(article_id);
      out.write("&pageNum=");
      out.print(pageNum);
      out.write("&article_writer=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.userid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'\">삭제</button>\n");
      out.write("\t\t\t\t</td>\n");
      out.write("\t\t\t</tr>\n");
} 
      out.write("\t\t\t\n");
      out.write("\t\t</table>\n");
      out.write("\t\t\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<a id=\"like\" href=\"#\" onclick=\"clickLike();\"><i id=\"likeIcon\" class=\"far fa-heart fa-2x\"></i></a><span id=\"likeCount\">");
      out.print(likecount );
      out.write("개</span>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\n");
      out.write("\t\t<form action=\"contentPro.jsp?article_id=");
      out.print(article_id);
      out.write("\">\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"cmt_ref\" value=\"");
      out.print(article.getArticle_id());
      out.write("\"> \n");
      out.write("\t\t\t<input type=\"hidden\" name=\"pageNum\" value=\"");
      out.print(pageNum);
      out.write("\">\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"cmt_writer\" value=\"");
      out.print(userid );
      out.write("\">\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"board_id\" value=\"");
      out.print(board_id );
      out.write("\">\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"category\" value=\"");
      out.print(category );
      out.write("\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<table class=\"table\">\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\"></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td colspan=\"3\" align=\"center\">comment(");
      out.print(count);
      out.write(")\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td height=\"100\" align=\"center\">");
      out.print(userid);
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td colspan=\"2\" align=\"right\" style=\"font-size: 14px;\">\n");
      out.write("\t\t\t\t\t\t<textarea class=\"form-control\" rows=\"3\" cols=\"160\" name=\"cmt_content\"></textarea>\n");
      out.write("\t\t\t\t\t\t<input class=\"btn btn-outline-secondary btn-sm\" type=\"submit\" name=\"register\" value=\"댓글 작성\"> \n");
      out.write("\t\t\t\t\t\t<input class=\"btn btn-outline-secondary btn-sm\" type=\"reset\" value=\"다시쓰기\">\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t</form>\t\n");
      out.write("\t\t\t\t");

					if (commentList != null && commentList.size() > 0) {
							for (int i = 0; i < commentList.size(); i++) {
								CommentDataBean comment = commentList.get(i);
				
      out.write("\n");
      out.write("\t\t<form name=\"updatecomment\" method=\"post\" action=\"updateCommentPro.jsp\"> \n");
      out.write("\t\t\n");
      out.write("\t\t\t<table class=\"table\">\t\t\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td rowspan=2 align=\"center\">img</td>\n");
      out.write("\t\t\t\t\t<td colspan=2 align=\"left\" style=\"font-size: 14px;\">\n");
      out.write("\t\t\t\t\t\t<b>");
      out.print(comment.getCmt_writer());
      out.write("</b> (");
      out.print(comment.getCmt_date());
      out.write(")\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr height=\"75\">\n");
      out.write("\t\t\t\t\t<td colspan=2 style=\"font-size: 14px;\">");
      out.print(comment.getCmt_content());
      out.write("</td>\n");
      out.write("\t\t\t\t</tr>\n");
 
	if(userid.equals(comment.getCmt_writer())) {

      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td colspan=3 align=\"right\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\" onclick=\"updateOpen(");
      out.print(comment.getCmt_id());
      out.write(',');
      out.write(' ');
      out.print(article_id);
      out.write(',');
      out.write(' ');
      out.print(pageNum);
      out.write(',');
      out.write(' ');
      out.print(board_id);
      out.write(',');
      out.write(' ');
      out.print(category);
      out.write(");\">수정</button>\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-danger\" \n");
      out.write("\t\t\t\t\t\t\tonclick=\"document.location.href='deleteCommentPro.jsp?article_id=");
      out.print(article_id);
      out.write("&cmt_id=");
      out.print(comment.getCmt_id());
      out.write("&userid=");
      out.print(userid);
      out.write("&pageNum=");
      out.print(pageNum);
      out.write("&cmt_ref=");
      out.print(article_id);
      out.write("&pageNum=");
      out.print(pageNum);
      out.write("&board_id=");
      out.print(board_id);
      out.write("&category=");
      out.print(category);
      out.write("'\">삭제</button>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\t\n");

	} else {
	

      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td colspan=3 align=\"right\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-secondary\" disabled=\"disabled\">수정</button>\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-sm btn-outline-danger\" disabled=\"disabled\">삭제</button>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\t\n");

	}

      out.write("\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t");

					}
						}

					} catch (Exception e) {

					}
				
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t</form>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/module/footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function updateOpen(cmt_id, article_id, pageNum, board_id, category) {\n");
      out.write("\turl = 'updateCommentForm.jsp?cmt_id=' + cmt_id + '&article_id=' + article_id + '&pageNum=' + pageNum + '&board_id=' + board_id + '&category=' + category;\n");
      out.write("\twindow.open(url, '댓글 수정', 'height=200, width=400, scrollbars=no, resizable=no');\n");
      out.write("}\n");
      out.write("</script>\t\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function clickLike() {\n");
      out.write("\t$.ajax({\n");
      out.write("\t\ttype: 'POST',\n");
      out.write("\t\tcache: false,\n");
      out.write("        url: 'content_like_pro.jsp?board_id=");
      out.print(board_id);
      out.write("&article_id=");
      out.print(article_id);
      out.write("&mem_id=");
      out.print(userid);
      out.write("',\n");
      out.write("        dataType: 'xml',\n");
      out.write("        success: function(){\n");
      out.write("            $('#likeIcon').removeClass('far');\n");
      out.write("            $('#likeIcon').addClass('fas');\n");
      out.write("            $('#likeIcon').attr('style', 'color:red')\n");
      out.write("            $('#likeCount').html(");
      out.print(likecount);
      out.write("+'개');\n");
      out.write("        }\n");
      out.write("\t});\n");
      out.write("}\n");
      out.write("\n");
      out.write("function clickDelete() {\n");
      out.write("\t$.ajax({\n");
      out.write("\t\ttype: 'POST',\n");
      out.write("\t\tcache: false,\n");
      out.write("        url: 'content_delete_pro.jsp?board_id=");
      out.print(board_id);
      out.write("&article_id=");
      out.print(article_id);
      out.write("&mem_id=");
      out.print(userid);
      out.write("',\n");
      out.write("        dataType: 'xml',\n");
      out.write("        success: function(data) {\n");
      out.write("        \talert('성공함');\n");
      out.write("        \tconsole.log(data);\n");
      out.write("        },\n");
      out.write("        error: function() {\n");
      out.write("        \t\n");
      out.write("        \treturn false;\n");
      out.write("        }\n");
      out.write("\t});\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</body>\n");
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
