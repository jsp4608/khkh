<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Araba</title>

<style type="text/css">

.zui-table {
    border: solid 2px #DDEEEE;
    border-collapse: collapse;
    border-spacing: 0;
    font: normal 13px Arial, sans-serif;
}
.zui-table thead th {
    background-color: #DDEFEF;
    border: solid 1px #DDEEEE;
    color: #336B6B;
    padding: 10px;
    text-align: left;
    text-shadow: 1px 1px 1px #fff;
}
.zui-table tbody td {
    border: solid 1px #DDEEEE;
    color: #333;
    padding: 10px;
    text-shadow: 1px 1px 1px #fff;
}

h2 {
    font: 33px sans-serif;
    margin-top: 30px;
    text-align: center;
    text-transform: uppercase;
}

h2.background {
    position: relative;
    z-index: 1;
    
    &:before {
        border-top: 2px solid #dfdfdf;
        content:"";
        margin: 0 auto; /* this centers the line to the full width specified */
        position: absolute; /* positioning must be absolute here, and relative positioning must be applied to the parent */
        top: 50%; left: 0; right: 0; bottom: 0;
        width: 95%;
        z-index: -1;
    }

    span { 
        /* to hide the lines from behind the text, you have to set the background color the same as the container */ 
        background: #fff; 
        padding: 0 15px; 
    }
}

h2.double:before { 
    border-top: none; 
}

h2.double:after {
    border-bottom: 1px solid black;
    -webkit-box-shadow: 0 1px 0 0 red;
    -moz-box-shadow: 0 1px 0 0 red;
    box-shadow: 0 1px 0 0 white;
    content: "";
    margin: 0 auto; /* this centers the line to the full width specified */
    position: absolute;
    top: 105%; left: 0; right: 0;
    width: 95%;
    z-index: -1;
}

h2.no-background {
    position: relative;
    overflow: hidden;
    
    span {
        display: inline-block;
        vertical-align: baseline;
        zoom: 1;
        *display: inline;
        *vertical-align: auto;
        position: relative;
        padding: 0 20px;

        &:before, &:after {
            content: '';
            display: block;
            width: 1000px;
            position: absolute;
            top: 0.73em;
            border-top: 1px solid red;
        }

        &:before { right: 100%; }
        &:after { left: 100%; }
    }
}

h2.no-span {
    display: table;
    white-space: nowrap;
    &:before, &:after {
      border-top: 1px solid green;
      content: '';
      display: table-cell;
      position: relative;
      top: 0.5em;
      width: 45%;
    }
    &:before { right: 1.5%; }
    &:after { left: 1.5%; }
} 

.font{
    font-family: cursive;
    text-shadow: 2px 2px 5px slategrey;
    text-transform: monospace;

}


.img {
	position: relative;
	background-image: url(./국토종주img/rain-316579.jpg);
	height: 80vh;
	background-size: cover;
	border: 2px solid; black;
}

.img-cover {
	position: absolute;
	height: 100%;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.1);
	z-index: 1;
}

.img .content {
	position: absolute;
	top: 50%;
	left: 43%;
	transform: translate(-50%, -50%);
	font-size: 1rem;
	color: white;
	z-index: 2;
	text-align: center;
}

</style>


</head>
<body>

<h2 class="background double"><span class="font">문화와 생태의 비단강길을 따라 달린다.<br>금강자전거길</span></h2>

