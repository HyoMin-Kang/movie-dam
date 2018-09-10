<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>    
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>영화담</title>
</head>
<body>  

<div class="container">
	<div class="page-header">
	    <h1> 회원가입폼</h1>
	    <h4> 아래의 항목을 입력하세요.</h4>
	</div>
	
	<form name="insertMember" method="post" action="insertMemberPro.jsp" onsubmit="return formSubmit();">
		<div class="form-group row">
			<label for="inputId" class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">아이디</label>
			<div class="col-sm-4 col-xs-9">
				<input type="text" class="form-control" id="inputId" name="mem_userid" placeholder="아이디를 입력하세요." required="required">
			</div>
		</div>

        <div class="form-group row">
            <label for="inputPasswd" class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">비밀번호</label>
            <div class="col-sm-4 col-xs-9">
                <input type="password" class="form-control" id="inputPasswd" name="mem_pwd" placeholder="비밀번호를 입력하세요." required="required">
            </div>
        </div>

        <div class="form-group row">
            <label for="inputName"  class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">이름</label>
            <div class="col-sm-4 col-xs-9">
                <input type="text" class="form-control" id="inputName" name="mem_name" placeholder="이름을 입력하세요." required="required">
            </div>
        </div>

		<div class="form-group row">
            <label for="inputNickName" class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">닉네임</label>
            <div class="col-sm-4 col-xs-9">
                <input type="text" class="form-control" id="inputNickName" name="mem_nickname" placeholder="닉네임을 입력하세요." required="required">
            </div>
        </div>

		<div class="form-group row">
            <label for="inputEmail" class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">이메일</label>
            <div class="col-sm-4 col-xs-9">
                <input type="text" class="form-control" id="inputEmail" name="mem_email" placeholder="movie@example.com" required="required">
            </div>
        </div>

        <div class="form-group row">
            <label for="inputBirth" class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">생일</label>
            <div class="col-sm-4 col-xs-9">
                <input type="text" class="form-control" id="inputBirth" name="mem_birth" placeholder="YYYY-MM-DD" required="required">
            </div>
        </div>
        
        <div class="form-group row">
            <label for="inputGender" class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">성별</label>
            <div class="col-sm-4 col-xs-9">
				<label class="radio-inline">
					<input type="radio" id="inputGender" name="mem_gender" value="0" required="required"> 남
				</label>
				<label class="radio-inline">
					<input type="radio" id="inputGender" name="mem_gender" value="1" required="required"> 여
				</label>
            </div>
        </div>

		<div class="form-group row">
            <label for="inputAddress" class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">주소</label>
			<div class="col-sm-4 col-xs-9">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="inputPostcode" name="mem_postcode" placeholder="Postcode" readonly="readonly">
                    <div class="input-group-append">
                        <button type="button" class="btn btn-outline-secondary" onclick="execDaumPostcode()">우편번호 찾기</button>
            		</div>
        		</div>
        		<input type="text" class="form-control" id="inputAddress" name="mem_address" placeholder="(상세주소를 입력하세요.)" required="required">
    		</div>
		</div>

		<!-- 이용약관-->
		<div class="form-group row">
			<label for="terms" class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">이용약관</label>
            <div class="col-sm-6 col-xs-10">
				<textarea class="form-control" text-align="right" rows=5 readonly="readonly">
  				개인정보 수집 및 이용 동의 ㈜LG유플러스(이하 ‘회사’라 함)는 전자금융거래법 및 동법 시행령 상의 제반 사항, 전자상거래 등에서의 소비자보호에 관한 법률 및 전자상거래 등에서의 소비자보호 지침, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 법률 제22조(개인정보의 수집 이용 동의 등) 및 개인정보보호법 제15조(개인정보의 수집 이용)에 의해 통신과금/전자금융서비스 이용자(이하 “이용자”라 합니다)로부터 아래와 같이 개인정보를 수집 및 이용합니다. 1. 수집하는 개인정보의 항목 가. 회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다. - 이름, 생년월일, 전화번호, 휴대폰번호, 이메일, 사용자 IP Address, 쿠키, 서비스 이용기록, 결제기록, 결제정보, 정산계좌정보, 주소 등 나. “결제정보”라 함은 ”이용자”가 고객사의 상품 및 서비스를 구매하기 위하여 “회사”가 제공하는 ‘서비스’를 통해 제시한 각 결제수단 별 제반 정보를 의미하며 신용카드 번호, 신용카드 유효기간, 성명, 계좌번호, 주민등록번호, 휴대폰번호, 유선전화번호, 상품권번호 등을 말합니다. 다. 회사는 서비스 이용과 관련한 대금결제, 물품배송 및 환불 등에 필요한 정보를 추가로 수집할 수 있습니다. 2. 개인정보의 수집 및 이용 목적 가. 회사는 다음과 같은 목적 하에 “결제서비스”와 관련한 개인정보를 수집합니다. - 사고 및 리스크 관리, 통계 활용, 결제결과 통보
				</textarea>
			</div>
			<div class="form-group">
				<p class="col-sm-offset-4 col-sm-6 col-xs-12 control-label">
				<span>개인정보 수집 및 이용에 동의하십니까? </span>
				<label class="checkbox-inline">
					<input type="checkbox" name="terms" value="Agree" required="required">동의함
				</label> 
				</p>
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-offset-2 col-sm-2 col-xs-9 control-label">자동 가입 방지</label>
			<div class="col-sm-6 col-xs-10">
				<div id="html_element"></div>
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-2 col-xs-4">
				<button type="submit" id="checkId" class="btn btn-default btn-block">회원가입하기</button>
			</div>
			<div class="col-sm-2 col-xs-4">
				<button type="button" class="btn btn-default btn-block" onclick="goMain()">취소</button>
			</div>
		</div>
