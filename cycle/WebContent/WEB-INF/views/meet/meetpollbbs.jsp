<%@page import="cycle.arrow.DateUtil"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cycle.model.MeetPollDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel= "<%= request.getContextPath() %>/css/bootstrap.css">
<!-- 검색 카테고리를 유지 start -->
<%
String jpg = ".jpg";
%>

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

<style>
button[type=button]{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
button[type=button]:hover{
  background:#fff;
  color:#1AAB8A;
}
button[type=button]:before,button[type=button]:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
button[type=button]:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button[type=button]:hover:before,button[type=button]:hover:after{
  width:100%;
  transition:800ms ease all;
}
</style>

<!-- 검색 카테고리를 유지 end -->
<span style="float:right"><button type="button" id="_btnAdd" style="text-align: center;
 font-size: 13; width: 140px; height: 35px;">모임 만들기</button></span>
 
<form name="frmForm1" id="_frmFormSearch" method="post" action="">

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
	<td style="padding-left: 5px;"><input type="text" id="_s_keyword" name="s_keyword" value="${s_keyword}" style="width: 300px;"/></td>
	<td style="padding-left: 5px;"><button type="button" id="_btnSearch" style="font-size: 13; width: 80px; height: 26.5px;">검색</button></td>
</tr>
</table>

<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber}"/>						
<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?10:recordCountPerPage}"/>						

</form>

<table style="width: 85%;" class="table table-hover">
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


<script type="text/javascript">
$("#_btnAdd").click(function() {	
	alert('모임 만들기');	
	location.href="writemeet.do";
});

$("#_btnSearch").click(function() {
	//alert('search');						
	$("#_frmFormSearch").attr({ "target":"_self", "action":"meetpollbbs.do" }).submit();
});

function goPage(pageNumber) {	
	$("#_pageNumber").val(pageNumber) ;
	$("#_frmFormSearch").attr("target","_self").attr("action","meetpollbbs.do").submit();
}
</script>

