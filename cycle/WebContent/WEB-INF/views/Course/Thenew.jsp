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

<h2 class="background double"><span class="font">한강과 낙동강을 이어 한반도를 달린다.<br>새재 자전거길</span></h2>

<table class="zui-table" border="1">
  <tr>
    <th style="width: 11.2%; height: 55px;">항목</th>
    <th colspan="2">내용</th>
  </tr>

  <tr>
    <td style="text-align: center;">소개글</td>
    <td colspan="2"> <h3 style="padding: 20px; line-height:45px; font-family: serif;">새재는 충북 괴산과 경북 문경에 걸친 해발 1천17미터의 고갯마루로 ‘나는 새도 쉬어 넘는다’ 해서 조령(鳥嶺)이라고도 한다. 남한강과 낙동강을 연결하기 위해 자전거길 중 유일하게 고개를 넘는 새재자전거길은 상당한 체력과 인내력을 시험하는 구간이지만 마을길과 들길로 이어져 시골 정취가 물씬 묻어나는 소박한 시골 내음과 함께 청운의 꿈을 안고 영남대로를 달려 문경새재를 넘던 조선 선비들의 숨결이 남아 있는 길이다. </h3></td>
  </tr>
  
  <tr>
    <td rowspan="4" style="text-align: center;">기본정보</td>
    <td style="width: 10%; text-align: center; padding: 12px;" >전체거리</td>
    <td style="width: 50%; padding: 15px; text-align: center;" >100Km</td>
  </tr>
  
   <tr> 
    <td style="width: 5%; text-align: center; padding: 12px; " >예상시간</td>
    <td  style="width: 50%; padding: 15px; text-align: center;">6시간 40분</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >난 이 도</td>
    <td  style="width: 50%; padding: 15px; text-align: center;" >★★★★☆</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >코스정보</td>
    <td  style="width: 50%; padding: 12px; text-align: center;" >충주탄금대 – 수안보온천 – 이회령 휴게소 – 문경불정역 – 상주 상풍교</td>
  </tr>
  
  <tr>
    <td  rowspan="3" style="text-align: center;">이미지</td>
    <td  rowspan="3"> <img src="./국토종주img/Thenew_1.png"> </td> 
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Thenew_2.png"></td>
  </tr>
  
  <tr>
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Thenew_3.png"></td>
  </tr>
  
  <tr>
    <td  style="text-align: center; width: 100%;"><img src="./국토종주img/Thenew_4.png"></td>
  </tr>
  
   <tr>
    <td rowspan="3" style="text-align: center;">매력 포인트</td>
    <td colspan="3"  style="padding: 15px; line-height:45px; font-family: serif; "> <p style="color: lightcoral; font-family: cursive;">1. 역사의 현장 탄금대를 지나 …</p>
	<h3>호수처럼 잔잔한 남한강 물길이 한눈에 들어오는 탄금대는애달픈 사연이 새겨진 역사의 현장. 대가야가 멸망하기 직전 낙동강 개포나루에서 나룻배에 열두줄 가야금을 싣고 신라로 귀화한 대가야의 악성 우륵이 가야금을 뜯으며 망국의 한을 달랬다고 전해오는 곳이다. 탄금대는 임진왜란 때 신립 장군이 장렬하게 최후를 맞이한 순국의 현장이기도</h3> </td>
  </tr>
  
  <tr>
    <td colspan="2"  style="padding: 20px; line-height:45px; font-family: serif;">
     <p style="color: lightcoral; font-family: cursive;">2. 사과나무 가로수길 달려 이화령으로 …</p>
	<h3>충북 괴산 연풍면과 경북 문경 문경읍 사이에 위치한 이화령은 오르막 5km와 내리막 6km로 이루어진 해발 548m 높이의 백두대간 고개. 구불구불 오르내리 고개가 가파르고 험한데다 호랑이 등 산짐승의 피해가 많아 옛날에는 여러 사람이 어울려서 함께 넘어갔다하여 이우릿재로 불리다 고개 주위에 배나무가 많아 이화령으로 불리게 되었다고 전한다.</h3> </td>
  </tr>
  
  <tr>
    <td colspan="2"  style="padding: 20px; line-height:45px; font-family: serif;">
     <p style="color: lightcoral; font-family: cursive;">3. 퇴계 이황 등 선비들 넘던 문경새재 …</p>
	<h3>문경새재는 조선 초에 개설된 영남대로 고갯길로 퇴계 이황을 비롯해 서거정, 김종직, 김시습, 이언적, 주세붕, 이이, 김성일, 류성룡, 이수광, 김만중, 정약용, 김정희 등 수많은 선비들이 이 고개를 넘었다. 청운의 꿈을 안고 과거길에 나선 선비와 임지 행차길에 오른 목민관이 문경새재를 벗한 것은 낙동강과 남한강을 잇는 가장 짧은 고갯길이기 때문이다.</h3> </td>
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
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Thenew_5.png"></td>
  </tr>
  
      <!-- google 지도 -->
  <tr>
   	<td style="text-align: center;">코스안내</td>
    <td style="text-align: center; width: aoto; height: auto;"> <iframe style="width: 100%" src="https://www.google.com/maps/d/u/0/embed?mid=1ZRkyCSls5LIQu5QWyHVRUMZ-GvCQ1CXf" width="640" height="480"></iframe></td>
  </tr>
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Thenew_6.png"></td>
  </tr>
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Thenew_7.png"></td>
  </tr>
  
   <tr>
    <td style="text-align: center;">전철노선</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Thenew_8.png"></td>
  </tr>
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/Thenew_9.png"></td>
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
	
		<!-- 날씨 정보 충주탄금대인증센터   -->
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
									href="http://rp5.ua/12534/ko"><b>충주탄금대인증센터(출발지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top> <iframe
							src="http://rp5.ua/htmla.php?id=12534&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
							width=100% height=270 frameborder=0 scrolling=no
							style="margin: 0;"></iframe></td>
				</tr>
			</table>
			
			<!-- 날씨 정보 상주상풍교인증센터  -->
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
									href="http://rp5.ua/297882/ko"><b>상주상풍교인증센터(도착지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top><iframe
							src="http://rp5.ua/htmla.php?id=297882&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
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