/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.50
 * Generated at: 2018-09-22 12:58:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class map_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("    <style>\r\n");
      out.write("    .map_wrap {position:relative;width:100%;height:350px;}\r\n");
      out.write("    .title {font-weight:bold;display:block;}\r\n");
      out.write("    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}\r\n");
      out.write("    #centerAddr {display:block;margin-top:2px;font-weight: normal;}\r\n");
      out.write("    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<input type=\"text\" name=\"searchLoc\" id=\"searchLoc\"\r\n");
      out.write("\t\tplaceholder=\"위치를 입력하세요.\">\r\n");
      out.write("\t<button onclick=\"searchLocation();\">검색</button>\r\n");
      out.write("\t<div class=\"map_wrap\">\r\n");
      out.write("\t<div id=\"map\" style=\"width: 500px; height: 400px;\"></div>\r\n");
      out.write("\t  <div class=\"hAddr\">\r\n");
      out.write("        <span class=\"title\">지도중심기준 주소정보</span>\r\n");
      out.write("        <span id=\"centerAddr\"></span>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\t<p>\r\n");
      out.write("\t\t<em>지도를 클릭해주세요!</em>\r\n");
      out.write("\t</p>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=f393c76a0b2985e070ae327f42034c70&libraries=services\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tvar ps = new daum.maps.services.Places();\r\n");
      out.write("\t//마커를 클릭하면 장소명을 표출할 인포윈도우 입니다\r\n");
      out.write("\tvar infowindow = new daum.maps.InfoWindow({\r\n");
      out.write("\t\tzIndex : 1\r\n");
      out.write("\t});\r\n");
      out.write("\tvar container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스\r\n");
      out.write("\tvar options = { //지도를 생성할 때 필요한 기본 옵션\r\n");
      out.write("\t\tcenter : new daum.maps.LatLng(37.55814, 127.04990), //지도의 중심좌표(한양여대)\r\n");
      out.write("\t\tlevel : 3\r\n");
      out.write("\t//지도의 레벨(확대, 축소 정도)\r\n");
      out.write("\t};\r\n");
      out.write("\r\n");
      out.write("\t//지도를 생성합니다\r\n");
      out.write("\tvar map = new daum.maps.Map(container, options);\r\n");
      out.write("\r\n");
      out.write("\t//장소 검색 객체를 생성합니다. 키워드로 장소를 검색합니다.\r\n");
      out.write("\tfunction searchLocation() {\r\n");
      out.write("\t\tvar loc = $(\"#searchLoc\").val();\r\n");
      out.write("\t\tps.keywordSearch(loc, placesSearchCB);\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t// 키워드 검색 완료 시 호출되는 콜백함수 입니다\r\n");
      out.write("\tfunction placesSearchCB(data, status, pagination) {\r\n");
      out.write("\t\tif (status === daum.maps.services.Status.OK) {\r\n");
      out.write("\r\n");
      out.write("\t\t\t// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해\r\n");
      out.write("\t\t\t// LatLngBounds 객체에 좌표를 추가합니다\r\n");
      out.write("\t\t\tvar bounds = new daum.maps.LatLngBounds();\r\n");
      out.write("\r\n");
      out.write("\t\t\tfor (var i = 0; i < data.length; i++) {\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tdisplayMarker(data[i]);\r\n");
      out.write("\t\t\t\tbounds.extend(new daum.maps.LatLng(data[i].y, data[i].x)); //위도, 경도\t        \r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다\r\n");
      out.write("\t\t\tmap.setBounds(bounds);\r\n");
      out.write("\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t// 지도에 마커를 표시하는 함수입니다\r\n");
      out.write("\tfunction displayMarker(place) {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t// 마커를 생성하고 지도에 표시합니다\r\n");
      out.write("\t\tvar marker = new daum.maps.Marker({\r\n");
      out.write("\t\t\tmap : map,\r\n");
      out.write("\t\t\tposition : new daum.maps.LatLng(place.y, place.x),\r\n");
      out.write("\t\t\tclickable:true\r\n");
      out.write("\t\t//위도, 경도\r\n");
      out.write("\t\t});\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 주소-좌표 변환 객체를 생성합니다\r\n");
      out.write("\tvar geocoder = new daum.maps.services.Geocoder();\r\n");
      out.write("\r\n");
      out.write("\tvar marker = new daum.maps.Marker(), // 클릭한 위치를 표시할 마커입니다\r\n");
      out.write("\t    infowindow = new daum.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다\r\n");
      out.write("\t    \r\n");
      out.write("\t // 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다\r\n");
      out.write("\t    daum.maps.event.addListener(map, 'click', function(mouseEvent) {\r\n");
      out.write("\t        searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {\r\n");
      out.write("\t            if (status === daum.maps.services.Status.OK) {\r\n");
      out.write("\t                var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';\r\n");
      out.write("\t                detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';\r\n");
      out.write("\t                \r\n");
      out.write("\t                var content = '<div class=\"bAddr\">' + $(\"#searchLoc\").val() + detailAddr + '</div>';\r\n");
      out.write("\t                // 마커를 클릭한 위치에 표시합니다 \r\n");
      out.write("\t                marker.setPosition(mouseEvent.latLng);\r\n");
      out.write("\t                marker.setMap(map);\r\n");
      out.write("\t                \r\n");
      out.write("\t                //마커를 보이지 않게 합니다.\r\n");
      out.write("\t                marker.setVisible(false);\r\n");
      out.write("\r\n");
      out.write("\t                // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다\r\n");
      out.write("\t                infowindow.setContent(content);\r\n");
      out.write("\t                infowindow.open(map, marker);\r\n");
      out.write("\t            }   \r\n");
      out.write("\t        });\r\n");
      out.write("\t    });\r\n");
      out.write("\r\n");
      out.write("\t    function searchAddrFromCoords(coords, callback) {\r\n");
      out.write("\t        // 좌표로  주소 정보를 요청합니다\r\n");
      out.write("\t        geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         \r\n");
      out.write("\t    }\r\n");
      out.write("\r\n");
      out.write("\t    function searchDetailAddrFromCoords(coords, callback) {\r\n");
      out.write("\t        // 좌표로 상세 주소 정보를 요청합니다\r\n");
      out.write("\t        geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);\r\n");
      out.write("\t    }\r\n");
      out.write("\t    \r\n");
      out.write("\t    \r\n");
      out.write("\t // 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다\r\n");
      out.write("\t    daum.maps.event.addListener(map, 'idle', function() {\r\n");
      out.write("\t        searchAddrFromCoords(map.getCenter(), displayCenterInfo);\r\n");
      out.write("\t    });\r\n");
      out.write("\t \r\n");
      out.write("\t // 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다\r\n");
      out.write("\t    function displayCenterInfo(result, status) {\r\n");
      out.write("\t        if (status === daum.maps.services.Status.OK) {\r\n");
      out.write("\t            var infoDiv = document.getElementById('centerAddr');\r\n");
      out.write("\r\n");
      out.write("\t            for(var i = 0; i < result.length; i++) {\r\n");
      out.write("\t                // 행정동의 region_type 값은 'H' 이므로\r\n");
      out.write("\t                if (result[i].region_type === 'H') {\r\n");
      out.write("\t                    infoDiv.innerHTML = result[i].address_name;\r\n");
      out.write("\t                    break;\r\n");
      out.write("\t                }\r\n");
      out.write("\t            }\r\n");
      out.write("\t        }    \r\n");
      out.write("\t    }\r\n");
      out.write("</script>\r\n");
      out.write("</html>\r\n");
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
