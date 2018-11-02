<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="cycle.model.MeetPollDto" %>
<fmt:requestEncoding value="utf-8" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>


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
	Calendar cal = Calendar.getInstance();

	int tyear = cal.get(Calendar.YEAR);
	int tmonth = cal.get(Calendar.MONTH) + 1;
	int tday = cal.get(Calendar.DATE);

	MeetPollDto dto = (MeetPollDto)request.getAttribute("meet");
	// Object list = request.getAttribute("list");
	
	java.util.Date format = dto.getWdate();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd-HH:mm");
	String current = formatter.format(format);
	
%>

<script type="text/javascript">
	$(document).ready(function() {

		for (i = ${list.size() +1}; i <= 10; i++) {
			$("#poll" + i).hide(); // poll1, poll2, poll3, poll4
			
			$("#pollinput" +i ).removeAttr( "required" );
		};

	});

	function pollchage(me) {

		var num = me.options[me.selectedIndex].value;

		for (i = 1; i <= 10; i++) {
			$("#poll" + i).val("");
			$("#poll" + i).hide();
			$("#pollinput" +i ).removeAttr( "required" );
		}
		for (i = 1; i <= num; i++) {
			$("#poll" + i).show();
			$("#pollinput" +i).attr("required", "required");
		}
	}
	
	$('#_sdate').change(function() {
		var date = $('#_sdate').val();
		alert(date);
	});

	$(function(){
	    $('[type="date"]').prop('min', function(){
	        return new Date().toJSON().split('T')[0];
	    });
	});

	$('#_edate').change(function() {
		var date = $('#_edate').val();
		alert(date);
	});
</script>

<h1>모임 수정</h1>
<br><br>
<form name="frmForm" id="_frmForm" method="post"
	action="meetupdateAf.do">
	<input type="hidden" name="orinum" value="${meet.itemcount}">
	<input type="hidden" name="pollid" value="${meet.pollid}" />

		<div class="form-group">
            <label>아이디<sup>*</sup></label>
            <input name="id" class="form-control input-sm"
            autocomplete="off" readonly="readonly" value='${login.id}' style="width: 250px"/>
        </div>
        <div class="form-group">
            <label>제목<sup>*</sup></label>
            <input name="title" class="form-control input-sm" value='${meet.title}' autocomplete="off"
            style="width: 500px"/>
        </div>
		<div class="form-group">
            <label>작성일</label>
            <input name="title" class="form-control input-sm" value='<%=current %>' autocomplete="off"
            style="width: 500px" readonly="readonly"/>
        </div>
		<div class="form-group">
            <!--START OF A DROP DOWN LIST-->
            <label>지역<sup>*</sup></label>
            <select class="form-control input-sm" name="location" style="width: 500px"/> 
                <option value="서울" selected="selected">서울</option>
				<option value="경기도">경기도</option>
				<option value="충청도">충청도</option>
				<option value="전라도">전라도</option>
				<option value="경상도">경상도</option>                                 
            </select>
        </div>
        <div class="form-group">
            <label>라이딩 시작 날짜<sup>*</sup></label>
            <input type="date" class="form-control input-sm" name='sdate' id='_sdate'
             autocomplete="off" style="width: 500px" value="${meet.sdate}"/>
        </div>
        <div class="form-group">
            <label>라이딩 종료 날짜<sup>*</sup></label>
            <input type="date" class="form-control input-sm" name='edate' id='_edate'
             autocomplete="off" style="width: 500px" value="${meet.edate}"/>
        </div>
		<div class="form-group">
            <!--START OF A FILE UPLOAD-->
            <label>이미지 업로드</label><br>
            <c:if test="${meet.img ne 'false' }">
	            <img id="meetImg" src="${meet.img }" style="height: 200px; width: 200px"
				class="img-fluid" alt="Responsive image"><br>
	            <input type="file" class="form-control" id="uploadImg" name="uploadImg" style="width: 250px; height: 40px; margin-top: 6px;"/>
            </c:if>
            
            <c:if test="${meet.img eq 'false' }">
	            <img id="meetImg" src="img/defalut.jpg" style="height: 200px; width: 200px"
				class="img-fluid" alt="Responsive image"><br>
	            <input type="file" class="form-control" id="uploadImg" name="uploadImg" style="width: 250px; height: 40px; margin-top: 6px;"/>
            </c:if>
           
            <!--END OF FILE UPLOAD-->
        </div>
        <div class="form-group">
            <label>참가자수</label>
            <input name="title" class="form-control input-sm" value='${meet.memcnt }' autocomplete="off"
            style="width: 500px" readonly="readonly"/>
        </div>
		<div class="form-group">
            <label>라이딩 세부 내용<sup>*</sup></label>
            <textarea  name='content' id="_content"
            class="form-control" rows="10" cols="50" style="width: 700px">${meet.content }</textarea>
        </div>
		<div class="form-group">
            <label>투표 문항수</label>
            <div>
            <select name="itemcount"  id="itemcount" onchange="pollchage(this)" style="width: 70px; display: inline-block;" class="form-control"/>
				<%
				for(int i=2; i <= 10; i++){
					%>	
					<option value="<%=i%>"><%=i%></option>
					<%
				}			
				%>		
			</select> 개
			</div>	
        </div>
        
		 <div class="form-group">
		 	<label>투표 상세 문항</label>
				<c:forEach var="item" items="${list}" varStatus="status">
								<div id='poll${status.count}'>
									<!-- 번호:radio -->
									${status.count}번:&nbsp;&nbsp;<input type="radio" name="pollsubid"
										${status.count==1 ?"checked='checked'":"" }
										 value="${item.pollsubid}" >

									<!-- 항목 명칭 -->
									<input type="text" name="poll${status.count }" class="form-control input-sm" 
									autocomplete="off" value="${item.answer}" style="width: 500px" required/><br>
           							
									<input type="hidden"  name="num${status.count }" value="${item.pollsubid}">
								</div>
					</c:forEach>
					
					<c:forEach var="i" begin="${list.size() +1 }" end="10" step="1">
								<div id='poll${i}'>
									<!-- 번호:radio -->
									${i}번:&nbsp;&nbsp;<input type="radio" name="pollsubid" >

									<!-- 항목 명칭 -->
									<input type="text" name="poll${i}" id="pollinput${i}" class="form-control input-sm" 
									autocomplete="off" style="width: 500px" required/><br>
								</div>
					</c:forEach>


				<input type="submit" value="모임 수정" 
       			 style="display: inline-block; margin-right: 600px; border-radius: 4px;">
        		
        		<input type="button" value="모임 목록" id="_btnList"
      			 style="display: inline-block; border-radius: 4px;">
</form>


<script type="text/javascript">
	$("#_btnUpdate").click(function() {
		alert('모임수정');
		//	submitContents($("#_frmForm"));
		$("#_frmForm").attr({
			"target" : "_self",
			"action" : "meetupdateAf.do"
		}).submit();
	});
	
	$("#_btnList").click(function() {	
		alert('글 목록으로');	
		location.href="./meetpolllist.do"
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#meetImg').attr('src', e.target.result);

			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#uploadImg").change(function() {
		  readURL(this);
		});

	$('#location').find('option[value="${meet.location}"]').attr('selected',
			'selected');

	$('#itemcount').find('option[value="${meet.itemcount}"]').attr('selected',
			'selected');

	/* $('#_sdate').find('option[value="${meet.sdate}"]').attr('selected','selected'); */
</script>
