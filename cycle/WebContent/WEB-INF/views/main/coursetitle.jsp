<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=8mvn37FxJvLefDim3jdV&submodules=geocoder"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Tset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Tset1.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/marker.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/page.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
</head>
<body>

<!-- 시계 Test1.css  -->
<div id="clock"> </div>

<!-- 시계 아래 자전거 코스 간판 Test.css  -->
<div class="content">
  <div class="content__container">
    <p class="content__container__text">
     	 자전거
    </p>
    <ul class="content__container__list">
      <li class="content__container__list__item">코스 !</li>
      <li class="content__container__list__item">유저 !</li>
      <li class="content__container__list__item">추천길 !</li>
      <li class="content__container__list__item">Hello !</li>
    </ul>
  </div>
</div>

<form>
<div class="wrap">
  <div class="mat-div">
    <label for="first-name" class="mat-label">코스이름</label>
    <input type="text" class="mat-input" id="first-name" required>
  </div>
  
    <div class="mat-div">
    <label for="first-name" class="mat-label">코스 설명</label>
    <textarea type="text" class="mat-input" id="last-name" required> </textarea>
  </div>

    <div class="mat-div">
    <label for="address" class="mat-label">코스 소요 시간(일) </label>
    <input type="number" class="mat-input" id="address" required>
  </div>
</div>
</form>

<form action="courseSuggestAF.do" id="courseform" method="post">
	
		<input type="hidden" name="object" id="obj" >
		
	</form>

<br><br>

<h1 center>코스 등록 </h1>
<p style="color: white; text-align: center;">우클릭이나 경로설정 종료를 누르면 경로설정이 완료됩니다. 설정완료 후 경로를 수정 할수 없으니. 수정이 필요하면 새로고침후 이용바랍니다.</p>
<!-- 지도 -->
<div id="map" style=" width: 100%; height: 800px; margin:auto; border: 1px solid black;">
		
		<div style="width: 100%;z-index: 9999;padding:20px; height:10%"	>
			<input 	style="position: relative; z-index: 9999" type="text" id="searchaddress">
			<button style="position: relative; z-index: 9999; " id="search">검색</button>
			<button style="position: relative; z-index: 9999" id="clearone">전 마커 지우기</button>
		<button style="position: relative; z-index: 9999" id="clearall">마커 전체 지우기</button>
		<button style="position: relative; z-index: 9999" id="complete">경로 설정 완료</button>
		<button style="position: relative; z-index: 9999" id ="submitCourse">경로 추천</button>
		</div>
		
</div>

<br>
<br>
<br>
<br>
<br>
		

<script type="text/javascript">
$(".mat-input").focus(function(){
	  $(this).parent().addClass("is-active is-completed");
	});

	$(".mat-input").focusout(function(){
	  if($(this).val() === "")
	    $(this).parent().removeClass("is-completed");
	  $(this).parent().removeClass("is-active");
	})
	
	window.onload = function() {
  // 시간을 표시할 HTML UI 요소를 가져옵니다.
  var clock = document.getElementById('clock');

  // 빈 앞자리에 0을 채워주는 기능 함수
  // 3을 03 으로 변경하거나 003 으로 변경, size로 자리수 지정
  function pad(num, size) {
    num = String(num);

    return new Array((size+1) - num.length).join('0') + num;
  }

  function displayTime() {
    var now = new Date();
    
    clock.innerText = pad(now.getHours(), 2) + ':' + 
      pad(now.getMinutes(), 2) + ':' + 
      pad(now.getSeconds(), 2) + '.' + 
      pad(now.getMilliseconds(), 3);
  }
  
  // 입력한 시간에 한번씩 지정된 함수를 호출하는 기본 함수
  // 입력 시간은 1/1000 단위. 10이면 1초에 100번 호출됨.
  setInterval(displayTime, 10);
};


function printClock() {
    
    var clock = document.getElementById("clock");            // 출력할 장소 선택
    var amPmView = document.getElementById("amPmView"); // AM, PM 표시
    var currentDate = new Date();                                     // 현재시간
    var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
    var amPm = 'AM'; // 초기값 AM
    var currentHours = addZeros(currentDate.getHours(),2); 
    var currentMinute = addZeros(currentDate.getMinutes() ,2);
    var currentSeconds =  addZeros(currentDate.getSeconds(),2);
    
    if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
    	amPm = 'PM';
    	currentHours = addZeros(currentHours - 12,2);
    }

    if(currentSeconds >= 50){
       currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
    }
    clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +"&nbsp;<span style='font-size:50px;'>"+ amPm+"</span>";           // 현재시간을 출력
    
    setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
}