<table class="zui-table" border="1">
  <tr>
    <th style="width: 11.2%; height: 55px;">항목</th>
    <th colspan="2">내용</th>
  </tr>

  <tr>
    <td style="text-align: center;">소개글</td>
    <td colspan="2"> <h3 style="padding: 20px; line-height:45px; font-family: serif;">전북 장수의 뜬봉샘에서 발원한 금강은 무주 구천동과 옥천‘정지용의 향수 백리길’을 달려 대청호에서 잠시 휴식을 취한다. 그리고 공주와 부여 등 한반도의 허리를 흐르다 금강 하구둑에서 마침내 서해의 품에 안긴다. 대청댐에서 시작해서 금강과 어깨를 나란히 달리는 146km의 금강자전거길은 여유로운 라이딩을 즐길 수 있는 길로 백제의 숨결을 따라 시인의 노래와 작가의 이야기가 이어지며, 하늘과 강, 사람과 사람 사이의 경계를 허무는 자연의 조화로움이 있다.</h3> </td>
  </tr>
  
  <tr>
    <td rowspan="4" style="text-align: center;">기본정보</td>
    <td style="width: 10%; text-align: center; padding: 12px;" >전체거리</td>
    <td style="width: 50%; padding: 15px; text-align: center;" >146Km</td>
  </tr>
  
   <tr> 
    <td style="width: 5%; text-align: center; padding: 12px; " >예상시간</td>
    <td  style="width: 50%; padding: 15px; text-align: center;">9시간 40분</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >난 이 도</td>
    <td  style="width: 50%; padding: 15px; text-align: center;" >★★☆☆☆</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >코스정보</td>
    <td  style="width: 50%; padding: 12px; text-align: center;" >대청댐 – 세종보 – 공주보 – 백제보 – 익산 성당포구 – 금강 하구둑</td>
  </tr>
  
  <tr>
    <td  rowspan="3" style="text-align: center;">이미지</td>
    <td  rowspan="3"> <img src="./국토종주img/Geumgang_1.png"> </td> 
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Geumgang_2.png"></td>
  </tr>
  
  <tr>
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Geumgang_3.png"></td>
  </tr>
  
  <tr>
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Geumgang_4.png"></td>
  </tr>
  
   <tr>
    <td rowspan="3" style="text-align: center;">매력 포인트</td>
    <td colspan="3"  style="padding: 15px; line-height:45px; font-family: serif; "> <p style="color: lightcoral; font-family: cursive;">1. 무덤 속에서 되살아난 백제의 문화</p>
	<h3>공산성 주차장에서 출발한 자전거길은 도심을 산책하듯 달려 무령왕릉이 자리한 송산리 고분군에 도착한다. 발굴 당시 전 세계 고고학계를 흥분하게 했던 무령왕릉은 왕이 살던 공산성에서 걸어서 10분 거리. 1971년 송산리 고분군의 6호분 배수시설 공사 중에 도굴된 흔적이 없는 처녀분에서 백제무령왕과 왕비의 무덤이라는 지석이 발견되면서 백제의 화려한 문화가 시공을 뛰어넘어 세상에 그 화려한 모습을 드러냈다.</h3> </td>
  </tr>
  
  <tr>
    <td colspan="2"  style="padding: 20px; line-height:45px; font-family: serif;">
     <p style="color: lightcoral; font-family: cursive;">2. ‘큰 나라가 있는 강’, 백마강</p>
	<h3>부소산 정상에서 해가 솟는 순간은 부여 여행에서 빼놓을 수 없는 황홀경. 껍질을 깨고 새로운 생명체가 태어나듯 불쑥 솟은 해가 백마강을 황금색으로 채색한다. 마치 성왕이 백제로 도읍을 옮기던 그날의 영광을 재현하기라도 하듯. 구드래나루에서 출항한 황포돛배의 돛도 황금색으로 물든다. 백제가 역사에서 사라지던 그날처럼 부소산을 뒤덮은 구름이 화염처럼 붉게 물들고 물안개가 연기처럼 피어올라 삼천궁녀의 전설이 서린 낙화암과 백제의 흥망성쇠를 지켜본 고란사를 감싼다.</h3> </td>
  </tr>
  
  
   <tr>
    <td colspan="2"  style="padding: 20px; line-height:45px; font-family: serif;">
     <p style="color: lightcoral; font-family: cursive;">3. 수만 마리 가창오리의 활홀한 군무</p>
	<h3>작은 점이 모이고 흩어지고 다시 모이면서 만들어내는 군무는 세상에서 가장 경이로운 공연. 먹구름처럼 하늘을 빈틈없이 까맣게 수 놓았던 가창오리 군단이 금강둑을 너머 서천과 군산의 논으로 사라진 순간. 금강둑의 갈꽃과 억새꽃이 비로소 가창오리의 군무가 연출하는 감동과 공포에 몸을 부르르 떤다.</h3> </td>
  </tr>
