<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form name="frmForm" id="_frmForm" method="post" action="meetwriteAf.do">

<table>
<colgroup>
<col style="width:200px;"/>
<col style="width:auto;"/>
</colgroup>

<tbody>
	<tr>
		<th>아이디</th>
		<td style="text-align: left;">
			<input type="text" name="id" readonly="readonly"  <%-- value='${login.id}' --%> size="60"/>
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<td style="text-align: left;">
			<input type="text" name="title" size="60"/>
		</td>
	</tr>
	<tr>
		<th>지역</th>
		<td style="text-align: left;">
			<select name="location" style="width: 100px">
				<option value="서울" selected="selected">서울</option>
				<option value="경기도">경기도</option>
				<option value="충청도">충청도</option>
				<option value="전라도">전라도</option>
				<option value="경상도">경상도</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>만날 날짜</th>
		<td>
			<input type="date" name='sdate' id='_sdate' size="60"/>
		</td>
	</tr>
	<tr>
		<th>끝나는 날짜</th>
		<td>
			<input type="date" name='edate' id='_edate' size="60"/>
		</td>
	</tr>
	<!-- <tr>
		<th>참가자수</th>
			<td style="text-align: left">
				<input type="text" name="memcnt" size="60"/>
			</td>
	</tr> -->
	<tr>
		<th>이미지</th>
			<td></td>
	</tr>
	<tr>
		<th>내용</th>	
		<td style="text-align: left">
			<textarea rows="10" cols="50" name='content' id="_content"></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="height:50px; text-align:center;">
			<span>					
	 			<!-- <a href="#none" id="_btnLogin" title="글쓰기">		
					<img src="image/bwrite.png" alt="로그인" />
				</a> -->
				<input type="submit" value="모임 만들기">
			</span>
		</td>
	</tr>




</tbody>

</table>

</form>

<script type="text/javascript">
	$('_sdate').change(function() {
		var date = $('#_sdate').val();
		alert(date);
	});
	
	$('_edate').change(function() {
		var date = $('#_edate').val();
		alert(date);
	});
	
	$("#_btnLogin").click(function() {	
		alert('글작성');	
		$("#_frmForm").attr({ "target":"_self", "action":"bbswriteAf.do" }).submit();	
	});
</script>
