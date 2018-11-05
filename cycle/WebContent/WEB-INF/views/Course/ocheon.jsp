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

<h2 class="background double"><span class="font">다섯개(五)하천(天)을 따라 새재와 금강을 잇는 오천 자전거길 <br> 오천자전거길</span></h2>

<table class="zui-table" border="1">
  <tr>
    <th style="width: 11.2%; height: 55px;">항목</th>
    <th colspan="2">내용</th>
  </tr>

  <tr>
    <td style="text-align: center;">소개글</td>
    <td colspan="2"> <h3 style="padding: 20px; line-height:45px; font-family: serif;">충북 괴산군에서 증평, 청원을 거쳐 세종시까지 쌍천, 달천, 성황천, 보강천, 미호천, 등 총 다섯 개의 수려한 하천을 따라 조성된 자전거길이라는 의미로 오천자전거길이라 이름 붙여진다. 자연그대로의 모습을 훼손하지 않고 조성된 이곳은 조그마한 오솔길, 둑방을 따라 너른 논과 밭, 하천을 달리며 감상하는 코스로서 정겨운 고향에 온 듯 한 여유와 편안함을 선사해줄 것이다. 오천 자전거길은 그동안 많은 사랑을 받아온 국토종주자전거길 중 새재와 금강을 연결하는 코스로서, 이제 수도권이나 영남권에서 새재를 거쳐 세종시까지, 다시 금강변을 따라 서해까지 이어지는 지역간 소통의 자전거길로 자리매김 할 것이다.</h3> </td>
  </tr>
  
  <tr>
    <td rowspan="4" style="text-align: center;">기본정보</td>
    <td style="width: 10%; text-align: center; padding: 12px;" >전체거리</td>
    <td style="width: 50%; padding: 15px; text-align: center;" >종주노선105Km</td>
  </tr>
  
   <tr> 
    <td style="width: 5%; text-align: center; padding: 12px; " >예상시간</td>
    <td  style="width: 50%; padding: 15px; text-align: center;">6시간 30분</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >난 이 도</td>
    <td  style="width: 50%; padding: 15px; text-align: center;" >★★☆☆☆</td>
  </tr>
  
  <tr> 
    <td style="width: 5%; text-align: center; padding: 12px;" >코스정보</td>
    <td  style="width: 50%; padding: 12px; text-align: center;" > 행촌교차로(시점) - 쌍천 - 산막이 옛길 - 달천 - 괴강교 - 괴산읍내 - 성황천 - 보강천 생태공원 - 백로공원 - 미호천 - 팔결교 - 정북토성 - 문암생태공원 - 연꽃공원 - 합강공원(종점)</td>
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
    <td colspan="2"  style="padding: 15px; line-height:45px; font-family: serif; "> <p style="color: lightcoral; font-family: cursive;">1. 달천과 성황천이 만나는 그림 같은 비경...</p>
	<h3>달천을 따라 흐르는 자전거길이 성황천으로 뻗어나가는 길목에 '괴강교'라는 오래된 다리가 있다. 오랫동안 차량이 통행이 금지된 체 방치되어있다. 자전거 길로 새로 태어난 괴강교에서 바라보는 풍경은 가히 오천자전거길 제일의 비경이라 할만큼 빼어나며, 조금 더 편안하게 풍경을 감상할 수 있도록 전망시설이 갖추어져 있다.</h3> </td>
  </tr>
  
  <tr>
    <td colspan="2"  style="padding: 20px; line-height:45px; font-family: serif;">
     <p style="color: lightcoral; font-family: cursive;">2. 철새와 연꽃의 아름다움에 취하는 미호천..</p>
	<h3></h3>충북 청원과 세종시에 걸쳐 흐르는 미호천 자전거길은 백로, 청둥오리 등의 철새와 끊임없이 펼쳐진 갈대의 어우러짐을 느낄 수 있다. 또한 세종시에 이르면 수 만송이의 연꽃이 만발한 연꽃공원의 아름다음을 봄에서 가을까지 즐길 수 있다. 미호천을 따라 달리는 라이딩은 마치 자연의 품안에서 뛰노는 신선과 같은 신비로움을 선사해줄 것이다. </td>
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
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/ocheon_1.PNG"></td>
  </tr>
  
  <!-- google 지도 -->
  <tr>
   <td style="text-align: center;">코스안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"> <iframe style="width: 100%" src="https://www.google.com/maps/d/embed?mid=1uuM9shm5y41ixKh5ore_OxuLXdkfsF0p" width="640" height="480"></iframe></td>
  </tr>
  
  
   <tr>
    <td style="text-align: center;">교통안내</td>
    <td  style="text-align: center; width: aoto; height: auto;"><img src="./국토종주img/ocheon_2.PNG"></td>
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
	
		<!-- 날씨 정보 합강공원인증센터  -->
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
									href="http://rp5.ua/348076/ko"><b>합강공원인증센터(출발지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top> <iframe
							src="http://rp5.ua/htmla.php?id=348076&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
							width=100% height=270 frameborder=0 scrolling=no
							style="margin: 0;"></iframe></td>
				</tr>
			</table>
			
			<!-- 날씨 정보  행촌교차로인증센터  -->
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
									href="http://rp5.ua/305314/ko"><b>행촌교차로인증센터(도착지점)</b></a></td>
								<td width=8 height=30
									background="http://rp5.ua/informer/htmlinfa/topshr.png"
									bgcolor=#201818> </td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td valign=top><iframe
							src="http://rp5.ua/htmla.php?id=305314&lang=ko&um=00000&bg=%23ededed&ft=%23ffffff&fc=%23201818&c=%23000000&f=Arial&s=13&sc=4"
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