</form>

</div>

<!-- address api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('inputPostcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('inputAddress').value = fullAddr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('inputAddress').focus();
        }
    }).open();
}
</script>

<!-- reCaptcha -->
<script src='https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit' async defer></script>
<script>
var onloadCallback = function() {
    grecaptcha.render('html_element', {
          'sitekey' : '6Ldu9VUUAAAAANn65F6UQgOt0cO2R9oTchhjmiJi'
    });
};
var onReturnCallback = function() {
    var url = 'https://www.google.com/recaptcha/api/siteverify';
};
</script>

<script>
//빈 칸 확인
function formSubmit() {
    if (grecaptcha.getResponse() == '') {
        alert('자동 가입 방지 체크를 확인해주세요.');
        return false;
    } else {
        return true;
    }
}
</script> 

<script>
function confirmId(id) {
    if(id.value.length==0) {
        alert('아이디를 입력해 주세요.');
        inputId.focus();
        return false;
    }
    
    //중복 확인 새창
    url = 'idCheck.jsp?id=' + id.value;
    open(url, 'ID 중복 체크', 'height=200, width=320, menubar=no, scrollbars=no, toolbar=no, location=no, status=no, resizable=no');
}
</script>

<script> 
function checkValue() {
	if(insertMember.passwd.value == "") {
        alert("비밀번호를 입력해주세요.");
        insertMember.passwd.focus();
		return false;
	} else if(insertMember.name.value == "") {
        alert("이름을 입력해주세요.");
        insertMember.name.focus();
        return false;
	} else if(insertMember.nickname.value == "") {
        alert("닉네임을 입력해주세요.");
        insertMember.nickname.focus();
        return false;
	} else if(insertMember.phone.value == "") {
        alert("전화번호를 입력해주세요.");
        insertMember.phone.focus();
        return false;
	} else if(insertMember.birth.value == "") {
        alert("생년월일을 입력해주세요.");
        insertMember.birth.focus();
        return false;
	} else if(insertMember.gender.value == "") {
        alert("성별을 입력해주세요.");
        insertMember.gender.focus();
        return false;
	} else ifinsertMember.address.value == "") {
        alert("주소를 입력해주세요.");
        insertMember.address.focus();
        return false;
	} else if(insertMember.postcode.value == "") {
        alert("우편번호를 입력해주세요.");
        insertMember.postcode.focus();
        return false;
	} else 
		return true;
    }
//취소버튼 클릭
function goMain(){
     location.href="main.jsp";
}

</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/cban/assets/bootstrap-3.3.7/js/bootstrap.min.js"></script>

</body>
</html>