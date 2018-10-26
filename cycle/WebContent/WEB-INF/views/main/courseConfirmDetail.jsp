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
	코스 이름: <input type="text" id="title" readonly value="${dto.title }"> 
	<br> <br> 코스 설명:
	<textarea id="desc" readonly>${dto.description }</textarea>

		<br> 코스 소요 시간:  ${dto.courseday } 일 <br>
		
		코스 총 길이 : ${dto.len }meter<br>
	</form>

	<div id="map" style="width: 70%; height: 600px"></div>
	
	<form action="courseSuggestAF.do" id="courseform" method="post">
		
	</form>

	<div>
		<button id ="confirm">경로 승인</button>
	</div>


	<script>
		var HOME_PATH = window.HOME_PATH || '.';

		var map = new naver.maps.Map("map", {
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

		var String = "${dto.mapdata}";
		var arr = String.split(',');
		var points = [];
		for(var i =0; i < arr.length;i++){
			var xy = arr[i].split("|");
			var point = new naver.maps.Point();
			point.add(xy[0],xy[1]);
			points.push(point);
			
		}
		
		map.setCenter(points[0]);
		
/* 		for(var i = 0; i < points.length-1; i++){
			var blockArrowLine = new naver.maps.Polyline({
		        path: [
		            points[i],
		            points[i+1]
		        ],
		        map: map,
		        endIcon: naver.maps.PointingIcon.BLOCK_ARROW,
		        strokeColor: '#ff0000',
		        strokeWeight: 3
		    });
		} */
		
		

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


							_onClickDistance : function(e, coordin) {
								var map = this.map
								var coord;
								if(e != null){
									coord = e.coord;
								}else{
									coord = coordin
								}
								
								if (!this._polyline) {

									// 임시로 보여줄 점선 폴리라인을 생성합니다.
									guideline = this._getguideline(coord);


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
									this._guideline.setPath([ coordin ]);

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


							_bindMap : function(map) {

							},

							_unbindMap : function() {
								this.unbindAll();
							},

						});

		var measures = new Measure({});

		measures.setMap(map);
		measures._startDistance();
		
		
		for(var i = 0; i < points.length-1; i++){
			measures._onClickDistance(null, points[i]);
			
		 };
		 
		 measures._finishDistance();


		$('#confirm').on('click', function(e) {
			
			
		});
		

	</script>
</body>
</html>