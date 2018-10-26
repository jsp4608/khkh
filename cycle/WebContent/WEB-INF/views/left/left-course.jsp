<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<fmt:requestEncoding value="utf-8"/> 
    
<!DOCTYPE html>
<html>
<head>
<style>
h4{text-align: center;}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="menu_table">
	
	<ul>
	<li>국토종주길</li>
	<a onclick="url_Certifi()" title="국토종주">국토종주란?</a>
	</ul>
	
	<ul style="width: 100%">
		<li  style="list-style: decimal-leading-zero;" class="Araba">
		<a href="#none" onclick="url_Araba()" title="아라뱃길">아라뱃길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;"  class="Araba">
		<a href="#none" onclick="url_Han()" title="한강">한강(서울)길</a>
		</li>
			
		<li style="list-style: decimal-leading-zero;" class="NorthHan">
		<a href="#none" onclick="url_NorthHan()" title="남한">남한강길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="Northbug">
		<a href="#none" onclick="url_Northbug()" title="북한">북한강길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="Thenew">
		<a href="#none" onclick="url_Thenew()" title="새재">새재자전거길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="Nakdon">
		<a href="#none" onclick="url_Nakdon()" title="낙동강">낙동강자전거길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="Geumgang">
		<a href="#none" onclick="url_Geumgang()" title="금강">금강자전거길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="Yeongsan">
		<a href="#none" onclick="url_Yeongsan()" title="연산강">연산강자전거길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="Seomjin">
		<a href="#none" onclick="url_Seomjin()" title="섬진강">섬진강자전거길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="ocheon">
		<a href="#none" onclick="url_ocheon()" title="오천길">오천자전거길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="EastCoast_Gangwon">
		<a href="#none" onclick="url_EastCoast_Gangwon()" title="동해안(강원)">동해안(강원)길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="EastCoast_Kyungbuk">
		<a href="#none" onclick="url_EastCoast_Kyungbuk()" title="동해안(경북)">동해안(경북)길</a>
		</li>
		
		<li style="list-style: decimal-leading-zero;" class="jeju_Fantasy">
		<a href="#none" onclick="url_jeju_Fantasy()" title="제주도">제주도길</a>
		</li>
		
		<br>
		<br>

		
		
		<li class="subtitle">동호회 자전거길</li>
		<li><a href="courseSuggest.do">코스 추천하기</a></li>
	</ul>
</div>



<script type="text/javascript">
function url_Certifi() {
	location.href = "Certifi.do";
}

function url_Araba() {
	location.href = "Araba.do";
}

function url_Han() {
	location.href = "Han.do";
}

function url_NorthHan() {
	location.href = "NorthHan.do";
}

function url_Northbug() {
	location.href = "Northbug.do";
}

function url_Thenew() {
	location.href = "Thenew.do";
}

function url_Nakdon() {
	location.href = "Nakdon.do";
}

function url_Geumgang() {
	location.href = "Geumgang.do";
}

function url_Yeongsan() {
	location.href = "Yeongsan.do";
}

function url_Seomjin() {
	location.href = "Seomjin.do";
}

function url_ocheon() {
	location.href = "ocheon.do";
}

function url_EastCoast_Gangwon() {
	location.href = "EastCoast_Gangwon.do";
}

function url_EastCoast_Kyungbuk() {
	location.href = "EastCoast_Kyungbuk.do";
}

function url_jeju_Fantasy() {
	location.href = "jeju_Fantasy.do";
}












</script>





</body>
</html>






