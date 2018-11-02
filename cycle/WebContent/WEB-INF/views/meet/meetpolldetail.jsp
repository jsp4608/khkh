<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="cycle.model.MeetPollDto" %>
<fmt:requestEncoding value="utf-8"/>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>


<style>
input[type=button]{
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
input[type=button]:hover{
  background:#fff;
  color:#1AAB8A;
}
input[type=button]:before,input[type=button]:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
input[type=button]:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
input[type=button]:hover:before,input[type=button]:hover:after{
  width:100%;
  transition:800ms ease all;
}

input[type=submit]{
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
input[type=submit]:hover{
  background:#fff;
  color:#1AAB8A;
}
input[type=submit]:before,input[type=submit]:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
input[type=submit]:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
input[type=submit]:hover:before,input[type=submit]:hover:after{
  width:100%;
  transition:800ms ease all;
}
</style>

<%

MeetPollDto dto = (MeetPollDto)request.getAttribute("meet");

java.util.Date format = dto.getWdate();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd-HH:mm");
String current = formatter.format(format);
%>

<h1>모임 Riding</h1>
<br><br>
<form name="frmForm" id="_frmForm" method="post" action="meetupdate.do">

<input type="hidden" name="pollid" value="${meet.pollid }"/>
<input type="hidden" name="id" value="${login.id }"/>

 		<div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>아이디</label>
            <input name="id" class="form-control input-sm"
            readonly="readonly" value='${meet.id }' style="width: 250px"/>
            <!--END TEXT INPUT FIELD-->
        </div>
		<div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>제목</label>
            <input name="title" class="form-control input-sm" 
            readonly="readonly" value='${meet.title }' style="width: 500px"/>
            <!--END TEXT INPUT FIELD-->
        </div>
        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>작성일</label>
            <input name="wdate" class="form-control input-sm" 
            readonly="readonly" value='<%=current %>' style="width: 500px"/>
            <!--END TEXT INPUT FIELD-->
        </div>
        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>지역</label>
            <input name="location" class="form-control input-sm" 
            readonly="readonly" value='${meet.location }' style="width: 500px"/>
            <!--END TEXT INPUT FIELD-->
        </div>
         <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>만날 날짜</label>
            <input name="sdate" class="form-control input-sm" 
            readonly="readonly" value='${meet.sdate }' style="width: 500px"/>
            <!--END TEXT INPUT FIELD-->
        </div>
        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>끝나는 날짜</label>
            <input name="edate" class="form-control input-sm" 
            readonly="readonly" value='${meet.edate }' style="width: 500px"/>
            <!--END TEXT INPUT FIELD-->
        </div>
        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>참가자수</label>
            <input name="polltotal" class="form-control input-sm" 
            readonly="readonly" value='${meet.polltotal }' style="width: 500px"/>
            <!--END TEXT INPUT FIELD-->
        </div>
         <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>이미지</label><br>
            <c:if test="${meet.img ne 'false' }">
	            <img id="" src="img/${meet.img }"  style="height: 300px; width: 400px"
				class="img-fluid" alt="Responsive image">
            </c:if>
            <c:if test="${meet.img eq 'false' }">
				<img id="" src="img/defalut.jpg"  style="height: 300px; width: 400px"
				class="img-fluid" alt="Responsive image">
			</c:if>
        </div>
		<div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>라이딩 세부 내용</label>
            <textarea  name='content' id="_content" readonly="readonly"
            class="form-control" rows="10" cols="50" style="width: 700px">${meet.content}</textarea>
        </div>

</form>
<form action="polling.do" method="post">

<input type="hidden" name="pollid" value="${meet.pollid }"/>
<input type="hidden" name="id" value="${login.id }"/>

	<div class="form-group">
	    <label>투표 문항수</label>
	    <input name="polltotal" class="form-control input-sm" 
	    readonly="readonly" value='${meet.itemcount } 개' style="width: 500px"/>
  	</div>
  	<div class="form-group">
	    <label>투표 상세 문항</label><br>
	</div>
	    <c:forEach items="${pollsublist }" var="psub" varStatus="vs">
		<!-- 번호:radio -->
		${vs.count }번   :  <input type="radio" name="pollsubid"
    	${vs.count==1 ?"checked='checked'":"" } value="${psub.pollsubid }">
		<!-- 항목 명칭 -->
	<div class="form-group">	
		<input type="text" size="60" readonly="readonly" class="form-control input-sm" 
		style="display: inline-block; width: 500px;"
		name="answer" value="${psub.answer }">	
		<br>
	</div>
	</c:forEach>	
  	<br><br>
	<c:if test="${meet.id eq login.id }">
	<input type="submit" value="투표하기"  style="display: inline-block; margin-right: 50px; border-radius: 4px;">
	<input type="button" value="모임 수정"  id="_btnUpdate"
        style="display: inline-block; margin-right: 50px; border-radius: 4px;">	
    <input type="button" value="모임 삭제"  id="_btnDel"
        style="display: inline-block; margin-right: 50px; border-radius: 4px;">	
	</c:if>
</form>

<br><br>
	
<div>
	<!--  작업중 -->
	<form action="frmForm" id="_form" method="post">
	
	<table class="table table-bordered" style="width: 1020px" align="center" id="replysection">
		<col width="150px">
		<col width="770px">
		<col width="100px">
		<c:if test="${replylist.size() != 0}">
			<c:forEach var="i" items="${replylist}">
			<input type="hidden" name="seq" value="${i.seq }">
				<c:if test="${i.del == 0}">
					<tr>
						<td colspan="3">
							<div
								style="text-align: left; border: 1px solid #aaa; padding: 20px; margin: 20px">
								<!-- 아이디 -->
								<span style="display: inline-block; font-size: 18px; margin-right: 5px;">${i.id }</span>
								<!-- 날짜 -->
								<span style="display: inline-block; font-size: 12px; color: #555">${i.wdate }</span>
								<hr style="border: none; border-bottom: 1px solid #aaa; width: 100%;">
								<p style="margin-top: 13px; word-wrap: break-word; font-size: 14px;">${i.content }</p>
			
								<div style="text-align: right;">
								<c:if test="${login.id eq i.id}">
									<button  type="button" value="${i.seq }" class="mainbut" onclick="delReply(this)" 
									style="width:60px; height: 30px; font-size: 13px;">삭제</button>
								</c:if> 
								</div>
							</div>
						</td>
					</tr>
					</c:if>
					<c:if test="${i.del !=0}">
					</c:if>
			</c:forEach>
		</c:if>
	</table>
	</form>
</div>

<form name="frmForm" id="_frmForm" method="post" action="insertreply.do">
	<input type="hidden" name="pollid" value="${meet.pollid }"/>
	<input type="hidden" name="id" value="${login.id }"/>
<div>
	
	<!--  작업중 -->
	<table class="table table-bordered" style="width: 1020px" align="center" id="replysection">
		<col width="150px">
		<col width="770px">
		<col width="100px">
					<tr>
						<td colspan="3">
							<div
								style="text-align: left; border: 1px solid #aaa; padding: 20px; margin: 20px">
								<!-- 아이디 -->
								<span style="display: inline-block; font-weight: 700; margin-right: 5px; font-size: 15px;">${login.id }</span>
								<!-- 날짜 -->
								<hr style="border: none; border-bottom: 1px solid #aaa; width: 100%; font-size: 12px;">
								<textarea rows="3" cols="150" style="margin-top: 10px; word-wrap: break-word; 
												font-size: 12px;" name="content"></textarea>
								<div style="text-align: right; margin-top: 13px">
									<input type="submit" value="글쓰기" style="width:120px; height: 30px; font-size: 13px; border-radius: 4px;">
								</div>
					</div>
					</td>
					</tr>
	</table>
</div>
</form>


<script type="text/javascript">
function delReply(element){
	alert(element.value);
	location = "repdelete.do?seq="+element.value+"&ref="+${meet.pollid};
}
function changeReply(element){
	alert(element.value);
	location = "repupdate.do?seq="+element.value+"&ref="+${meet.pollid};
}

$("#_btnUpdate").click(function() {	
	alert('모임수정');		
	$("#_frmForm").attr({ "target":"_self", "action":"meetpollupdate.do" }).submit();
});
$("#_btnDel").click(function() {	
	alert('모임삭제');
	$("#_frmForm").attr({ "target":"_self", "action":"meetdelete.do" }).submit();
});
$("#_btnJoin").click(function() {	
	alert('모임참가');
	$("#_frmForm").attr({ "target":"_self", "action":"meetjoin.do" }).submit();
});



</script>
