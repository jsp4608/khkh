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

<h2 class="background double"><span class="font">푸른 동해바다의 내음을 느낄 수 있는 동해안 자전거길<br>동해안 자전거길(경북)</span></h2>

<table class="zui-table" border="1">
  <tr>
    <th style="width: 11.2%; height: 55px;">항목</th>
    <th colspan="2">내용</th>
  </tr>

  <tr>
    <td style="text-align: center;">소개글</td>
    <td colspan="2"> <h3 style="padding: 20px; line-height:45px; font-family: serif;">교통량이 적은 해안도로를 활용하여 조성된 구간으로 송림과 청정 해변, 모래벌판이 어우려져'명사 20리'로 불리는 고래불해변과 관동팔경의 하나인 월송정을 경유한다.그 외에도 항구와 소박한 어촌의 모습, 백사장과절벽, 눈과 마음을 즐겁게 하는 예쁜 등대 등을 볼수 있다.해안도로를 따라 펄쳐지는 아름다운 동해안의 절경은 영덕 강축해안도로(강구~축산)와 울진 해안도로(덕신리 ~ 망양정) 동해 최고의 해안절경을 품은 해안도로이다. 해안도로를 달리면서 동해바다의 아름다운 풍경과 각양각색의 기암괴석을 볼 수 있다.</h3> </td>
  </tr>
  
  <tr>
    <td rowspan="4" style="text-align: center;">기본정보</td>
    <td style="width: 10%; text-align: center; padding: 12px;" >전체거리</td>
    <td style="width: 50%; padding: 15px; text-align: center;" >76Km</td>
  </tr>
  
   <tr> 
    <td style="width: 5%; text-align: center; padding: 12px; " >예상시간</td>
    <td  style="width: 50%; padding: 15px; text-align: center;">5시간 15분</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >난 이 도</td>
    <td  style="width: 50%; padding: 15px; text-align: center;" >★★★☆☆</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >코스정보</td>
    <td  style="width: 50%; padding: 12px; text-align: center;" > 영덕 해맞이공원 - 축산항 - 덕천해변 - 고래불해변 - 백석해면 - 후포항 - 월송정 - 구산해변 - 기성망양해변 - 망양휴게소 - 덕신해변 - 망양해변 - 울진친환경 농업엑스포공원 - 울진 은어다리</td>
  </tr>
  
  <tr>
    <td  rowspan="3" style="text-align: center;">이미지</td>
    <td  rowspan="3"> <img src="./국토종주img/image04.png"> </td> 
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/image05.png"></td>
  </tr>
  
  <tr>
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/image05.png"></td>
  </tr>
  
  <tr>
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/image05.png"></td>
  </tr>
  
   <tr>
    <td rowspan="2" style="text-align: center;">매력 포인트</td>
    <td colspan="2"  style="padding: 15px; line-height:45px; font-family: serif; "> <p style="color: lightcoral; font-family: cursive;">1. 영덕 강축해안도로...</p>
	<h3>'강구'와 '축산' 사이를 잇는 길이라고 해서 두 지역의 앞글자를 따라 이름이 붙여진 도로로 동해 최고의 해안절경을 품고 있는 해안 도로이다. 항구와 포구 , 백사장과 절벽, 가파른 산록과 소박한 어촌, 예쁜 등대 등 해안에서 볼 수 있는 명물이 다 모여 있다.</h3> </td>
  </tr>
  
  <tr>
    <td colspan="2"  style="padding: 20px; line-height:45px; font-family: serif;">
     <p style="color: lightcoral; font-family: cursive;">2. 울진 해안도로(덕신리 ~ 망양정)..</p>
	<h3></h3>매화면 덕신리에서 근남면 망양정까지 연결되는 약 18km의 해안도로로 아름다운 동해바다와 빛나는 일출을 보며 달릴 수 있는 코스이며, 해안도로를 라이딩하면서 아름다운 풍경을 자랑하는 망양정과 촛대바위, 거북바위, 각양색의 기암괴석을 볼 수 있다. </td>
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
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/EastCoast_Kyungbuk_3.jpg"></td>
  </tr>
  
     <!-- google 지도  -->
  <tr>
   <td style="text-align: center;">코스안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"> <iframe style="width: 100%" src="https://www.google.com/maps/d/embed?mid=1jAeDlBNot2f6vm4gKTcn4Qb_DYRHktzu" width="640" height="480"></iframe></td>
  </tr>
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/EastCoast_Kyungbuk_2.PNG"></td>
  </tr>
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/EastCoast_Kyungbuk_1.PNG"></td>
  </tr>
  
  </table>

<h2 class="background double"><span class="font">기상 정보</span></h2>
  
  	<!--  최상단 이미지 부분 -->
	<div class="img" >
		<div class="img-cover"></div>
		
	<p style="text-align:center; font-size:39px; padding:5%; font-style: italic; color: yellow;">
		<span  id="anim"></span> <span id="shuffle"></span>
	</p>
	
		<!-- 날씨 정보 울진은어다리 인증센터    -->
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
									href="http://rp5.ua/292389/ko"><b>울진은어다리 인증센터(출발지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top> <iframe
							src="http://rp5.ua/htmla.php?id=292389&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
							width=100% height=270 frameborder=0 scrolling=no
							style="margin: 0;"></iframe></td>
				</tr>
			</table>
			
			<!-- 날씨 정보 해맞이공원 인증센터   -->
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
									href="http://rp5.ua/300602/ko"><b>해맞이공원 인증센터(도착지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top><iframe
							src="http://rp5.ua/htmla.php?id=300602&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
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