<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>    
<%
	request.setCharacterEncoding("utf-8");
	String title = "회원 가입";
%>

<jsp:include page="/module/header.jsp" flush="false">
	<jsp:param name="title" value="<%=title %>"/>
</jsp:include>

<jsp:include page="/module/nav.jsp" flush="false"/>

<!-- ***** Breadcumb Area Start ***** -->
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/movie-dam/assets/img/bg-img/hero-1.jpg)"></div>
<!-- ***** Breadcumb Area End ***** -->

<!-- ***** Listing Destinations Area Start ***** -->
<section class="dorne-listing-destinations-area section-padding-100-50">
<div class="container">
	<div class="row">
        <div class="col-12">
            <div class="section-heading dark text-center">
                <span></span>
                <h4>Sign up</h4>
                <p>영화담 회원 가입</p>
            </div>
        </div>
    </div>
	
	<div class="row">
		<form name="insertMember" method="post" action="signup_pro.jsp" onsubmit="return formSubmit();">
			<div class="form-group col">
				<div class="form-group">
				<label class="control-label" for="inputUserId">아이디</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="inputUserId" name="mem_userid" aria-describedby="userIdHelp" placeholder="User id" required="required">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button" onClick="idConfirm(document.getElementById('inputUserId'));">중복 확인</button>
						</div>
					</div>
				</div>
			</div>	
			<div class="form-group col">
      			<label for="inputPassword">비밀번호</label>
				<input type="password" class="form-control" id="inputPassword" name="mem_pwd" placeholder="Password" required="required">
   			</div>
   			<div class="form-group col">
				<label for="inputConfirmPassword">비밀번호 확인</label>
      			<input type="password" class="form-control" id="inputConfirmPassword" placeholder="Confirm password" required="required">
    		</div>
    		<div class="form-group col">
				<label for="inputName">이름</label>
      			<input type="text" class="form-control" id="inputName" name="mem_name" placeholder="Name" required="required">
    		</div>
    		<div class="form-group col">
				<label class="control-label" for="inputNickname">닉네임</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="inputNickname" name="mem_nickname" aria-describedby="nicknameHelp" placeholder="Nickname" required="required">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">중복 확인</button>
						</div>
					</div>
			</div>
			<div class="form-group col">
				<label for="inputEmail">이메일</label>
      			<input type="email" class="form-control" id="inputEmail" name="mem_email" placeholder="Email" required="required">
    		</div>
    		<div class="form-row col">
    			<div class="form-group col-md-4">
    				<label for="inputYear">생년</label>
    				<input type="text" class="form-control" id="inputYear" name="mem_year" placeholder="YYYY" maxlength="4" required="required">
    			</div>
    			<div class="form-group col-md-4">
    				<label for="inputMonth">월</label>
    				<select class="form-control" id="inputMonth" name="mem_month">
    					<option value="00" selected="selected">MM</option>
    					<option value="01">01</option>
    					<option value="02">02</option>
    					<option value="03">03</option>
    					<option value="04">04</option>
    					<option value="05">05</option>
    					<option value="06">06</option>
    					<option value="07">07</option>
    					<option value="08">08</option>
    					<option value="09">09</option>
    					<option value="10">10</option>
    					<option value="11">11</option>
    					<option value="12">12</option>
    				</select>
    			</div>
    			<div class="form-group col-md-4">
    				<label for="inputDay">일</label>
    				<select class="form-control" id="inputDay" name="mem_day">
    					<option value="00" selected="selected">DD</option>
    					<option value="01">01</option>
    					<option value="02">02</option>
    					<option value="03">03</option>
    					<option value="04">04</option>
    					<option value="05">05</option>
    					<option value="06">06</option>
    					<option value="07">07</option>
    					<option value="08">08</option>
    					<option value="09">09</option>
    					<option value="10">10</option>
    					<option value="11">11</option>
    					<option value="12">12</option>
    					<option value="13">13</option>
    					<option value="14">14</option>
    					<option value="15">15</option>
    					<option value="16">16</option>
    					<option value="17">17</option>
    					<option value="18">18</option>
    					<option value="19">19</option>
    					<option value="20">20</option>
    					<option value="21">21</option>
    					<option value="22">22</option>
    					<option value="23">23</option>
    					<option value="24">24</option>
    					<option value="25">25</option>
    					<option value="26">26</option>
    					<option value="27">27</option>
    					<option value="28">28</option>
    					<option value="29">29</option>
    					<option value="30">30</option>
    					<option value="31">31</option>
    				</select>
    			</div>
    		</div>
    		<div class="form-group col">
				<div class="form-group">
    			<label class="control-label" for="inputGender1">성별</label>
		    		<div class="form-check form-check-inline">
		    			<input class="form-check-input" type="radio" id="inputGender1" name="mem_gender" value="0">
		    			<label class="form-check-label" for="inputGender1">남성</label>
		    		</div>
		    		<div class="form-check form-check-inline">
		    			<input class="form-check-input" type="radio" id="inputGender2" name="mem_gender" value="1">
		    			<label class="form-check-label" for="inputGender2">여성</label>
		    		</div>
	    		</div>
   			</div>
   			<div class="form-group col">
				<label class="control-label" for="inputNickname">주소</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="inputPostcode" name="mem_postcode" aria-describedby="postcodeHelp" placeholder="Postcode" required="required" readonly="readonly">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button" onclick="execDaumPostcode()">우편번호 검색</button>
						</div>
					</div>
      				<input type="text" class="form-control" id="inputAddress" name="mem_address" placeholder="Detail address" required="required">
			</div>
			<div class="form-group col">
				<label>자동 가입 방지</label>
      			<div id="html_element"></div>
    		</div>
    		<div class="form-group col">
				<div class="input-group mb-3">
					<button type="button" class="btn btn-primary" onclick="goMain()">취소</button>
					<button type="submit" class="btn btn-info" id="checkId">회원가입</button>
				</div>
				<div class="col-sm-2 col-xs-4">
				</div>
    		</div>
		</form>
	</div>
