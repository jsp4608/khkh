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
<img src="img/road-2562568.jpg" class="img-fluid" alt="Responsive image">

 <!--Carousel Wrapper-->
 <!--  <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">

    Indicators
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-1z" data-slide-to="1"></li>
      <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    /.Indicators

    Slides
    <div class="carousel-inner" role="listbox">

      First slide
      <div class="carousel-item active">
        <div class="view">

          Video source
          <video class="video-intro" autoplay loop muted>
            <source src="https://mdbootstrap.com/img/video/city.mp4" type="video/mp4" >
          </video>

          Mask & flexbox options
          <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

           

          </div>
          Mask & flexbox options

        </div>
      </div>
      /First slide

      Second slide
      <div class="carousel-item">
        <div class="view">

          Video source
          <video class="video-intro" autoplay loop muted>
              <source src="https://mdbootstrap.com/img/video/forest.mp4" type="video/mp4">
          </video>

          Mask & flexbox options
          <div class="mask rgba-black-light d-flex justify-content-center align-items-center">


          </div>
          Mask & flexbox options

        </div>
      </div>
      /Second slide

      Third slide
      <div class="carousel-item">
        <div class="view">

          Video source
          <video class="video-intro" autoplay loop muted>
              <source src="https://mdbootstrap.com/img/video/Tropical.mp4" type="video/mp4">
          </video>

          Mask & flexbox options
          <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

           
          </div>
          Mask & flexbox options

        </div>
      </div>
      /Third slide

    </div>
    /.Slides

    Controls
    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    /.Controls

  </div> -->
  <!--/.Carousel Wrapper-->
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
				<button id="btn-tts">Text to speech</button>
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



<script src="js/main.js"></script>


</body>
</html>