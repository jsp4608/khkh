<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<div id="wrapper">

	<!-- Sidebar -->
	<div id="sidebar-wrapper">
		<ul class="sidebar-nav">
		<br>
		<br>
		<br>
			<li><a href="#none" onclick="url_meetpolllist()">모임
					리스트(갤러리형)</a></li>
			<li><a href="#none" onclick="url_meetpolllist()">모임
					리스트(게시판형)</a></li>


			<li><a href="#none" onclick="url_meetpollwrite()">모임 글 쓰기</a></li>

		</ul>
	</div>
	</div>



	<script type="text/javascript">
		function url_meetpolllist() {
			location.href = "meetpolllist.do";
		}
		function url_meetpollwrite() {
			location.href = "makemeet.do";
		}
	</script>