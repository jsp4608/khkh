<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
     
<table style="width: 85%;">
	<colgroup>
		<col style="width:70px;"/>
		<col style="width:auto;"/>
		<col style="width:100px;"/>	
	</colgroup>


<thead>
	<tr>
		<th>순서</th> <th>제목</th> <th>작성자</th>
	</tr>
</thead>

<tbody>
	<c:if test="${empty meetlist }">
		<tr>
			<td colspan="3">개설된 모임이 없습니다.</td>
		</tr>
	</c:if>

	<c:forEach items="${meetlist }" var="meet" varStatus="vs">
	<tr>
		<td>${vs.count }</td>
	
		<td>
			<c:if test="${meet.del == 0 }">
				<a href="meetdetail.do?seq=${meet.seq}">
				${meet.location }
				</a>
			</c:if>
			<c:if test="${meet.del == 1 }">
				이 모임은 작성자에 의해 삭제 되었습니다
			</c:if>
		</td>
		
		<td>${meet.id }</td>
	</tr>
	</c:forEach>
</tbody>

</table>

<!-- <button type="button" id="_btnAdd">모임 만들기</button> -->
<a href="meetwrite.do">모임 만들기</a>

<script type="text/javascript">
$("#_btnAdd").click(function() {	
	alert('모임 만들기');	
	location.href="meetwrite.do";
});
</script>
