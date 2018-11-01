<%@page import="cycle.arrow.DateUtil"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cycle.model.MeetPollDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

<!-- 검색 카테고리를 유지 start -->
<%
String category = (String)request.getAttribute("s_category");
if(category == null) category = "";
%>

<%
List<MeetPollDto> plists = new ArrayList<MeetPollDto>();
Object Oflist = request.getAttribute("meetlist");
if(Oflist != null){
	plists = (List<MeetPollDto>)Oflist;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fucking</title>
</head>
<body>
<script type="text/javascript">
var str='<%=category %>';
$(document).ready(function(){	
	document.frmForm1.s_category.value = str;
	
	// text에 문자를 입력하지 않았을 경우, 초기화 해준다.
	if($("#_s_keyword").val().trim() == ""){
		document.frmForm1.s_category.value = "";
	}	
}); 
</script> 
<!-- 검색 카테고리를 유지 end -->

<form name="frmForm1" id="_frmFormSearch" method="post" action="">

<!-- 사용자 -->
<%-- <c:if test="${login.auth eq '3' }"> --%>

<%-- <table class="list_table" style="width: 95%">
<col width="50"><col width="50"><col width="300"><col width="300">
<col width="100"><col width="100"><col width="50">
<col width="50"><col width="100">

<tr>
	<th>번호</th><th>아이디</th><th>제목(투표전)</th><th>제목(투표후)</th>
	<th>시작일</th><th>종료일</th><th>보기수</th>
	<th>투표수</th><th>등록일</th>
</tr>

<%
for(int i = 0;i < plists.size(); i++){
	MeetPollDto poll = plists.get(i);
	%>
	
	<tr>
		<td><%=i+1 %></td>
		<td> </td>
		
		<%
		boolean isS = poll.isVote();
		if(isS || DateUtil.isEnd(poll.getEdate())){	// 투표를 했거나 투표기한이 지났을 경우
			%>
			<td>[마감]<%=poll.getTitle() %></td>
			<%
		}else{	// 투표가 가능함
			%>
			<td><a href="./meetpolldetail.do?pollid=<%=poll.getPollid() %>"><%=poll.getTitle() %></a></td>			
			<%
		}		
		%>
		
		<td><a href="./meetpolldetail.do?pollid=<%=poll.getPollid() %>"><%=poll.getTitle() %></a></td>
		<td><a href="./pollresult.do?pollid=<%=poll.getPollid() %>"><%=poll.getTitle() %></a></td>
		
		<td><%=poll.getSdate() %> </td>
		<td><%=poll.getEdate() %> </td>
		<td><%=poll.getItemcount() %></td>
		<td><%=poll.getPolltotal() %></td>
		<td><%=poll.getWdate() %></td>	
	</tr>	
	
	<%
}
%>	
</table> --%>

<%-- </c:if> --%>
			
<table style="margin-left:auto; margin-right:auto; margin-top:3px; margin-bottom:3px; border:0; padding:0;">
<tr>
	<td>검색 : </td>
	<td style="padding-left:5px;">
		<select id="_s_category" name="s_category">
			<option value="" selected="selected">선택</option>
			<option value="title">제목</option>
			<option value="contents">내용</option>								
		</select>
	</td>
	<td style="padding-left:5px;"><input type="text" id="_s_keyword" name="s_keyword" value="${s_keyword}"/></td>
	<td style="padding-left:5px;"><button type="button" id="_btnSearch"> 검색 </button></td>
</tr>
</table>

<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber}"/>						
<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?10:recordCountPerPage}"/>						

</form>

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
				<a href="meetpolldetail.do?pollid=${meet.pollid}">
				${meet.title }
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

<!-- 페이징 처리 -->
<div id="paging_wrap">
<jsp:include page="/WEB-INF/views/common/paging.jsp" flush="false">
	<jsp:param value="${pageNumber }" name="pageNumber"/>
	<jsp:param value="${pageCountPerScreen }" name="pageCountPerScreen"/>
	<jsp:param value="${recordCountPerPage }" name="recordCountPerPage"/>
	<jsp:param value="${totalRecordCount }" name="totalRecordCount"/>
</jsp:include>
</div>

<!--  -->

<button type="button" id="_btnAdd">모임 만들기</button>
<!-- <a href="meetwrite.do">모임 만들기</a> -->

<script type="text/javascript">
$("#_btnAdd").click(function() {	
	alert('모임 만들기');	
	location.href="makemeet.do";
});

$("#_btnSearch").click(function() {
	//alert('search');						
	$("#_frmFormSearch").attr({ "target":"_self", "action":"meetpolllist.do" }).submit();
});

function goPage(pageNumber) {	
	$("#_pageNumber").val(pageNumber) ;
	$("#_frmFormSearch").attr("target","_self").attr("action","meetpolllist.do").submit();
}
</script>




</body>
</html>