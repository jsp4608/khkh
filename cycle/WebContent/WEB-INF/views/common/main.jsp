<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="resources/css/main.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title></title>
</head>
<body>

 <div class="view" style="background-image: url('img/road-2562568.jpg'); background-repeat: no-repeat; background-size: cover;">

    <!-- Mask & flexbox options-->
    <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

      <!-- Content -->
      <div class="text-center white-text mx-5 wow fadeIn">
      <c:if test="">
      
      </c:if>
        <h1 class="mb-4">
          <strong>말해보세요</strong>
        </h1>


       <c:if test="${login.id != null}">
		<div id="content">
			<span id="icon-music">♬</span>

			<div class="wrap">
				<p>
					음성인식<br>
				</p>


				<div id="result">



					<span class="final" id="final_span"></span> <span class="interim"
						id="interim_span"></span>
				</div>
				<button id="btn-mic" class="off">
					마이크 <span></span>
				</button>
				<button id="btn-tts">전자음성</button>
				<audio id="audio" src="audio/ending.mp3"></audio>
				
				
				

				<!--    <br><br>
		<div>
		  <button onclick="document.getElementById('audio').play()">버스커버스커</button>
		  <button onclick="document.getElementById('audio').pause()">음악중지</button>
		  <button onclick="document.getElementById('audio').volume+=0.2">볼륨업</button>
		  <button onclick="document.getElementById('audio').volume-=0.2">볼륨다운</button>
		</div>
		
		<br><br> -->
			</div>
		</div>
	</c:if>
      </div>
      <!-- Content -->

    </div>
    <!-- Mask & flexbox options-->

  </div>
  <!-- Full Page Intro -->
  
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
<script src="js/main.js"></script>


</body>
</html>