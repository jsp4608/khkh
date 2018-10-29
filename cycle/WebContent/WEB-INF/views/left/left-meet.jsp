<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<ul>
	<li><a href="">달력 뷰</a></li>
	
	<li><a href="#none" onclick="url_meetpollwrite()">모임 글 쓰기(투표)</a></li>
	
	<li><a href="#none" onclick="url_meetpolllist()">리스트 뷰(투표)</a></li>
</ul>


<script type="text/javascript">
function url_meetpolllist() {
	location.href = "meetpolllist.do";
}
function url_meetpollwrite() {
	location.href = "makemeet.do";
}
</script>