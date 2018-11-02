<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
    
<!DOCTYPE html>
<html>
<head>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<style type="text/css">
:root {
  --progress-bar-height: 4px;
  --progress-bar-color: gainsboro;
  --progress-bar-value-color: dodgerblue;
  --progress-bar-value: 20%;
}

article {
  position: relative;
  padding: 24px;
  width: 100%;
  max-width: 700px;
  margin: 60px auto;
}

.article-title {
  position: sticky;
  top: 0;
  padding-bottom: 24px;  
}

h1 { 
  margin-bottom: 0;
  padding: 18px 40px 18px 0;
  font-size: 1.8rem;
  background-color: white;
}

img {
  width: 100%;
  margin-bottom: 18px;
}

.progress-wrapper {
  position: relative;
}

.progress-label {
  position: absolute;
  right: 0; bottom: 0;
  font-size: 14px;
}

progress {
  appearance: none;
  position: absolute;
  width: 100%;
  height: var(--progress-bar-height);
  background-color: var(--progress-bar-color);
  border: none;
  
  &::-moz-progress-bar {
    background-color: var(--progress-bar-value-color);
  }
  
  &::-webkit-progress-bar {
    background-color: var(--progress-bar-color);
  }
  
  &::-webkit-progress-value {
    background-color: var(--progress-bar-value-color);
  }
  
  &::-ms-fill {
    background-color: var(--progress-bar-value-color);
  }
}
</style>
</head>
<body>


<article>
  <div class="article-title">
    <h1>국토종주 인증제</h1>
    <div class="progress-wrapper">
      <div class="progress-label"></div>
      <progress></progress>
    </div><img src="./img/KakaoTalk_20181102_145406187.png"/>
  </div><img src="./img/KakaoTalk_20181102_145406651.png"/>
</article>



<script type="text/javascript">
$(document).ready(function() {
	  const win = $(window);
	  const doc = $(document);
	  const progressBar = $('progress');
	  const progressLabel = $('.progress-label');
	  const setValue = () => win.scrollTop();
	  const setMax = () => doc.height() - win.height();
	  const setPercent = () => Math.round(win.scrollTop() / (doc.height() - win.height()) * 100);
	  
	  progressLabel.text(setPercent() + '%');
	  progressBar.attr({ value: setValue(), max: setMax() });

	  doc.on('scroll', () => {
	    progressLabel.text(setPercent() + '%');
	    progressBar.attr({ value: setValue() });
	  });
	  
	  win.on('resize', () => {
	    progressLabel.text(setPercent() + '%');
	    progressBar.attr({ value: setValue(), max: setMax() });
	  })
	});

</script>

</body>
</html>






