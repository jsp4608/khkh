<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper"  >


		<ul class="sidebar-nav">
		
		<br>
		<br>
		<br>
			<li class="sidebar-brand"><a disabled>국토종주길</a></li>
			<li><a onclick="url_Certifi()" title="국토종주">국토종주란?</a></li>

			<li  class="Araba"><a
				href="#none" onclick="url_Araba()" title="아라뱃길">아라뱃길</a></li>

			<li  class="Araba"><a
				href="#none" onclick="url_Han()" title="한강">한강(서울)길</a></li>

			<li  class="NorthHan">
				<a href="#none" onclick="url_NorthHan()" title="남한">남한강길</a>
			</li>

			<li  class="Northbug">
				<a href="#none" onclick="url_Northbug()" title="북한">북한강길</a>
			</li>

			<li class="Thenew"><a
				href="#none" onclick="url_Thenew()" title="새재">새재자전거길</a></li>

			<li  class="Nakdon"><a
				href="#none" onclick="url_Nakdon()" title="낙동강">낙동강자전거길</a></li>

			<li  class="Geumgang">
				<a href="#none" onclick="url_Geumgang()" title="금강">금강자전거길</a>
			</li>

			<li  class="Yeongsan">
				<a href="#none" onclick="url_Yeongsan()" title="연산강">연산강자전거길</a>
			</li>

			<li class="Seomjin"><a
				href="#none" onclick="url_Seomjin()" title="섬진강">섬진강자전거길</a></li>

			<li  class="ocheon"><a
				href="#none" onclick="url_ocheon()" title="오천길">오천자전거길</a></li>

			<li 
				class="EastCoast_Gangwon"><a href="#none"
				onclick="url_EastCoast_Gangwon()" title="동해안(강원)">동해안(강원)길</a></li>

			<li 
				class="EastCoast_Kyungbuk"><a href="#none"
				onclick="url_EastCoast_Kyungbuk()" title="동해안(경북)">동해안(경북)길</a></li>

			<li  class="jeju_Fantasy">
				<a href="#none" onclick="url_jeju_Fantasy()" title="제주도">제주도길</a>
			</li>

			<br>




			<li class="sidebar-brand">동호회 자전거길</li>
			<c:forEach items="${list }" var="course">
				<li><a href="memberCourse.do?seq=${course.seq }">${course.title }</a></li>
			</c:forEach>


			<li><a href="courseSuggest.do">코스 추천하기</a></li>
			<br>
			<br>
			<br>
			
		</ul>

</div>
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




