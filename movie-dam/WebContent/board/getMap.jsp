<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f393c76a0b2985e070ae327f42034c70&libraries=services"></script>
<script>
var ps = new daum.maps.services.Places();
//마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new daum.maps.InfoWindow({
	zIndex : 1
});
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center : new daum.maps.LatLng(37.55889, 127.049694),
	level : 3
//지도의 레벨(확대, 축소 정도)
};

//지도를 생성합니다
var map = new daum.maps.Map(container, options);

//장소 검색 객체를 생성합니다. 키워드로 장소를 검색합니다.
function search_location() {
	var loc = $("#search_loc").val();
	ps.keywordSearch(loc, placesSearchCB);
}

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
	if (status === daum.maps.services.Status.OK) {

		// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		// LatLngBounds 객체에 좌표를 추가합니다
		var bounds = new daum.maps.LatLngBounds();

		for (var i = 0; i < data.length; i++) {

			displayMarker(data[i]);
			bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));       
		}
		// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		map.setBounds(bounds);

	}
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
	
	
	// 마커를 생성하고 지도에 표시합니다
	var marker = new daum.maps.Marker({
		map : map,
		position : new daum.maps.LatLng(place.y, place.x)
	});

	//지도에 마커를 표시합니다
	marker.setMap(map);

	// 마커에 클릭이벤트를 등록합니다
	daum.maps.event.addListener(marker, 'click', function() {

		// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		infowindow.setContent('<div style="padding:5px;font-size:12px;">'
				+ place.place_name + '</div>');
		infowindow.open(map, marker);
	});
}


//지도를 클릭한 위치에 표출할 마커입니다
var marker = new daum.maps.Marker({
	// 지도 중심좌표에 마커를 생성합니다 
	position : map.getCenter()
});
//지도에 마커를 표시합니다
marker.setMap(map);

//지도에 클릭 이벤트를 등록합니다
//지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
daum.maps.event.addListener(map, 'click', function(mouseEvent) {
		
	// 클릭한 위도, 경도 정보를 가져옵니다 
	var latlng = mouseEvent.latLng;
	
	// 마커 위치를 클릭한 위치로 옮깁니다
	marker.setPosition(latlng);   
	    
	    $("#start_lat")[0].value = latlng.getLat();
	    $("#start_lon")[0].value = latlng.getLng();
    
});

function submitFunc(){
	var start_lat =  $("#start_lat")[0].value;
	var start_lon =  $("#start_lon")[0].value;
		
	document.map.start_lat.value = start_lat;
	document.map.start_lon.value = start_lon;
	} 
</script>