function addZeros(num, digit) { // 자릿수 맞춰주기
	  var zero = '';
	  num = num.toString();
	  if (num.length < digit) {
	    for (i = 0; i < digit - num.length; i++) {
	      zero += '0';
	    }
	  }
	  return zero + num;
}
 
window.onload=function(){
printClock();
}

	
</script>
<script>
		var HOME_PATH = window.HOME_PATH || '.';

		var map = new naver.maps.Map("map", {
			center : searchAddressToCoordinate('서울특별시 강남구 테헤란로 14길 6'),
			zoom : 10,

		});

		var bicycleLayer = new naver.maps.BicycleLayer();
		bicycleLayer.setMap(map);

		map.setCursor('pointer');

		//많이 찍히는 것들 
		var markers = [];
		var infowindows = [];
		var milestones = [];
		var set = false;

		var guideline;
		var polyline;
		var patharr;
		var distance = 0;

		//마커와 선연결
		function connectLine(x, y) {
			var pointtmp = new naver.maps.Point();

			pointtmp.add(x, y);

			pushmarkinfo(pointtmp);
			patharr.push(pointtmp);
			guideline.setMap(null);
			delete measures._guideline;

			guideline = measures._getguideline(pointtmp);
			guideline.setMap(map);
			
			var between = measures._polyline.getDistance()
			- measures._lastDistance;
			/* distances.push(between); */
			
			measures._addMileStone(pointtmp, measures
					._fromMetersToText(between) );
			
			
			
			measures._lastDistance = measures._polyline.getDistance();
			

		}

		//마커 인포 추가
		function pushmarkinfo(point, distance) {

			var arrsize = markers.length + 1;

			var marker = new naver.maps.Marker({
				map : map,
				position : point,
				icon : {
					content : [ '<span class="dot">', '  ' + arrsize + '',
							'</span>' ].join(''),
					anchor : new naver.maps.Point(11, 10)
				}

			});

			var contentString = [
					'<div class="iw_inner">',
					'거리: ' + distance + '<br><br>',
					'<button type="button" onclick="connectLine(' + point.x
							+ ',' + point.y + ')">길 연결하기</button>', '</div>' ]
					.join('');

			var infowindow = new naver.maps.InfoWindow({
				content : contentString
			});

			naver.maps.Event.addListener(marker, "click", function(e) {
				if (infowindow.getMap()) {
					infowindow.close();
				} else {
					infowindow.open(map, marker);
				}
			});
			infowindows.push(infowindow);
			markers.push(marker);

		}

		function searchCoordinateToAddress(latlng) {

			console.log("searchCoordinate");
			var tm128 = naver.maps.TransCoord.fromLatLngToTM128(latlng);

			var point = latlng.toPoint();

			naver.maps.Service.reverseGeocode({
				location : tm128,
				coordType : naver.maps.Service.CoordType.TM128
			}, function(status, response) {
				if (status === naver.maps.Service.Status.ERROR) {


					alert('정보가 없는 위치입니다.');
					$("#clearone").click();
					
					return;
				} 

			});

		}

		// result by latlng coordinate
		function searchAddressToCoordinate(address) {
			naver.maps.Service
					.geocode(
							{
								address : address
							},
							function(status, response) {
								if (status === naver.maps.Service.Status.ERROR) {

									return alert('정보가 없는 위치입니다.');
								}

								var item = response.result.items[0], addrType = item.isRoadAddress ? '[도로명 주소]'
										: '[지번 주소]',

								point = new naver.maps.Point(item.point.x,
										item.point.y);

								map.setCenter(point);
							});
		}

		function initGeocoder() {
			map.addListener('click', function(e) {
				searchCoordinateToAddress(e.coord);
			}); 

			$('#searchaddress').on('keydown', function(e) {
				var keyCode = e.which;

				if (keyCode === 13) { // Enter Key
					searchAddressToCoordinate($('#searchaddress').val());
				}
			});

			$('#search').on('click', function(e) {
				e.preventDefault();

				searchAddressToCoordinate($('#searchaddress').val());
			});
			


		}

		naver.maps.onJSContentLoaded = initGeocoder;

		// 지도내 거리재기 또는 면적재기를 클릭하세요.
		// 거리/면적재기 동작 중 마우스 오른쪽 버튼을 클릭하면 해당 거리/면적재기가 종료됩니다.
		var Measure = function(buttons) {

		};
		
		$
				.extend(
						Measure.prototype,
						{
							constructor : Measure,

							setMap : function(map) {
								if (this.map) {
									this._unbindMap(this.map);
								}

								this.map = map;

								if (map) {
									this._bindMap(map);
								}
							},

							_startDistance : function() {
								var map = this.map;

								this._distanceListeners = [ naver.maps.Event
										.addListener(map, 'click',
												this._onClickDistance
														.bind(this)) ];

								map.setCursor("url('" + HOME_PATH
										+ "/img/rule.cur'), default");
							},

							_finishDistance : function() {
								naver.maps.Event
										.removeListener(this._distanceListeners);
								delete this._distanceListeners;

								$(document).off('mousemove.measure');

								if (this._guideline) {
									this._guideline.setMap(null);
									delete this._guideline;
								}

								if (this._polyline) {
									var path = this._polyline.getPath(), lastCoord = path
											.getAt(path.getLength() - 1), distance = this._polyline
											.getDistance();
									// 폴리라인의 거리를 미터 단위로 반환합니다.
									console.log("distance: " + distance);

									if (lastCoord) {
										this._addMileStone(lastCoord, this
												._fromMetersToText(distance), {
											'font-size' : '14px',
											'font-weight' : 'bold',
											'color' : '#f00'
										});
									}
								}

								map.setCursor('auto');

								delete this._lastDistance;
								
								set = true;

								$('#clearone').attr('disabled', true);
								$('#clearall').attr('disabled', true);
							},

							_fromMetersToText : function(meters) {
								meters = meters || 0;

								var km = 1000, text = meters;

								if (meters >= km) {
									text = parseFloat((meters / km).toFixed(1))
											+ 'km';
								} else {
									text = parseFloat(meters.toFixed(1)) + 'm';
								}

								return text;
							},

							_addMileStone : function(coord, text, css) {
								console.log("milestone");
								if (!this._ms) {
									this._ms = [];
									milestones = this._ms;
								}

								var ms = new naver.maps.Marker(
										{
											position : coord,
											icon : {
												content : '<div style="display:inline-block;padding:5px;text-align:center;background-color:#fff;border:1px solid #000;"><span>'
														+ text
														+ '</span></div>',
												anchor : new naver.maps.Point(
														-5, -5)
											},
											map : this.map
										});

								var msElement = $(ms.getElement());

								if (css) {
									msElement.css(css);
								} else {
									msElement.css('font-size', '11px');
								}

								milestones.push(ms);
							},

							_getguideline : function(coord) {
								this._guideline = new naver.maps.Polyline({
									strokeColor : '#f00',
									strokeWeight : 5,
									strokeStyle : [ 4, 4 ],
									strokeOpacity : 0.6,
									path : [ coord ],
									map : map
								});

								return this._guideline;
							},

							_getpolyline : function(coord) {
								this._polyline = new naver.maps.Polyline({
									strokeColor : '#f00',
									strokeWeight : 5,
									strokeOpacity : 0.8,
									path : [ coord ],
									map : map
								});

								return this._polyline;
							},


							_onClickDistance : function(e) {
								var map = this.map
								var coord = e.coord;

								if (!this._polyline) {

									// 임시로 보여줄 점선 폴리라인을 생성합니다.
									guideline = this._getguideline(coord);

									$(document).on(
											'mousemove.measure',
											this._onMouseMoveDistance
													.bind(this));
									this._distanceListeners
											.push(naver.maps.Event.addListener(
													map, 'rightclick',
													this._finishDistance
															.bind(this)));
									this._addMileStone(coord, this
											._fromMetersToText(distance
													- this._lastDistance));
									// 실제 거리재기에 사용되는 폴리라인을 생성합니다.
									polyline = this._getpolyline(coord);
									patharr = polyline.getPath();

									// 폴리라인의 거리를 미터 단위로 반환합니다.
									this._lastDistance = this._polyline
											.getDistance();

								} else {
									this._guideline.setPath([ e.coord ]);

									patharr.push(coord);

									// 폴리라인의 거리를 미터 단위로 반환합니다.
									distance = this._polyline.getDistance();

									this._addMileStone(coord, this
											._fromMetersToText(distance
													- this._lastDistance));

									this._lastDistance = distance;
									console.log("patharr.length: "
											+ patharr.length);
								}

								pushmarkinfo(coord, distance);

							},

							_onMouseMoveDistance : function(e) {
								var map = this.map;
								var proj = this.map.getProjection();
								var coord = proj
										.fromPageXYToCoord(new naver.maps.Point(
												e.pageX, e.pageY));
								var path = this._guideline.getPath();

								//the guideline's path only has 2
								if (path.getLength() >= 2) {
									path.pop();
								}

								path.push(coord);
							},

							_bindMap : function(map) {

							},

							_unbindMap : function() {
								this.unbindAll();
							},

						});

		var measures = new Measure({});

		measures.setMap(map);
		measures._startDistance();
		
		
		$('#submitCourse').on('click', function(e) {
			if(set == false){
				alert("경로 설정 완료하지 않으면 코스 추천 할수 없습니다.")
				return;
			}else{
				
				var title = $('#first-name').val();
				var desc = $('#last-name').val();
				var length = distance;
				var day = $('#address').val();
				var memid = '${login.id}';
				
				
				if(title == null || title.trim() == ""|| desc == null || desc.trim() == ""|| day == null || day ==""){
					alert("코스 제목, 정보, 소요시간을 모두 입력해 주세요");
					return;
				}
				
				var string = "";
				for(var i=0; i < markers.length; i++){
					var pos = markers[i].getPosition();
					string += pos.x + "|" + pos.y+",";
					/* console.log(pos.x + "|" + pos.y+","); */
				}

				
				 var obj = {
						"title" :  title,
						"description" :  desc,
						"len" : length,
						"courseday" : day,
						"mapdata": string,
						"memid": memid
						
				}; 
				
				 var str = JSON.stringify(obj); 
				 
				 alert(str);
				 
				alert("코스를 추천하셨습니다. 관리자 승인후 코스정보 페이지에 게시됩니다.");
				
				$('#obj').val(str);
				$('#courseform').submit();
			}
			

		});
		

		$('#complete').on('click', function(e) {
			if(patharr.length < 1){
				alert("좌표를 하나라도 정하지 않으면 경로 설정완료 할수 업습니다.")
				return;
			}
			measures._finishDistance();
			

		});
		$('#clearone').on(
				'click',
				function(e) {
					var lastmark;
					var lastinfo;
					var lastmilestone;

					if (markers.length > 0) {
						lastmark = markers.pop();
						lastmark.setMap(null);
					}
					if (infowindows.length > 0) {
						lastinfo = infowindows.pop();
						lastinfo.close();
					}
					if (milestones.length > 0) {
						lastmilestone = milestones.pop();
						lastmilestone.setMap(null);
					}

					if (patharr.length > 0) {
						patharr.pop();
						if (guideline != null) {
							guideline.setMap(null);
						}
						if (patharr.length == 0) {
							polyline.setMap(null);
							delete measures._polyline;
							polyline = null;

							delete measures._guideline;
							guideline = null;
							distance = 0;
							$(document).off();

							return;
						}

						guideline = measures._getguideline(patharr
								.getAt(patharr.getLength() - 1));
						guideline.setMap(map);
					}
					if (polyline != null) {
						measures._lastDistance = polyline.getDistance();
					}
				}),

		$('#clearall').on('click', function(e) {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			for (var i = 0; i < infowindows.length; i++) {
				infowindows[i].close();
			}
			for (var i = 0; i < milestones.length; i++) {
				milestones[i].setMap(null);
			}
			markers = [];
			milestones = [];
			infowindows = [];

			if (polyline != null) {
				polyline.setMap(null);
				delete measures._polyline;
				polyline = null;
			}
			if (guideline != null) {
				guideline.setMap(null);
				delete measures._guideline;
				guideline = null;
			}
			$(document).off();

			measures._lastDistance = 0;
			distance = 0;

		})
	</script>
	

</body>
</html>