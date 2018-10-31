<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<form name="frmForm" id="_frmForm" method="post" action="meetupdate.do">

<table>

<input type="hidden" name="pollid" value="${meet.pollid }"/>
<%-- <input type="hidden" name="pollsubid" value="${pollsublist.pollsubid }"/> --%>
<%-- <input type="hidden" name="id" value="${login.id }"/> --%>
<input type="hidden" name="id" value="${login.id }"/>
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
		<td style="text-align: left;">${meet.polltotal }</td>
	</tr>
	<tr>
		<th>이미지</th>
		<c:if test="${meet.img ne null }">
		<td style="text-align: left;"><img id="" src="img/${meet.img }"  style="height: 200px; width: 200px"
			class="img-fluid" alt="Responsive image"></td>
		</c:if>
		
		<c:if test="${meet.img eq null }">
		<td style="text-align: left;"><img id="" src="img/road-2562568"  style="height: 200px; width: 200px"
			class="img-fluid" alt="Responsive image"></td>
		</c:if>
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
			<!-- <a href="#none" id="_btnUpdate">(로그인아이디가 같았을 시)모임수정</a> -->
			<!-- <a href="#none" id="_btnDel">(로그인아이디가 같았을 시)모임삭제</a> -->
			<button type="button"  id="_btnUpdate">모임수정</button>
			<button type="button"  id="_btnDel">모임삭제</button>
			<%-- </c:if> --%>
			<!-- <a href="#none" id="_btnJoin">모임참가</a> -->
			</c:if>
		</span>
		</td>
	</tr>
	
</tbody>
</table>

</form>
<form action="polling.do" method="post">

<input type="hidden" name="pollid" value="${meet.pollid }"/>
<input type="hidden" name="id" value="${login.id }"/>

<table>
<colgroup>
<col style="width: 200px"/>
<col style="width: auto;"/>
</colgroup>

<tr>
	<th>투표 문항수</th>
	<td style="text-align: left;">
	${meet.itemcount }개	
	</td>
</tr>

<tr>
	<th>투표 상세 문항</th>
	<td style="text-align: left;">
	
	<c:forEach items="${pollsublist }" var="psub" varStatus="vs">
	
		<!-- 번호:radio -->
		${vs.count }번:<input type="radio" name="pollsubid"
		${vs.count==1 ?"checked='checked'":"" } value="${psub.pollsubid }">
		
		<!-- 항목 명칭 -->
		<input type="text" size="60" readonly="readonly"
		name="answer" value="${psub.answer }">	
		
		<br>
		
	</c:forEach>	

	</td>
</tr>

<tr align="center">
	<td colspan="2">
		<input type="submit" value="투표하기">
	</td>
</tr>
</table>
</form>
<%-- 
<table style="width: auto" border="1" bordercolor="lightgray">
<tr>
	<td style="width: auto;">ㄴ</td>
	<td width="50">${meet.id }</td>
	<td width="350">내용</td>
	<td width="150">작성일</td>
	<td width="100"><button>수정</button></td>
	<td width="100"><button>삭제</button></td>
	<td width="100"><button>답글</button></td>
</tr>

<!-- <tr>
	<td>댓글이 달려있지 않습니다.</td>
</tr> -->
</table>

<form action="commentControl" method="post">
	<input type="hidden" name="id" value="id">
	<input type="hidden" name="command" value="insertcomment">
	<input type="hidden" name="ref" value="seq">
	<input type="hidden" name="parent" value="0">
	
	<table border="1" bordercolor="black">
			<td width="150">
				<div>
					<input type="text" name="id" value="id"
						readonly="readonly" style="text-align: center">
				</div>
			</td>

			<td width="550">
				<div>
					<input type="text" class="textarea" name="content">
				</div>
			</td>

			<td width="100">
				<div id="btn" style="text-align: center;">
					<input type="submit" value="댓글등록" style="text-align: center;">
				</div>
			</td>
		</table>
</form> --%>

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
								<span style="display: inline-block; font-weight: 700; margin-right: 5px;">${i.id }</span>
								<!-- 날짜 -->
								<span style="display: inline-block; font-size: 12px; color: #555">${i.wdate }</span>
								<hr style="border: none; border-bottom: 1px solid #aaa; width: 100%;">
								<p style="margin-top: 10px; word-wrap: break-word;">${i.content }</p>
			
								<div style="text-align: right;">
								<c:if test="${login.id eq i.id}">
									<%-- <a href="#none" id="_RepDel" value="${i.seq }">(로그인아이디가 같았을 시)댓글삭제</a> --%>	
									<%-- <button type="button" class="mainbut" onclick="changeReply(this)"
										value="${i.seq }">수정</button> --%>
									<button  type="button" value="${i.seq }" class="mainbut" onclick="delReply(this)">삭제</button>
								</c:if> 
								</div>
							</div>
						</td>
					</tr>
					</c:if>
					<c:if test="${i.del !=0}">
						<%-- <tr>
							<td colspan="3">
								<div
									style="text-align: left; border: 1px solid #aaa; padding: 20px; margin: 20px">
									<!-- 아이디 -->
									<span
										style="display: inline-block; font-weight: 700; margin-right: 5px;">${i.id }</span>
									<!-- 날짜 -->
									<span style="display: inline-block; font-size: 12px; color: #555">${i.wdate }</span>
									<hr
										style="border: none; border-bottom: 1px solid #aaa; width: 100%;">
									<p style="margin-top: 10px; word-wrap: break-word;">이 글은 삭제된 글입니다.
									</p>
								</div>
							</td>
						</tr> --%>
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
								<span style="display: inline-block; font-weight: 700; margin-right: 5px;"><%-- <%=reply.getId()%> --%>${login.id }</span>
								<!-- 날짜 -->
								<hr style="border: none; border-bottom: 1px solid #aaa; width: 100%;">
								<textarea rows="3" cols="130" style="margin-top: 10px; word-wrap: break-word;" name="content"></textarea>
								<div style="text-align: right; margin-top: 13px">
									<input type="submit" value="글쓰기">
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
