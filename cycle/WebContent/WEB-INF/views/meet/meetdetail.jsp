<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
    
<form name="frmForm" id="_frmForm" method="post" action="meetupdate.do">

<table>

<input type="hidden" name="seq" value="${meet.seq }"/>
<colgroup>
<col style="width: 200px"/>
<col style="width: auto;"/>
</colgroup>

<tbody>
	<tr>
		<th>아이디</th>
		<td style="text-align: left">${meet.id }</td>
	</tr>
	<tr>
		<th>제목</th>
		<td style="text-align: left;">${meet.title }</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td style="text-align: left;">${meet.wdate }</td>
	</tr>
	<tr>
		<th>지역</th>
		<td style="text-align: left;">${meet.location }</td>
	</tr>
	<tr>
		<th>만날 날짜</th>
		<td style="text-align: left;">${meet.sdate }</td>
	</tr>
	<tr>
		<th>끝나는 날짜</th>
		<td style="text-align: left;">${meet.edate }</td>
	</tr>
	<tr>
		<th>참가자수</th>
		<td style="text-align: left;">${meet.memcnt }</td>
	</tr>
	<tr>
		<th>이미지</th>
		<td style="text-align: left;">${meet.img }</td>
	</tr>
	<tr>
		<th>내용</th>
		<td style="text-align: left"><textarea rows="10" cols="50" 
		name='content' id="_content" readonly="readonly">${meet.content}</textarea></td>
	</tr>
	<tr>
		<td colspan="2" style="height: 50px; text-align: center;">
		<span>
			<c:if test="${meet.id eq login.id }">
			<a href="#none" id="_btnUpdate">모임수정</a>
			<a href="#none" id="_btnDel">모임삭제</a>			
			</c:if>
			<a href="#none" id="_btnJoin">모임참가</a>
		</span>
		</td>
	</tr>
	
</tbody>
</table>

</form>

<script type="text/javascript">

$("#_btnUpdate").click(function() {	
	alert('모임수정');		
	$("#_frmForm").attr({ "target":"_self", "action":"meetupdate.do" }).submit();
});
$("#_btnDel").click(function() {	
	alert('모임삭제');
	$("#_frmForm").attr({ "target":"_self", "action":"meetdelete.do" }).submit();
});
$("#_btnDel").click(function() {	
	alert('모임참가');
	$("#_frmForm").attr({ "target":"_self", "action":"meetjoin.do" }).submit();
});

</script>
