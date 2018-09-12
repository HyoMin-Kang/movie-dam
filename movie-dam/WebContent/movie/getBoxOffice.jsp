<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(document).ready(function() {
	$.ajax({
		type: 'GET',
		url: 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json?key=a19c59ff51a6a8f37d37e30cd7e64bb9&targetDt=20180909',
		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
		success: function(result) {
			var rs = [];
			for(var i=0; i<3; i++) {
				rs.push('<div class="col card mb-3">');
				rs.push('<h4 class="card-header"><span class="badge badge-pill badge-dark">'+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['rank']+'위</span> '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['movieNm']+'</h4>');
				rs.push('<img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">');
 				rs.push('<ul class="list-group list-group-flush">');
 				rs.push('<li class="list-group-item">개봉일 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['openDt']+'</li>');
 				rs.push('<li class="list-group-item">누적관객수 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['audiAcc']+'</li>');
 				rs.push('<li class="list-group-item">누적매출액 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['salesAcc']+'</li></ul>');
 				rs.push('<div class="card-body">');
 				rs.push('<a href="#" class="card-link">예매하기</a>');
 				rs.push('<a href="#" class="card-link">상세 보기</a>');
 				rs.push('<a href="#" class="card-link">통계 보기</a>');
 				rs.push('</div></div>');
			}
			rs.push('<div class="w-100"></div>');
			for(var i=3; i<6; i++) {
				rs.push('<div class="col card mb-3">');
				rs.push('<h4 class="card-header"><span class="badge badge-pill badge-dark">'+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['rank']+'위</span> '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['movieNm']+'</h4>');
				rs.push('<img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">');
 				rs.push('<ul class="list-group list-group-flush">');
 				rs.push('<li class="list-group-item">개봉일 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['openDt']+'</li>');
 				rs.push('<li class="list-group-item">누적관객수 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['audiAcc']+'</li>');
 				rs.push('<li class="list-group-item">누적매출액 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['salesAcc']+'</li></ul>');
 				rs.push('<div class="card-body">');
 				rs.push('<a href="#" class="card-link">예매하기</a>');
 				rs.push('<a href="#" class="card-link">상세 보기</a>');
 				rs.push('<a href="#" class="card-link">통계 보기</a>');
 				rs.push('</div></div>');
			}
			rs.push('<div class="w-100"></div>');
			for(var i=6; i<9; i++) {
				rs.push('<div class="col card mb-3">');
				rs.push('<h4 class="card-header"><span class="badge badge-pill badge-dark">'+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['rank']+'위</span> '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['movieNm']+'</h4>');
				rs.push('<img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">');
 				rs.push('<ul class="list-group list-group-flush">');
 				rs.push('<li class="list-group-item">개봉일 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['openDt']+'</li>');
 				rs.push('<li class="list-group-item">누적관객수 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['audiAcc']+'</li>');
 				rs.push('<li class="list-group-item">누적매출액 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['salesAcc']+'</li></ul>');
 				rs.push('<div class="card-body">');
 				rs.push('<a href="#" class="card-link">예매하기</a>');
 				rs.push('<a href="#" class="card-link">상세 보기</a>');
 				rs.push('<a href="#" class="card-link">통계 보기</a>');
 				rs.push('</div></div>');
			}
			rs.push('<div class="w-100"></div>');
			rs.push('<div class="col card mb-3">');
			rs.push('<h4 class="card-header"><span class="badge badge-pill badge-dark">'+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['rank']+'위</span> '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['movieNm']+'</h4>');
			rs.push('<img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">');
			rs.push('<ul class="list-group list-group-flush">');
			rs.push('<li class="list-group-item">개봉일 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['openDt']+'</li>');
			rs.push('<li class="list-group-item">누적관객수 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['audiAcc']+'</li>');
			rs.push('<li class="list-group-item">누적매출액 '+result['boxOfficeResult']['weeklyBoxOfficeList'][i]['salesAcc']+'</li></ul>');
			rs.push('<div class="card-body">');
			rs.push('<a href="#" class="card-link">예매하기</a>');
			rs.push('<a href="#" class="card-link">상세 보기</a>');
			rs.push('<a href="#" class="card-link">통계 보기</a>');
			rs.push('</div></div>');
			$('#resultBoxOffice').html(rs.join(''));
		}
	});
});
</script>