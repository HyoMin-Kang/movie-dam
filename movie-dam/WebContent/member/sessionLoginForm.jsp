<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>    
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>영화담</title>
</head>
<body> 

<div class="page-header">
    <h1 style="margin-top: 100px">로그인</h1>
    <h4>아래의 항목을 입력하세요.</h4>
</div>

<form class="form-horizontal" method="post" action="sessionLoginPro.jsp">
    <div class="form-group">
        <label class="col-sm-offset-3 col-sm-2 col-xs-6 control-label">아이디</label>
        <div class="col-sm-3 col-xs-6">
            <input type="text" name="mem_userid" class="form-control" placeholder="아이디를 입력하세요." autofocus="autofocus">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-offset-3 col-sm-2 col-xs-6 control-label">비밀번호</label>
        <div class="col-sm-3 col-xs-6">
            <input type="password" name="mem_pwd" class="form-control" placeholder="비밀번호를 입력하세요.">
        </div>
    </div>
    <br>
    <div class="form-group">
            <div class="col-sm-offset-4 col-sm-2 col-xs-4">
            <button type="submit" class="btn btn-defalut btn-block">LOGIN</button>
        </div>
        <div class="form-group">
            <div class="col-sm-2 col-xs-4">
                <button type="button" onClick="location.href='insertMemberForm.jsp'" class="btn btn-defalut btn-block">JOIN</button>
                </div>
            </div>
    </div>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/cban/assets/bootstrap-3.3.7/js/bootstrap.min.js"></script>

</body>
</html>