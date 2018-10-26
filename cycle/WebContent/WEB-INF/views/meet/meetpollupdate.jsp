<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>



<%
	Calendar cal = Calendar.getInstance();

	int tyear = cal.get(Calendar.YEAR);
	int tmonth = cal.get(Calendar.MONTH) + 1;
	int tday = cal.get(Calendar.DATE);

	Object dto = request.getAttribute("meet");
	// Object list = request.getAttribute("list");
	
%>

<script type="text/javascript">
	$(document).ready(function() {

		for (i = ${list.size() +1}; i <= 10; i++) {
			$("#poll" + i).hide(); // poll1, poll2, poll3, poll4
		};

	});

	function pollchage(me) {

		var num = me.options[me.selectedIndex].value;
		alert(num);

		for (i = 1; i <= 10; i++) {
			$("#poll" + i).val("");
			$("#poll" + i).hide();
		}
		for (i = 1; i <= num; i++) {
			$("#poll" + i).show();
		}
	}
</script>

<form name="frmForm" id="_frmForm" method="post"
	action="meetupdateAf.do">
	<input type="hidden" name="orinum" value="${meet.itemcount}">
	<%-- <input type="hidden" name="pollsubid" value="${list.pollsubid}"> --%>
	<table>
		<input type="hidden" name="pollid" value="${meet.pollid}" />

		<colgroup>
			<col style="width: 200px;" />
			<col style="width: auto;" />
		</colgroup>

		<tbody>
			<tr>
				<th>아이디</th>
				<td style="text-align: left">${meet.id }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td style="text-align: left"><input size="60" type="text"
					name="title" value='${meet.title}'></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td style="text-align: left;">${meet.wdate }</td>
			</tr>
			<tr>
				<th>지역</th>
				<td style="text-align: left;"><select name="location"
					id="location" style="width: 100px">
						<option value="서울">서울</option>
						<option value="경기도">경기도</option>
						<option value="충청도">충청도</option>
						<option value="전라도">전라도</option>
						<option value="경상도">경상도</option>
				</select></td>
			</tr>
			<%-- 
	<tr>
	<th>라이딩 기간</th>
	<td style="text-align: left;">
		<select name="syear" id="syear">
			<%
			for(int i = tyear;i < tyear + 6; i++){ // 올해부터 +6년까지 
				%>	
				<option <%=(tyear+"").equals(i+"")?"selected='selected'":"" %> value="<%=i%>"><%=i%></option>
				<%
			}			
			%>		
		</select>년
		
		<select name="smonth">
			<%
			for(int i = 1;i <= 12; i++){  
				%>	
				<option <%=(tmonth+"").equals(i+"")?"selected='selected'":"" %> value="<%=i%>"><%=i%></option>
				<%
			}			
			%>		
		</select>월
		
		<select name="sday" id="sday">
			<%
			for(int i = 1;i <= cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++){  
				%>	
				<option <%=(tday+"").equals(i+"")?"selected='selected'":"" %> value="<%=i%>"><%=i%></option>
				<%
			}			
			%>		
		</select>일
		~
		<select name="eyear">
			<%
			for(int i = tyear;i < tyear + 6; i++){ // 올해부터 +6년까지 
				%>	
				<option <%=(tyear+"").equals(i+"")?"selected='selected'":"" %> value="<%=i%>"><%=i%></option>
				<%
			}			
			%>		
		</select>년
		
		<select name="emonth">
			<%
			for(int i = 1;i <= 12; i++){  
				%>	
				<option <%=(tmonth+"").equals(i+"")?"selected='selected'":"" %> value="<%=i%>"><%=i%></option>
				<%
			}			
			%>		
		</select>월
		
		<select name="eday">
			<%
			for(int i = 1;i <= cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++){  
				%>	
				<option <%=(tday+"").equals(i+"")?"selected='selected'":"" %> value="<%=i%>"><%=i%></option>
				<%
			}			
			%>		
		</select>일				
	</td>
	</tr> --%>

			<tr>
				<th>만날 날짜</th>
				<td><input type="date" name='sdate' id='_sdate' size="60"
					value="${meet.sdate }" /></td>
			</tr>
			<tr>
				<th>끝나는 날짜</th>
				<td><input type="date" name='edate' id='_edate' size="60"
					value="${meet.edate}" /></td>
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
						name='content' id="_content">${meet.content}</textarea></td>
			</tr>

			<tr>
				<th>투표 문항수</th>
				<td style="text-align: left"><select name="itemcount"
					id="itemcount" onchange="pollchage(this)">
						<%
							for (int i = 2; i <= 10; i++) {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
							}
						%>
				</select>개</td>

			</tr>
			<%-- <tr>
		<th>투표 상세문항</th>
		<td style="text-align: left">
			<%
			for(int i = 1;i <= 10; i++){
				%>	
				<div id='poll<%=i%>'>
					<%=(i+"") %>번:<input type="text" name="poll<%=i %>" size="60"><br> 		
				</div>			
				<%
			}		
			%>
		</td>
	</tr> --%>

			<tr>
				<th>투표 상세 문항</th>
				<td style="text-align: left;">
				<c:forEach var="item" items="${list}" varStatus="status">
								<div id='poll${status.count}'>
									<!-- 번호:radio -->
									${status.count}번:<input type="radio" name="pollsubid"
										${status.count==1 ?"checked='checked'":"" }
										 value="${item.pollsubid}" >

									<!-- 항목 명칭 -->
									<input type="text" size="60" name="poll${status.count }"
										value="${item.answer}"> <br>	
									<input type="hidden"  name="num${status.count }" value="${item.pollsubid}">
								</div>
					</c:forEach>
					
					<c:forEach var="i" begin="${list.size() +1 }" end="10" step="1">
								<div id='poll${i}'>
									<!-- 번호:radio -->
									${i}번:<input type="radio" name="pollsubid" >

									<!-- 항목 명칭 -->
									<input type="text" size="60" name="poll${i}"> <br>
								</div>
					</c:forEach>
					</td>
			</tr>

			<tr>
				<td colspan="2" style="height: 50px; text-align: center;"><span>
						<a href="#none" id="_btnUpdate">모임수정</a> <!-- <a href="#none" id="_btnUpdate" title="글수정하기"><img src="image/bupdate.png" alt="수정하기" /></a> -->
				</span></td>
			</tr>

		</tbody>

	</table>

</form>

<a href="./meetpolllist.do">모임 목록</a>

<script type="text/javascript">
	$("#_btnUpdate").click(function() {
		alert('모임수정');
		//	submitContents($("#_frmForm"));
		$("#_frmForm").attr({
			"target" : "_self",
			"action" : "meetupdateAf.do"
		}).submit();
	});

	$('_sdate').change(function() {
		var date = $('#_sdate').val();
		alert(date);
	});

	$('_edate').change(function() {
		var date = $('#_edate').val();
		alert(date);
	});

	$('#location').find('option[value="${meet.location}"]').attr('selected',
			'selected');

	$('#itemcount').find('option[value="${meet.itemcount}"]').attr('selected',
			'selected');

	/* $('#_sdate').find('option[value="${meet.sdate}"]').attr('selected','selected'); */
</script>