</div>
</section>
	
<jsp:include page="/module/footer.jsp" flush="false"/>

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

<!-- Check reCaptcha -->
<script>
function formSubmit() {
    if (grecaptcha.getResponse() == '') {
        alert('자동 가입 방지 체크를 확인해주세요.');
        return false;
    } else {
        return true;
    }
}
</script> 

<!-- Confirm id -->
<script>
function idConfirm(userid) {
    if(userid.value.length==0) {
        alert('아이디를 입력해 주세요.');
        inputId.focus();
        return false;
    }
    
    //중복 확인 새창
    url = 'idCheck.jsp?mem_userid=' + userid.value;
    open(url, '아이디 중복 체크', 'height=200, width=320, menubar=no, scrollbars=no, toolbar=no, location=no, status=no, resizable=no');
}
</script>

<!-- Check value -->
<script>
function checkValue() {
	if(insertMember.mem_userid.value == '') {
        alert("아이디를 입력해주세요.");
        insertMember.mem_userid.focus();
		return false;
	} else if(insertMember.mem_pwd.value == '') {
        alert("비밀번호를 입력해주세요.");
        insertMember.mem_pwd.focus();
		return false;
	} else if(insertMember.mem_name.value == '') {
        alert("이름을 입력해주세요.");
        insertMember.mem_name.focus();
        return false;
	} else if(insertMember.mem_nickname.value == '') {
        alert("닉네임을 입력해주세요.");
        insertMember.mem_nickname.focus();
        return false;
	} else if(insertMember.mem_email.value == '') {
        alert("이메일을 입력해주세요.");
        insertMember.mem_email.focus();
        return false;
	} else if(insertMember.mem_year.value == '') {
        alert("생년을 입력해주세요.");
        insertMember.mem_year.focus();
        return false;
	} else if(insertMember.mem_month.value == '') {
        alert("월을 선택해주세요.");
        insertMember.mem_year.focus();
        return false;
	} else if(insertMember.mem_day.value == '') {
        alert("일자를 선택해주세요.");
        insertMember.mem_day.focus();
        return false;
	} else if(insertMember.mem_gender.value == '') {
		alert("성별을 입력해주세요.");
        insertMember.gender.focus();
        return false;
	} else if(insertMember.mem_postcode.value == '') {
        alert("우편번호를 입력해주세요.");
        insertMember.mem_postcode.focus();
        return false;
	} else if(insertMember.mem_address.value == '') {
        alert("주소를 입력해주세요.");
        insertMember.mem_address.focus();
        return false;
	} else 
		return true;
    }
</script>

<!-- Cancel -->
<script>
function goMain(){
     location.href="../main.jsp";
}
</script>

</body>
</html>