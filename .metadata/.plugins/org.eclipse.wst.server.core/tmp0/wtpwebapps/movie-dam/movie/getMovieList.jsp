<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(document).ready(function() {
	var queryData = {'key': 'a19c59ff51a6a8f37d37e30cd7e64bb9', 'curPage': '1', 'itemPerPage': '12', 'movieTypeCd': '220101'};
	$.ajax({
		type: 'GET',
		url: 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json',
		data: queryData,
		success: function(data) {
			console.log(data);
			$('.lead').html('총 '+data['movieListResult'].totCnt+'개의 작품 검색');
			var rs = [];
			for(var i=0; i<data['movieListResult']['movieList'].length; i++) {
				rs.push('<div class="card mb-3 col-lg-4">');
				rs.push('<h4 class="card-header">'+data['movieListResult']['movieList'][i]['movieNm']+'</h4>');
				rs.push('<img style="height: 200px; width: 100%; display: block;" src="#" alt="Card image">');
				rs.push('<ul class="list-group list-group-flush">');
				rs.push('<li class="list-group-item">장르 '+data['movieListResult']['movieList'][i]['genreAlt']+'</li>');
				rs.push('<li class="list-group-item">국가 '+data['movieListResult']['movieList'][i]['nationAlt']+'</li>');
				rs.push('</ul><div class="card-body">');
				rs.push('<a href="#" class="card-link">예매하기</a>');
				rs.push('<a href="#" class="card-link">상세보기</a>');
				rs.push('</div></div>');
			}
			$('.row').html(rs.join(''));
		}
	});
});
</script>
