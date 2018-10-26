<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<ul>
	<li><a href="#none" onclick="url_meetlist()">리스트 뷰</a></li>
	
	<li><a href="">달력 뷰</a></li>

	<li><a href="#none" onclick="url_meetwrite()">모임 글 쓰기</a></li>

</ul>


<script type="text/javascript">
function url_meetlist() {
	location.href = "meetlist.do";
}
function url_meetwrite() {
	location.href = "meetwrite.do";
}
</script>