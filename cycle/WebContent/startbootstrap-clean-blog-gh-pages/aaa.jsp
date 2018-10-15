<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>index</title>

<!-- Slider CSS -->
<link href="css/Slider.css" rel="stylesheet">

<!-- 동영상 밑 img CSS -->
<link href="css/img.css" rel="stylesheet">

<!-- 자동 슬라이더 위 box CSS -->
<link href="css/tobutton.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="css/clean-blog.min.css" rel="stylesheet">


<!-- youtube 동영상  -->
<style type="text/css">
.embed-responsive-16by9::before {
	padding-top: 40%;
}
</style>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="index.html">Home</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="about.html">자전거 코스</a></li>
					<li class="nav-item"><a class="nav-link" href="about.html">모임</a></li>
					<li class="nav-item"><a class="nav-link" href="post.html">정보</a></li>
					<li class="nav-item"><a class="nav-link" href="post.html">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="post.html">내정보</a></li>
				</ul>
			</div>
		</div>
	</nav>

<br>
<br>

	<!-- Page 동영상 -->
	<div class="embed-responsive embed-responsive-16by9">
	<iframe src="https://www.youtube.com/embed/Uh6jQcIue_A?&autoplay=1&amp;vq=hd720&showinfo=0&autoplay=1&loop=1;playlist=Uh6jQcIue_A" frameborder="1" allow="autoplay; encrypted-media" allowfullscreen></iframe>
	</div>

	<br>

	<!-- 동영상 밑  사진 -->
	<div id="masonry">
		<img src="img/people-2567245.jpg"> 
		<img src="img/people-2597767.jpg"> 
		<img src="img/person-1281634.jpg">
		<img src="img/cycling-1555983.jpg"> 
		<img src="img/cyclist-3266644.jpg"> 
		<img src="img/bicycle-1210062.jpg">
	</div>


	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<div class="post-preview">
					<a href="post.html">
						<h2 class="post-title">It guides the bicycle route along the
							national road. Thank you for your interest.</h2>
						<h3 class="post-subtitle">Problems look mighty small from 150
							miles up</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#">Start Bootstrap</a> on September 24, 2018
					</p>
				</div>
				<hr>
				<div class="post-preview">
					<a href="post.html">
						<h2 class="post-title">I believe every human has a finite
							number of heartbeats. I don't intend to waste any of mine.</h2>
					</a>
					<p class="post-meta">
						Posted by <a href="#">Start Bootstrap</a> on September 18, 2018
					</p>
				</div>
				<hr>
				<div class="post-preview">
					<a href="post.html">
						<h2 class="post-title">Science has not yet mastered prophecy
						</h2>
						<h3 class="post-subtitle">We predict too much for the next
							year and yet far too little for the next ten.</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#">Start Bootstrap</a> on August 24, 2018
					</p>
				</div>
				<hr>
				<div class="post-preview">
					<a href="post.html">
						<h2 class="post-title">Failure is not an option</h2>
						<h3 class="post-subtitle">Many say exploration is part of our
							destiny, but it’s actually our duty to future generations.</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#">Start Bootstrap</a> on July 8, 2018
					</p>
				</div>
				<hr>
				Pager
				<div class="clearfix">
					<a class="btn btn-primary float-right" href="#">Older Posts
						&rarr;</a>
				</div>
			</div>
		</div>
	</div>

	<br>
	
	
			<!-- 옆으로 옴기고싶은디 -->
		<div class="content">
			<div class="grid" >
				<figure class="effect-ming">
					<img src="https://tympanus.net/Development/HoverEffectIdeas/img/9.jpg" alt="img09" />
					<figcaption>
						<h2>
							Funny <span>Ming</span>
						</h2>
						<p>Ming sits in the corner the whole day. She's into crochet.</p>
						<a href="#">View more</a>
					</figcaption>
				</figure>
				<figure class="effect-ming">
					<img
						src="https://tympanus.net/Development/HoverEffectIdeas/img/8.jpg"
						alt="img08" />
					<figcaption>
						<h2>
							Funny <span>Ming</span>
						</h2>
						<p>Ming sits in the corner the whole day. She's into crochet.</p>
						<a href="#">View more</a>
					</figcaption>
				</figure>
			</div>
		</div>
	
	
	<br>
	<!-- 자동 슬라이더 -->
	<div id="captioned-gallery">
		<figure class="slider">
			<figure>
				<img src="img/people-2567245.jpg" alt>
				<figcaption>Hobbiton, New Zealand</figcaption>
			</figure>
			<figure>
				<img src="img/road-2562568.jpg" alt>
				<figcaption>Wanaka, New Zealand</figcaption>
			</figure>
			<figure>
				<img src="img/road-823199.jpg" alt>
				<figcaption>Utah, United States</figcaption>
			</figure>
			<figure>
				<img src="img/cyclist-3266644.jpg" alt>
				<figcaption>Bryce Canyon, Utah, United States</figcaption>
			</figure>
			<figure>
				<img src="img/cycling-1555983.jpg" alt>
				<figcaption>Hobbiton, New Zealand</figcaption>
			</figure>
		</figure>
	</div>

	<hr>
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="https://www.twitch.tv/">
								<span class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a
							href="https://ko-kr.facebook.com/"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="https://github.com/">
								<span class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Cycle FinalProject &copy;
						KH정보교육원 2018</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/clean-blog.min.js"></script>


</body>

</html>