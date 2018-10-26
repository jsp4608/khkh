<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nakdon</title>

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

	<h2 class="background double">
		<span class="font">칠백리 굽이굽이 삶의 뿌리를 찾아 달린다<br>낙동강 자전거길
		</span>
	</h2>

	<table class="zui-table" border="1">
		<tr>
			<th style="width: 11.2%; height: 55px;">항목</th>
			<th colspan="2">내용</th>
		</tr>

		<tr>
			<td style="text-align: center;">소개글</td>
			<td colspan="2">
				<h3 style="padding: 20px; line-height: 45px; font-family: serif;">한반도에서
					압록강 다음으로 긴 낙동강은 강원도 태백의 함백산 황지연못에서 시작해서 경상남북도를 두루 돌아 흐르면서 부산 다대포에
					정착하는 1천 3백리의 강이며, 한반도의 역사속에서 우리의 삶을 품어준 영남의 젖줄이다. 과거 신라와 가야 문화의
					중심지였던 낙동강을 따라 연결된 389km의 낙동강자전거길은 안동댐에서 부터 시작하여 상주 상풍교에서 새재자전거길과
					만나고, 하회마을과 회룡포를 지나 경천대에 오른 후 낙동강 하구둑에서 국토종주 대장정의 막을 내린다.</h3>
			</td>
		</tr>

		<tr>
			<td rowspan="5" style="text-align: center;">기본정보</td>
			<td style="width: 10%; text-align: center; padding: 12px;">전체거리</td>
			<td style="width: 50%; padding: 15px; text-align: center;">국토종주
				낙동강자전거길 324km, 낙동강종주자전거길 389km</td>
		</tr>

		<tr>
			<td style="width: 5%; text-align: center; padding: 12px;">예상시간</td>
			<td style="width: 50%; padding: 15px; text-align: center;">국토종주
				낙동강자전거길 21시간 30분, 낙동강종주자전거길 26시간</td>
		</tr>

		<tr>
			<td style="width: 5%; text-align: center; padding: 12px;">난 이 도</td>
			<td style="width: 50%; padding: 15px; text-align: center;">★★★☆☆</td>
		</tr>

		<tr>
			<td rowspan="2" style="width: 5%; text-align: center; padding: 12px;">코스정보</td>
			<td style="width: 50%; padding: 12px; text-align: center;">
				국토종주 낙동강자전거길상주 <br><br>상풍교 - 상주보 - 낙단보 - 구미보 - 칠곡보 - 강정고령보 - 달성보 -
				합천창녕보 - 창녕함안보 - 양산 물문화관 - 낙동강 하구둑
			</td>

		</tr>

		<tr>
			<td style="width: 50%; padding: 12px; text-align: center;">
				낙동강종주자전거길<br><br> 안동댐 - 상주 상풍교 - 상주보 - 낙단보 - 구미보-칠곡보 - 강정고령보 - 달성보
				- 합천창녕보 - 창녕함안보 - 양산 물문화관 - 낙동강 하구둑
			</td>
		</tr>


		<tr>
			<td rowspan="3" style="text-align: center;">이미지</td>
			<td rowspan="3"><img src="./국토종주img/Nakdon_1.png"></td>
			<td style="text-align: center; width: 100%;"><img
				src="./국토종주img/Nakdon_2.png"></td>
		</tr>

		<tr>
			<td style="text-align: center; width: 100%;"><img
				src="./국토종주img/Nakdon_3.png"></td>
		</tr>

		<tr>
			<td style="text-align: center; width: 100%;"><img
				src="./국토종주img/Nakdon_4.png"></td>
		</tr>

		<tr>
			<td rowspan="4" style="text-align: center;">매력 포인트</td>
			<td colspan="4"
				style="padding: 15px; line-height: 45px; font-family: serif;">
				<p style="color: lightcoral; font-family: cursive;">1. 하늘조차 아름다운
					경치에 놀란 경천대...</p>
				<h3>경천대는 낙동강 물길 중 가장 아름다운 풍경을 그린다는 곳. 소백산 줄기를 따라 형성된 크고 작은
					산봉우리는 경천대에 이르러 동양화와 다름없는 풍경을 완성한다. 깎아지른 바위절벽과 넓은 백사장, 그리고 아늑하게 흐르는
					강물 사이로 펼쳐지는 반원형의 회상 들녘은 황금색으로 물드는 가을풍경을 으뜸으로 꼽는다. 낙동강의 모래가 퇴적되어
					만들어진 경천섬에는 2km에 이르는 자전거길과 공원이 예쁘게 꾸며져 있어 잠시 들러 낭만을 즐기기에도 좋다.</h3>
			</td>
		</tr>

		<tr>
			<td colspan="2"
				style="padding: 20px; line-height: 45px; font-family: serif;">
				<p style="color: lightcoral; font-family: cursive;">2. 막힌 곳은 뚫고
					단절된 곳은 이어 만든 절경...</p>
				<h3>자전거가 낙동강을 따라 일직선으로 달릴 수 있도록 막힌 곳은 뚫고 단절된 곳은 이어주는 과정에서 상상도
					못했던 절경들이 탄생했다. 구미보 하류의 금오공대 앞 절벽 아래를 달리는 3.6km 길이의 자전거길이 대표적인 구간.
					절벽에 가로막혀 사람이 접근할 수 없는 곳에 파일을 박고 1km 길이의 데크를 설치하자 깎아지른 절벽과 굽이치는 낙동강이
					한 폭의 동양화로 거듭나 질주하는 쾌감을 더한다.</h3>
			</td>
		</tr>

		<tr>
			<td colspan="2"
				style="padding: 20px; line-height: 45px; font-family: serif;">
				<p style="color: lightcoral; font-family: cursive;">3. 강화도의
					팔만대장경을 해인사로 나르다</p>
				<h3>낙동강 자전거도로는 고령 개진면에서 개경포(개포나루터)를 벗한다. 개경포는 강화도의 팔만대장경을 한강과
					낙동강 뱃길을 이용해 옮겨온 곳. 승려들은 개경포에서 머리에 대장경을 이고 합천 해인사로 날랐다고 한다. 1960년대
					초까지 부산을 출발한 황포돛배가 소금과 젓갈을 싣고 와 곡식과 바꿔 실었다는 개경포는 큰 배가 다닐 정도로 수심이
					깊었다. 하지만 지금 개경포는 나루터의 흔적조차 없을 정도로 쓸쓸하다. 다만 무심한 강물이, 대가야의 멸망을 지켜본
					우륵이 애달프게 가야금을 뜯었다는 정정골을 감돌아 남해를 향할 뿐이다.</h3>
			</td>
		</tr>

		<tr>
			<td colspan="2"
				style="padding: 20px; line-height: 45px; font-family: serif;">
				<p style="color: lightcoral; font-family: cursive;">4. 매화가 만발한
					낙동강을 배경으로 펼쳐지는 열차의 S라인</p>
				<h3>경부선 원동역이 위치한 원리마을은 매화가 만발한 낙동강을 배경으로 기차가 S자 곡선을 그리며 교행하는
					사진으로 유명한 곳이다. 부산과 서울을 출발한 기차가 원리 매화단지를 배경으로 만나는 것은 하루 한 두 차례. 매화가
					꽃망울을 터뜨리는 봄에는 전국의 사진작가들이 그 순간을 포착하기 위해 낙동강이 한눈에 들어오는 언덕배기에서 장사진을
					이룬다.</h3>
			</td>
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
			<td style="text-align: center; width: aoto; height: auto;"><img
				src="./국토종주img/Nakdon_5.png"></td>
		</tr>
		
		  <!-- google 지도 -->
  		<tr>
  			 <td style="text-align: center;">코스안내</td>
   			 <td style="text-align: center; width: aoto; height: auto;"> <iframe style="width: 100%" src="https://www.google.com/maps/d/embed?mid=1IeIReVUR50qC5tckx1VqkrpgWFvQNML6" width="640" height="480"></iframe></td>
  		</tr>

		<tr>
			<td style="text-align: center;">교통안내</td>
			<td style="text-align: center; width: aoto; height: auto;"><img
				src="./국토종주img/Nakdon_6.png"></td>
		</tr>

		<tr>
			<td style="text-align: center;">교통안내</td>
			<td style="text-align: center; width: aoto; height: auto;"><img
				src="./국토종주img/Nakdon_7.png"></td>
		</tr>

		<tr>
			<td style="text-align: center;">교통안내</td>
			<td style="text-align: center; width: aoto; height: auto;"><img
				src="./국토종주img/Nakdon_8.png"></td>
		</tr>

		<tr>
			<td style="text-align: center;">교통안내</td>
			<td style="text-align: center; width: aoto; height: auto;"><img
				src="./국토종주img/Nakdon_9.png"></td>
		</tr>

	</table>
	
	<br>
  
  <h2 class="background double"><span class="font">기상 정보</span></h2>
  
  	<!--  최상단 이미지 부분 -->
	<div class="img" >
		<div class="img-cover"></div>
		
	<p style="text-align:center; font-size:39px; padding:5%; font-style: italic; color: yellow;">
		<span  id="anim"></span> <span id="shuffle"></span>
	</p>
	
		<!-- 날씨 정보  상주상풍교인증센터   -->
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
									href="http://rp5.ua/297882/ko"><b>상주상풍교인증센터(출발지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top> <iframe
							src="http://rp5.ua/htmla.php?id=297882&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
							width=100% height=270 frameborder=0 scrolling=no
							style="margin: 0;"></iframe></td>
				</tr>
			</table>
			
			<!-- 날씨 정보 낙동강하구둑인증센터   -->
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
									href="http://rp5.ua/292128/ko"><b>낙동강하구둑인증센터(도착지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top><iframe
							src="http://rp5.ua/htmla.php?id=292128&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
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
				removeInterval(t);
			}
			$('shuffle').innerHTML = chars[Math.floor(Math.random()
					* chars.length)];
		};
		t = setInterval(anim, 20);
		$('anim').innerHTML = '';
	</script>





</body>
</html>