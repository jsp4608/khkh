<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<div id="wrapper">

	<!-- Sidebar -->
	<div id="sidebar-wrapper">
		<ul class="sidebar-nav">
		<br>
		<br>
		<br>
			 <li><a href="#none" onclick="url_meetpolllist()">리스트 뷰</a></li>
   
  			 <li><a href="#none" onclick="url_meetpollbbs()">게시판 뷰</a></li>

			 <li><a href="#none" onclick="url_meetpollwrite2()">모임 글 쓰기</a></li>

		</ul>
	</div>
	</div>



	<script type="text/javascript">
	function url_meetpolllist() {
		   location.href = "meetpolllist.do";
		}
		function url_meetpollbbs() {
		   location.href = "meetpollbbs.do";
		}
		function url_meetpollwrite() {
		   location.href = "makemeet.do";
		}
		function url_meetpollwrite2() {
		   location.href = "writemeet.do";
		}
	</script>