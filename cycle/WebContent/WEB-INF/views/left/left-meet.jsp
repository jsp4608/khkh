<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<ul>
	<li><a href="#none" onclick="url_meetpolllist()">리스트 뷰</a></li>
	
	<li><a href="#none" onclick="url_meetpollbbs()">게시판 뷰</a></li>
	
<!-- <li><a href="#none" onclick="url_meetpollwrite()">모임 글 쓰기</a></li> -->
	
	<li><a href="#none" onclick="url_meetpollwrite2()">모임 글 쓰기</a></li>
</ul>


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