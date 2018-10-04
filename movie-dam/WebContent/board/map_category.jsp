<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <style>
.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'����',sans-serif;font-size:12px;}
.map_wrap {position:relative;width:100%;height:350px;}
#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(http://i63.tinypic.com/211nmnt.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .subway {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .restaurant {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}
.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
</style>
<title>Insert title here</title>
</head>
<body>
	<input type="text" size="40px" name="searchTheater" id="searchTheater" placeholder="��ġ�� �Է��ϼ���.">
	<button onclick="searchTheateration();">�˻�</button>
	<div class="map_wrap">
    <div id="map" style="width:1100px;height:600px;position:relative;overflow:hidden;"></div>
    <ul id="category">
        <li id="BK9" data-order="0"> 
            <span class="category_bg bank"></span>
            ����
        </li>       
        <li id="SW8" data-order="1"> 
            <span class="category_bg subway"></span>
           ����ö
        </li>  
        <li id="PM9" data-order="2"> 
            <span class="category_bg pharmacy"></span>
            �౹
        </li>  
        <li id="FD6" data-order="3"> 
            <span class="category_bg restaurant"></span>
            ������
        </li>  
        <li id="CE7" data-order="4"> 
            <span class="category_bg cafe"></span>
            ī��
        </li>  
        <li id="CS2" data-order="5"> 
            <span class="category_bg store"></span>
            ������
        </li>      
    </ul>
</div>
</body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f393c76a0b2985e070ae327f42034c70&libraries=services"></script>
<script type="text/javascript">
	
//��Ŀ�� Ŭ������ �� �ش� ����� �������� ������ Ŀ���ҿ��������Դϴ�
var placeOverlay = new daum.maps.CustomOverlay({zIndex:1}), 
    contentNode = document.createElement('div'), // Ŀ���� ���������� ������ ������Ʈ �Դϴ� 
    markers = [], // ��Ŀ�� ���� �迭�Դϴ�
    currCategory = ''; // ���� ���õ� ī�װ��� ������ ���� �����Դϴ�
 
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new daum.maps.LatLng(37.561440, 127.03839), // ������ �߽���ǥ
        level: 5 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
var map = new daum.maps.Map(mapContainer, mapOption); 

//��� �˻� ��ü�� �����մϴ�
var ps2 = new daum.maps.services.Places();

var infowindow = new daum.maps.InfoWindow({zIndex:1});

//Ű����� ��Ҹ� �˻��մϴ�.
function searchTheateration(){				
	var loc = $("#searchTheater").val();
	ps2.keywordSearch(loc, SearchCB); 
}

// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
function SearchCB (data, status, pagination) {
	if (status === daum.maps.services.Status.OK) {

        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
        var bounds = new daum.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x)); //����, �浵	        
        }       
        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
        map.setBounds(bounds);
        
    } 
}

function displayMarker(place) {
    // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
    var marker = new daum.maps.Marker({
        map: map,
        position: new daum.maps.LatLng(place.y, place.x) //����, �浵
    });
    
    //������ ��Ŀ�� ǥ���մϴ�
    marker.setMap(map);
    /* marker.setVisible(false); */
    // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
    daum.maps.event.addListener(marker, 'click', function() {
        
        // ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}

// ��� �˻� ��ü�� �����մϴ�
var ps = new daum.maps.services.Places(map); 

// ������ idle �̺�Ʈ�� ����մϴ�
daum.maps.event.addListener(map, 'idle', searchPlaces);

// Ŀ���� ���������� ������ ��忡 css class�� �߰��մϴ� 
contentNode.className = 'placeinfo_wrap';

// Ŀ���� ���������� ������ ��忡 mousedown, touchstart �̺�Ʈ�� �߻�������
// ���� ��ü�� �̺�Ʈ�� ���޵��� �ʵ��� �̺�Ʈ �ڵ鷯�� daum.maps.event.preventMap �޼ҵ带 ����մϴ� 
addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap);

// Ŀ���� �������� �������� �����մϴ�
placeOverlay.setContent(contentNode);  

// �� ī�װ��� Ŭ�� �̺�Ʈ�� ����մϴ�
addCategoryClickEvent();

// ������Ʈ�� �̺�Ʈ �ڵ鷯�� ����ϴ� �Լ��Դϴ�
function addEventHandle(target, type, callback) {
    if (target.addEventListener) {
        target.addEventListener(type, callback);
    } else {
        target.attachEvent('on' + type, callback);
    }
}

// ī�װ� �˻��� ��û�ϴ� �Լ��Դϴ�
function searchPlaces() {
    if (!currCategory) {
        return;
    }
    
    // Ŀ���� �������̸� ����ϴ� 
    placeOverlay.setMap(null);

    // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
    removeMarker();
    
    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
}

// ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
function placesSearchCB(data, status, pagination) {
    if (status === daum.maps.services.Status.OK) {

        // ���������� �˻��� �Ϸ������ ������ ��Ŀ�� ǥ���մϴ�
        displayPlaces(data);
    } else if (status === daum.maps.services.Status.ZERO_RESULT) {
        // �˻������ ���°�� �ؾ��� ó���� �ִٸ� �̰��� �ۼ��� �ּ���

    } else if (status === daum.maps.services.Status.ERROR) {
        // ������ ���� �˻������ ������ ���� ��� �ؾ��� ó���� �ִٸ� �̰��� �ۼ��� �ּ���
        
    }
}

// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function displayPlaces(places) {

    // ���° ī�װ��� ���õǾ� �ִ��� ���ɴϴ�
    // �� ������ ��������Ʈ �̹��������� ��ġ�� ����ϴµ� ���˴ϴ�
    var order = document.getElementById(currCategory).getAttribute('data-order');

    

    for ( var i=0; i<places.length; i++ ) {

            // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
            var marker = addMarker(new daum.maps.LatLng(places[i].y, places[i].x), order);

            // ��Ŀ�� �˻���� �׸��� Ŭ�� ���� ��
            // ��������� ǥ���ϵ��� Ŭ�� �̺�Ʈ�� ����մϴ�
            (function(marker, place) {
                daum.maps.event.addListener(marker, 'click', function() {
                    displayPlaceInfo(place);
                });
            })(marker, places[i]);
    }
}

// ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function addMarker(position, order) {
    var imageSrc = 'http://i63.tinypic.com/211nmnt.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
        imageSize = new daum.maps.Size(27, 28),  // ��Ŀ �̹����� ũ��
        imgOptions =  {
            spriteSize : new daum.maps.Size(72, 208), // ��������Ʈ �̹����� ũ��
            spriteOrigin : new daum.maps.Point(46, (order*36)), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
            offset: new daum.maps.Point(11, 28) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
        },
        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new daum.maps.Marker({
            position: position, // ��Ŀ�� ��ġ
            image: markerImage 
        });

    marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
    markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�

    return marker;
}

// ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// Ŭ���� ��Ŀ�� ���� ��� �������� Ŀ���� �������̷� ǥ���ϴ� �Լ��Դϴ�
function displayPlaceInfo (place) {
    var content = '<div class="placeinfo">' +
                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

    if (place.road_address_name) {
        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                    '  <span class="jibun" title="' + place.address_name + '">(���� : ' + place.address_name + ')</span>';
    }  else {
        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
    }                
   
    content += '    <span class="tel">' + place.phone + '</span>' + 
                '</div>' + 
                '<div class="after"></div>';

    contentNode.innerHTML = content;
    placeOverlay.setPosition(new daum.maps.LatLng(place.y, place.x));
    placeOverlay.setMap(map);  
}


// �� ī�װ��� Ŭ�� �̺�Ʈ�� ����մϴ�
function addCategoryClickEvent() {
    var category = document.getElementById('category'),
        children = category.children;

    for (var i=0; i<children.length; i++) {
        children[i].onclick = onClickCategory;
    }
}

// ī�װ��� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
function onClickCategory() {
    var id = this.id,
        className = this.className;

    placeOverlay.setMap(null);

    if (className === 'on') {
        currCategory = '';
        changeCategoryClass();
        removeMarker();
    } else {
        currCategory = id;
        changeCategoryClass(this);
        searchPlaces();
    }
}

// Ŭ���� ī�װ����� Ŭ���� ��Ÿ���� �����ϴ� �Լ��Դϴ�
function changeCategoryClass(el) {
    var category = document.getElementById('category'),
        children = category.children,
        i;

    for ( i=0; i<children.length; i++ ) {
        children[i].className = '';
    }

    if (el) {
        el.className = 'on';
    } 
}  
//�ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
var geocoder = new daum.maps.services.Geocoder();

var marker = new daum.maps.Marker(), // Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
    infowindow = new daum.maps.InfoWindow({zindex:1}); // Ŭ���� ��ġ�� ���� �ּҸ� ǥ���� �����������Դϴ�
    
 // ������ Ŭ������ �� Ŭ�� ��ġ ��ǥ�� ���� �ּ������� ǥ���ϵ��� �̺�Ʈ�� ����մϴ�
    daum.maps.event.addListener(map, 'click', function(mouseEvent) {
        searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
            if (status === daum.maps.services.Status.OK) {
                var detailAddr = !!result[0].road_address ? '<div>���θ��ּ� : ' + result[0].road_address.address_name + '</div>' : '';
                detailAddr += '<div>���� �ּ� : ' + result[0].address.address_name + '</div>';
                
                var content = '<div class="bAddr">' + $("#searchTheater").val() + detailAddr + '</div>';
                // ��Ŀ�� Ŭ���� ��ġ�� ǥ���մϴ� 
                marker.setPosition(mouseEvent.latLng);
                marker.setMap(map);
                
                //��Ŀ�� ������ �ʰ� �մϴ�.
                marker.setVisible(false); 

                // ���������쿡 Ŭ���� ��ġ�� ���� ������ �� �ּ������� ǥ���մϴ�
                infowindow.setContent(content);
                infowindow.open(map, marker);
            }   
        });
    });

    function searchAddrFromCoords(coords, callback) {
        // ��ǥ��  �ּ� ������ ��û�մϴ�
        geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
    }

    function searchDetailAddrFromCoords(coords, callback) {
        // ��ǥ�� �� �ּ� ������ ��û�մϴ�
        geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
    }
    
    
 // �߽� ��ǥ�� Ȯ�� ������ ������� �� ���� �߽� ��ǥ�� ���� �ּ� ������ ǥ���ϵ��� �̺�Ʈ�� ����մϴ�
    daum.maps.event.addListener(map, 'idle', function() {
    	
        searchAddrFromCoords(map.getCenter(), displayCenterInfo);
    });
 
 // ���� ������ܿ� ���� �߽���ǥ�� ���� �ּ������� ǥ���ϴ� �Լ��Դϴ�
    function displayCenterInfo(result, status) {
        if (status === daum.maps.services.Status.OK) {
            var infoDiv = document.getElementById('centerAddr');

            for(var i = 0; i < result.length; i++) {
                // �������� region_type ���� 'H' �̹Ƿ�
                if (result[i].region_type === 'H') {
                    infoDiv.innerHTML = result[i].address_name;
                    break;
                }
            }
        }    
    }	
</script>
</html>

