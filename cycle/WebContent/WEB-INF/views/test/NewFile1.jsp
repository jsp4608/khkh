<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="content">
  <div class="wrap">
  	<div class="two-peace">
	  	<div>
		    <video id="video" width="350" height="260" autoplay></video>
	  	</div>
	  	<div>
		    <canvas id="canvas" width="350" height="260"></canvas>
	  	</div>
  	</div>
    <button id="btn-camera">1. 비디오출력</button>
    <button id="btn-capture">2. 캡쳐</button>
    <hr>

	  <div id="output">
	  	<strong>Capture images</strong>
	  	<div id="images">

	  	</div>
	  </div>
  </div>
</div>

<script src="js/video.js"></script>

</body>
</html>