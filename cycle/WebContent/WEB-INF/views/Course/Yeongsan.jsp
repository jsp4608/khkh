<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yeongsan</title>

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

<h2 class="background double"><span class="font">시처럼 그림처럼 산수화 속으로 달린다.<br>영산강자전거길</span></h2>

<table class="zui-table" border="1">
  <tr>
    <th style="width: 11.2%; height: 55px;">항목</th>
    <th colspan="2">내용</th>
  </tr>

  <tr>
    <td style="text-align: center;">소개글</td>
    <td colspan="2"> <h3 style="padding: 20px; line-height:45px; font-family: serif;">전남 담양의 용추계곡 용소에서 발원한 영산강은 황룡강, 지석천, 고막원천 등 지류와 합류해 장장 300리 호남벌을 적신 후 서해로 흘러드는 남도의 젖줄이다. 이 영산강을 따라 조성된 133km 길이의 영산강자전거길은 담양호 아래에 위치한 대성교에서 강둑을 탄다. 그리고 목포의 영산강 하구둑까지 황홀하면서도 질박한 남도풍경에 매료되어 시처럼 그림처럼 유유자적하다.</h3> </td>
  </tr>
  
  <tr>
    <td rowspan="4" style="text-align: center;">기본정보</td>
    <td style="width: 10%; text-align: center; padding: 12px;" >전체거리</td>
    <td style="width: 50%; padding: 15px; text-align: center;" >135Km</td>
  </tr>
  
   <tr> 
    <td style="width: 5%; text-align: center; padding: 12px; " >예상시간</td>
    <td  style="width: 50%; padding: 15px; text-align: center;">8시간 50분</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >난 이 도</td>
    <td  style="width: 50%; padding: 15px; text-align: center;" >★★☆☆☆</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >코스정보</td>
    <td  style="width: 50%; padding: 12px; text-align: center;" > 담양댐 - 메타세쿼이아길 - 담양 대나무숲 - 승촌보 - 죽산보 - 느러지 관람 전망대 - 영산강 하구둑</td>
  </tr>
  
  <tr>
    <td  rowspan="3" style="text-align: center;">이미지</td>
    <td  rowspan="3"> <img src="./국토종주img/Yeongsan_1.png"> </td> 
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Yeongsan_2.png"></td>
  </tr>
  
  <tr>
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Yeongsan_3.png"></td>
  </tr>
  
  <tr>
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Yeongsan_4.png"></td>
  </tr>
  
   <tr>
    <td rowspan="3" style="text-align: center;">매력 포인트</td>
    <td colspan="3"  style="padding: 15px; line-height:45px; font-family: serif; "> <p style="color: lightcoral; font-family: cursive;">1. 배달사고로 탄생한 메타세쿼이아 가로수길</p>
	<h3>1970년대 초에 전국적으로 가로수 심기 사업이 한창일 때, 다른 지역으로 가야 할 메타세쿼이아 묘목이 담양으로 잘못 배달되자 당시 흔한 수종이 아닌데다 값비싼 나무라 담양군에서는 되돌려 보내지 않고 얼른 심어버렸다고 한다.</h3> </td>
  </tr>
  
  <tr>
    <td colspan="2"  style="padding: 20px; line-height:45px; font-family: serif;">
     <p style="color: lightcoral; font-family: cursive;">2. 물안개가 신비로운 나주영상테마파크</p>
	<h3>다해포구에서 황포돛배를 타고 영산강 물길을 오르내리며 정자를 감상하는 재미는 나주에서나 누리는 호사. 영산강을 사이에 두고 드라마 ‘주몽’의 세트장인 나주영상테마파크를 마주보는 다시면의 월계정은 달밤에 영산강이 가장 아름답게 보인다는 정자로 황포돛배 물그림자와 어우러진 월계정의 정취가 시간을 거슬러 조선시대로 여행을 떠난 듯 고즈넉하다.</h3> </td>
  </tr>
  
  <tr>
    <td colspan="2"  style="padding: 20px; line-height:45px; font-family: serif;">
     <p style="color: lightcoral; font-family: cursive;">3. 자연과 생태가 살아 숨 쉬는 자전거 아우토반</p>
	<h3>나주와 무안을 연결하는 몽탄대교를 건넌 영산강자전거길은 ‘자전거 하이웨이’로 불리는 둑방길을 만난다. 몽탄대교에서 소댕이나루에 이르는 약 10km의 둑방길은 일직선 구간으로 지평선이 보일 정도로 시야가 확 트인다. 가을에는 무안들녘의 황금물결과 강변 갈꽃의 은색물결, 그리고 햇살에 반짝이는 영산강이 어우러지는 꿈의 라이딩 구간이다.</h3> </td>
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
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Yeongsan_5.png"></td>
  </tr>
  
    <!-- google 지도  -->
  <tr>
   <td style="text-align: center;">코스안내</td>
   <td style="text-align: center; width: aoto; height: auto;"> <iframe style="width: 100%" src="https://www.google.com/maps/d/embed?mid=1VfNCZ95aQ2BcygimWwY4KZOzB9uZsktH" width="640" height="480"></iframe></td>
  </tr>
  
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Yeongsan_6.png"></td>
  </tr>
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Yeongsan_7.png"></td>
  </tr>
  
     <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Yeongsan_8.png"></td>
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
	
		<!-- 날씨 정보 영산하구둑인증센터   -->
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
									href="http://rp5.ua/12559/ko"><b>영산하구둑인증센터(출발지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top> <iframe
							src="http://rp5.ua/htmla.php?id=12559&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
							width=100% height=270 frameborder=0 scrolling=no
							style="margin: 0;"></iframe></td>
				</tr>
			</table>
			
			<!-- 날씨 정보 담양댐인증센터   -->
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
									href="http://rp5.ua/299767/ko"><b>담양댐인증센터(도착지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top><iframe
							src="http://rp5.ua/htmla.php?id=299767&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
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