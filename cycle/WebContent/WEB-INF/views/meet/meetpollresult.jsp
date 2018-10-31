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
			<button type="button"  id="_btnUpdate">모임수정</button>
			<button type="button"  id="_btnDel">모임삭제</button>
			</c:if>
			<c:if test="${meet.id ne login.id }">
			<!-- <a href="#none" id="_btnJoin">모임참가</a> -->
			</c:if>
		</span>
		</td>
	</tr>
	
</tbody>
</table>

</form>

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
	
	<table>
	<col width="50"><col width="500">

	<tr>
		<th>${vs.count }번</th>
		<td style="text-align: left">
			<input type="text" size="60" readonly="readonly"
				name="answer" value="${psub.answer }">
		</td>
	</tr>	

	</table>
		
	</c:forEach>
		
	</td>
</tr>

<tr>
	<th>투표 결과(전체 투표자: ${meet.polltotal }명)</th>
	<td>
		<jsp:useBean id="vbean" class="cycle.model.VoteBean"/> 
		
		<c:forEach items="${pollsublist }" var="psub" varStatus="vs">
		
		<jsp:setProperty property="acount" name="vbean" value="${psub.account }"/>	
		<jsp:setProperty property="total" name="vbean" value="${meet.polltotal }"/> 
		<%-- <jsp:setProperty property="id" name="vbean" value="aaa"/>  --%>
		
		<table class="list_table" style="width: 95%">
		<col width="50"><col width="500">
		
		<tr>
			<th>${vs.count }번</th>	
			<td style="text-align: left;">
				<jsp:getProperty property="makeBar" name="vbean"/>
			</td>
		</tr>			
		</table>		
		</c:forEach>
	</td>
</tr>

</table>

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
$("#_btnPollDel").click(function() {	
	alert('투표취소');
	$("#_frmForm").attr({ "target":"_self", "action":"polldelete.do" }).submit();
});
</script>
