/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2018-09-16 16:14:44 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class getMap_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=aad6a4e933e402699be789f23d230821&libraries=services\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("\t\r\n");
      out.write("\tvar ps = new daum.maps.services.Places();\r\n");
      out.write("\t//마커를 클릭하면 장소명을 표출할 인포윈도우 입니다\r\n");
      out.write("\tvar infowindow = new daum.maps.InfoWindow({zIndex:1});\r\n");
      out.write("\t\r\n");
      out.write("\tvar container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스\r\n");
      out.write("\tvar options = { //지도를 생성할 때 필요한 기본 옵션\r\n");
      out.write("\t\tcenter: new daum.maps.LatLng(37.55814,127.04990), //지도의 중심좌표(한양여대)\r\n");
      out.write("\t\tlevel: 3 //지도의 레벨(확대, 축소 정도)\r\n");
      out.write("\t};\t\r\n");
      out.write("\tvar map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴\r\n");
      out.write("\r\n");
      out.write("\tfunction searchLocation(){\t\t\t\t\r\n");
      out.write("\t\t// 장소 검색 객체를 생성. 키워드로 장소를 검색하는 부분\r\n");
      out.write("\t\tvar loc = $(\"#searchLoc\").val();\r\n");
      out.write("\t\tps.keywordSearch(loc, placesSearchCB); \r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 키워드 검색 완료 시 호출되는 콜백함수 입니다\r\n");
      out.write("\tfunction placesSearchCB (data, status, pagination) {\r\n");
      out.write("\t\tif (status === daum.maps.services.Status.OK) {\r\n");
      out.write("\r\n");
      out.write("\t        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해\r\n");
      out.write("\t        // LatLngBounds 객체에 좌표를 추가합니다\r\n");
      out.write("\t        var bounds = new daum.maps.LatLngBounds();\r\n");
      out.write("\r\n");
      out.write("\t        for (var i=0; i<data.length; i++) {\r\n");
      out.write("\t            displayMarker(data[i]);    \r\n");
      out.write("\t            bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));\r\n");
      out.write("\t        }       \r\n");
      out.write("\r\n");
      out.write("\t        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다\r\n");
      out.write("\t        map.setBounds(bounds);\r\n");
      out.write("\t    } \r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t// 지도에 마커를 표시하는 함수입니다\r\n");
      out.write("\tfunction displayMarker(place) {\r\n");
      out.write("\t    // 마커를 생성하고 지도에 표시합니다\r\n");
      out.write("\t    var marker = new daum.maps.Marker({\r\n");
      out.write("\t        map: map,\r\n");
      out.write("\t        position: new daum.maps.LatLng(place.y, place.x) \r\n");
      out.write("\t    });\r\n");
      out.write("\t    // 마커에 클릭이벤트를 등록합니다\r\n");
      out.write("\t    daum.maps.event.addListener(marker, 'click', function() {\r\n");
      out.write("\t        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다\r\n");
      out.write("\t        infowindow.setContent('<div style=\"padding:5px;font-size:12px;\">' + place.place_name + '</div>');\r\n");
      out.write("\t        infowindow.open(map, marker);\r\n");
      out.write("\t    });\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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