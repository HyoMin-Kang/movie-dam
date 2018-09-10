<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="ko">

    <%
   String id ="";
   try{
     id = (String)session.getAttribute("id"); //변수id에값이잇다(Attribute메소드사용, 계속상태를유지함)
        if(id==null || id.equals("")) //id==null-로그인하지않으면
           response.sendRedirect("sessionLoginForm.jsp"); //로그인페이지로보내준다
     else{ //id에값이있다면
%>

            <div class="page-header">
                <h1> Login Success!</h1>
            </div>
            <div class="form-group">
                <div class="cong">
                    <br>
                    <font size="5">
                        <%=id%>
                    </font>
                    <font size="4">님이 로그인 하셨습니다!
                        <br>환영합니다!</font>
                    <br>
                </div>
            </div>
              <div class="box6">
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-2 col-xs-4">
                        <button type="button" onClick="location.href='main.jsp'" class="btn btn-warning btn-block">메인페이지로이동</button>
                    </div>
                    <div class="col-sm-2 col-xs-4">
                        <button type="submit" class="btn btn-default btn-block">로그아웃</button>
                    </div>
                </div>
              </div>

        </body>
</html>
<% 
     }
    }catch(Exception e){
    e.printStackTrace();
  }
%>