<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=8mvn37FxJvLefDim3jdV&submodules=geocoder"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/marker.css">
</head>
<body>
	<h2>코스 추천하기</h2>
	
	<form>
	내 아이디: ${login.id } <br> <br> 
	코스 이름: <input type="text" id="title" required> <br> <br> 
	코스 설명: <textarea id="desc" required></textarea> <br><br>
	 코스 소요 시간: <input type="number" id="day" required> 일 <br> <br>
	</form>

	<div id="map" style="width: 70%; height: 600px"></div>
	
	<form action="courseSuggestAF.do" id="courseform" method="post">
	
		<input type="hidden" name="object" id="obj" >
		
	</form>
	우클릭이나 경로설정 종료를 누르면 경로설정이 완료됩니다. 설정완료 후 경로를 수정 할수 없으니. 수정이 필요하면 새로고침후 이용
	바랍니다.
	<div>
		<input type="text" id="address">
		<button id="search">검색</button>
		<button id="clearone">전 마커 지우기</button>
		<button id="clearall">마커 전체 지우기</button>
		<button id="complete">경로 설정 완료</button>
		<button id ="submitCourse">경로 추천</button>
	</div>












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

			$('#address').on('keydown', function(e) {
				var keyCode = e.which;

				if (keyCode === 13) { // Enter Key
					searchAddressToCoordinate($('#address').val());
				}
			});

			$('#search').on('click', function(e) {
				e.preventDefault();

				searchAddressToCoordinate($('#address').val());
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
				
				var title = $('#title').val();
				var desc = $('#desc').val();
				var length = distance;
				var day = $('#day').val();
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
						"memid" : memid
				}; 
				
				 var str = JSON.stringify(obj); 

				 
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