</table>

<br>

  <table class="zui-table" style="width: 100%;" border="1">
   <tr>
    <th style="width: 10%; height: 55px;">항목</th>
    <th colspan="2">내용</th>
  </tr>
  
  <tr>
    <td style="text-align: center;">코스안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Geumgang_5.png"></td>
  </tr>
  
     <!-- google 지도  -->
  <tr>
   	<td style="text-align: center;">코스안내</td>
    <td style="text-align: center; width: aoto; height: auto;"> <iframe style="width: 100%" src="https://www.google.com/maps/d/embed?mid=1jFSBRZC5uDjL10yNAJ8lXRdFkAJN-6Tx" width="640" height="480"></iframe></td>
  </tr>
  
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Geumgang_6.png"></td>
  </tr>
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Geumgang_7.png"></td>
  </tr>
  
     <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Geumgang_8.png"></td>
  </tr>
  </table>
  
  <h2 class="background double"><span class="font">기상 정보</span></h2>
  
  	<!--  최상단 이미지 부분 -->
	<div class="img" >
		<div class="img-cover"></div>
		
	<p style="text-align:center; font-size:39px; padding:5%; font-style: italic; color: yellow;">
		<span  id="anim"></span> <span id="shuffle"></span>
	</p>
	
		<!-- 날씨 정보 금강하구둑인증센터   -->
		<div class="weather" style="width: 85%; height: 100px; margin: auto; text-align: center; padding: 1%;">

			<table class="a1" cellpadding=0 cellspacing=0 width=240
			style="border: solid 1px #201818; font-family: Arial; font-size: 13px; background-color: #ededed; float: left;">
				<tr>
					<td><table width=100% cellpadding=0 cellspacing=0>
							<tr>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshl.png"
									bgcolor=#201818></td>
								<td width=* align=center
									background="http://rp5.ua/informer/htmlinfa/topsh.png"
									bgcolor=#201818><a
									style="color: #ffffff; font-family: Arial; font-size: 12px; text-decoration:none;"
									href="http://rp5.ua/12542/ko"><b>금강하구둑인증센터(출발지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top> <iframe
							src="http://rp5.ua/htmla.php?id=12542&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
							width=100% height=270 frameborder=0 scrolling=no
							style="margin: 0;"></iframe></td>
				</tr>
			</table>
			
			<!-- 날씨 정보 대청댐인증센터   -->
			<table class="a2" flow cellpadding=0 cellspacing=0 width=240
				style="border: solid 1px #201818; font-family: Arial; font-size: 13px; background-color: #ededed; float: right;">
				<tr>
					<td><table width=100% cellpadding=0 cellspacing=0>
							<tr>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshl.png"
									bgcolor=#201818></td>
								<td width=* align=center
									background="http://rp5.ua/informer/htmlinfa/topsh.png"
									bgcolor=#201818><a
									style="color: #ffffff; font-family: Arial; font-size: 12px;text-decoration:none;"
									href="http://rp5.ua/12536/ko"><b>대청댐인증센터(도착지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top><iframe
							src="http://rp5.ua/htmla.php?id=12536&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
							width=100% height=270 frameborder=0 scrolling=no
							style="margin: 0;"></iframe></td>
				</tr>
				
			</table>
		</div>
	</div>
	<br>
	
	<script type="text/javascript">
		var $ = function(id) {
			return document.getElementById(id);
		};
		var inc = 0;
		var out = 0;
		var str = '국토종주 시작하시기 전에 기상을 확인해주세요.';
		var chars = 'ABCDEFG@$%&#@!#@!#@@#$#%#%^%&^&*^(^(%!@#!$#@%$#))';
		var t;

		var anim = function() {
			inc++;
			if (inc % 7 === 0 && out < str.length) {
				$('anim').appendChild(document.createTextNode(str[out]));
				out++;
			} else if (out >= str.length) {
				$('shuffle').innerHTML = '';
			}
			$('shuffle').innerHTML = chars[Math.floor(Math.random()
					* chars.length)];
		};
		t = setInterval(anim, 20);
		$('anim').innerHTML = '';
	</script>

</body>
</html>