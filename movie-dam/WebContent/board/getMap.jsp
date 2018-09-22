<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f393c76a0b2985e070ae327f42034c70&libraries=services"></script>
<script>
$('.map_wrap').css({
	'position': 'relative', 
	'width': '100%', 
	'height': '350px'
});
$('.title').css({
	'font-weight': 'bold', 
	'display': 'block'
});
$('.hAddr').css({
	'position': 'absolute',
	'left': '10px',
	'top': '10px',
	'border-radius': '2px',
	'background': 'rgba(255,255,255,0.8)',
	'z-index': '1',
	'padding': '5px'
});
$('#centerAddr').css({
	'display': 'block',
	'margin-top': '2px',
	'font-weight': 'normal'
});
$('.bAddr').css({
	'padding': '5px',
	'text-overflow': 'ellipsis',
	'overflow': 'hidden', 
	'white-space': 'nowrap'
});
</script>
<script>
var ps = new daum.maps.services.Places();
//마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new daum.maps.InfoWindow({
	zIndex : 1
});
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center : new daum.maps.LatLng(37.55814, 127.04990), //지도의 중심좌표(한양여대)
	level : 3
//지도의 레벨(확대, 축소 정도)
};

//지도를 생성합니다
var map = new daum.maps.Map(container, options);

//장소 검색 객체를 생성합니다. 키워드로 장소를 검색합니다.
function searchLocation() {
	var loc = $("#searchLoc").val();
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
			bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x)); //위도, 경도	        
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
		position : new daum.maps.LatLng(place.y, place.x),
		clickable:true
	//위도, 경도
	});
}

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

var marker = new daum.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
    infowindow = new daum.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다
    
 // 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
    daum.maps.event.addListener(map, 'click', function(mouseEvent) {
        searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
            if (status === daum.maps.services.Status.OK) {
                var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
                detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
                
                var content = '<div class="bAddr">' + $("#searchLoc").val() + detailAddr + '</div>';
                // 마커를 클릭한 위치에 표시합니다 
                marker.setPosition(mouseEvent.latLng);
                marker.setMap(map);
                
                //마커를 보이지 않게 합니다.
                marker.setVisible(false);

                // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
                infowindow.setContent(content);
                infowindow.open(map, marker);
            }   
        });
    });

    function searchAddrFromCoords(coords, callback) {
        // 좌표로  주소 정보를 요청합니다
        geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
    }

    function searchDetailAddrFromCoords(coords, callback) {
        // 좌표로 상세 주소 정보를 요청합니다
        geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
    }
    
    
 // 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
    daum.maps.event.addListener(map, 'idle', function() {
        searchAddrFromCoords(map.getCenter(), displayCenterInfo);
    });
 
 // 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
    function displayCenterInfo(result, status) {
        if (status === daum.maps.services.Status.OK) {
            var infoDiv = document.getElementById('centerAddr');

            for(var i = 0; i < result.length; i++) {
                // 행정동의 region_type 값은 'H' 이므로
                if (result[i].region_type === 'H') {
                    infoDiv.innerHTML = result[i].address_name;
                    break;
                }
            }
        }    
    }
</script>


