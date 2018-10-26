<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function () {
	
	for(i = 5;i <= 10; i++){
		$("#poll" + i ).hide();	// poll1, poll2, poll3, poll4
	}
	
});

function pollchage(me) {
	
	var num = me.options[me.selectedIndex].value;
	alert(me);
	
	for(i = 1;i <= 10; i++){
		$("#poll" + i).val("");
		$("#poll" + i).hide();
	}
	for(i = 1;i <= num; i++){
		$("#poll" + i).show();
	}		
}
</script>
<%-- 
<%
Calendar cal = Calendar.getInstance();

int tyear = cal.get(Calendar.YEAR);
int tmonth = cal.get(Calendar.MONTH) + 1;
int tday = cal.get(Calendar.DATE);
%>
 --%>
<!-- <form action="makemeetAf.do" method="post"> -->
<form name="frmForm" id="_frmForm" method="post" action="makemeetAf.do">

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
	<%-- 
	<tr>
	<th>라이딩 기간</th>
	<td style="text-align: left;">
		<select name="syear">
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
		
		<select name="sday">
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
	</tr>
	 --%>
	
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
	<!-- 
	<tr>
		<th>참가자수</th>
			<td style="text-align: left">
				<input type="text" name="memcnt" size="60"/>
			</td>
	</tr> 
	-->
	
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
	<th>투표 문항수</th>
	<td style="text-align: left">
		<select name="itemcount" onchange="pollchage(this)">
			<%
			for(int i=2; i <= 10; i++){
				%>	
				<option <%=(4+"").equals(i+"")?"selected='selected'":"" %> value="<%=i %>"><%=i %></option>
				<%
			}			
			%>		
		</select>개	
	</td>
	</tr>
	
	<tr>
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
	</tr>
	
	<tr>
		<td colspan="2" style="height:50px; text-align:center;">
			<span>					
	 			<!-- <a href="#none" id="_btnLogin" title="글쓰기">		
					<img src="image/bwrite.png" alt="로그인" />
				</a> -->
				<a href="#none" id="_btnLogin">모임 만들기</a>
			</span>
		</td>
	</tr>
	
	<!-- 
	<tr align="center">
		<td colspan="2">
			<input type="submit" value="모임 만들기">
		</td>
	</tr> 
	-->

</tbody>

</table>

</form>

<a href="./meetpolllist.do">모임 목록</a>

<script type="text/javascript">
	$('#_sdate').change(function() {
		var date = $('#_sdate').val();
		alert(date);
	});
	
	$('#_edate').change(function() {
		var date = $('#_edate').val();
		alert(date);
	});
	
	$("#_btnLogin").click(function() {	
		alert('글작성');	
		$("#_frmForm").attr({ "target":"_self", "action":"makemeetAf.do" }).submit();	
	});
</script>
