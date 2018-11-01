<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=8mvn37FxJvLefDim3jdV&submodules=geocoder"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Tset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/Tset1.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

</head>
<body>


<div class="content">
  <div class="content__container">
    <p class="content__container__text">
     	 자전거
    </p>
    
    <ul class="content__container__list">
      <li class="content__container__list__item">코스 !</li>
      <li class="content__container__list__item">유저 !</li>
      <li class="content__container__list__item">추천길 !</li>
      <li class="content__container__list__item">Hello !</li>
    </ul>
  </div>
</div>


<div class="wrap">
  <div class="mat-div">
    <label for="first-name" class="mat-label">코스이름</label>
    <input type="text" class="mat-input" id="first-name">
  </div>
  
    <div class="mat-div">
    <label for="first-name" class="mat-label">코스 설명</label>
    <textarea type="text" class="mat-input" id="last-name"> </textarea>
  </div>

    <div class="mat-div">
    <label for="address" class="mat-label">코스 소요 시간</label>
    <input type="number" class="mat-input" id="address">
  </div>
<!--     <button>Submit</button> -->
</div>





<script type="text/javascript">
$(".mat-input").focus(function(){
	  $(this).parent().addClass("is-active is-completed");
	});

	$(".mat-input").focusout(function(){
	  if($(this).val() === "")
	    $(this).parent().removeClass("is-completed");
	  $(this).parent().removeClass("is-active");
	})
</script>

</body>
</html>