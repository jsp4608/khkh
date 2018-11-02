<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>


<script type="text/javascript">
$(document).ready(function () {
	for(i = 3;i <= 10; i++){
		$("#poll" + i ).hide();	// poll1, poll2, poll3, poll4
		
		$("#pollinput" +i ).removeAttr( "required" );
	}
});

function pollchage(me) {
	
	var num = me.options[me.selectedIndex].value;
	
	for(i = 1;i <= 10; i++){
		$("#poll" + i).val("");
		$("#poll" + i).hide();
		$("#pollinput" +i ).removeAttr( "required" );
	}
	for(i = 1;i <= num; i++){
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

<style>
::-webkit-input-placeholder {
    color: #ababab !important;
    font-size: 12px !important;        
 } 
:-moz-placeholder { /* Firefox 18- */
     color: #ababab !important;
     font-size: 12px !important;         
}
::-moz-placeholder {
    color: #ababab !important;
    font-size: 12px !important;        
 }
:-ms-input-placeholder {  
    color: #ababab!important;
    font-size: 12px !important;        
 }
 
input:focus::-webkit-input-placeholder { color:transparent !important; }
input:focus:-moz-placeholder { color:transparent  !important; } /* FF 4-18 */
input:focus::-moz-placeholder { color:transparent  !important; } /* FF 19+ */
input:focus:-ms-input-placeholder { color:transparent  !important; } /* IE 10+ */

.btn-submit {
    color:#fff !important;
    clear:both;
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
</style>

<h1>모임 개설</h1>
<br><br>
<form name="frmForm" id="_frmForm" method="post" action="makemeetAf.do" enctype="multipart/form-data" onsubmit="return check()">

        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>아이디<sup>*</sup></label>
            <input name="id" class="form-control input-sm"
            autocomplete="off" readonly="readonly" value='${login.id}' style="width: 250px"/>
            <!--END TEXT INPUT FIELD-->
        </div>
        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>제목<sup>*</sup></label>
            <input name="title" class="form-control input-sm" placeholder="Enter here..." autocomplete="off"
            style="width: 500px" required/>
            <!--END TEXT INPUT FIELD-->
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
            <!--END DROP DOWN LIST-->
        </div>
        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>라이딩 시작 날짜<sup>*</sup></label>
            <input type="date" class="form-control input-sm" name='sdate' id='_sdate'
             autocomplete="off" style="width: 500px" required/>
            <!--END TEXT INPUT FIELD-->
        </div>
        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>라이딩 종료 날짜<sup>*</sup></label>
            <input type="date" class="form-control input-sm" name='edate' id='_edate'
             autocomplete="off" style="width: 500px" required/>
            <!--END TEXT INPUT FIELD-->
        </div>
        <div class="form-group">
            <!--START OF A FILE UPLOAD-->
            <label>이미지 업로드</label><br>
            <img id="meetImg" src="img/road-2562568.jpg" style="height: 200px; width: 200px"
			class="img-fluid" alt="Responsive image"><br>
            <input type="file" class="form-control" id="uploadImg" name="uploadImg" style="width: 250px; height: 40px; margin-top: 6px;"/>
            <!--END OF FILE UPLOAD-->
        </div>
        <div class="form-group">
            <!--START OF A TEXTAREA-->
            <label>라이딩 세부 내용<sup>*</sup></label>
            <textarea  name='content' id="_content"
            class="form-control" rows="10" cols="50" style="width: 700px" required/></textarea>
            <!--END OF TEXTAREA-->
        </div>
        <div class="form-group">
            <!--START OF A DROP DOWN LIST-->
            <label>투표 문항수<sup>*</sup></label>
            <div>
            <select name="itemcount" onchange="pollchage(this)" style="width: 70px; display: inline-block;" class="form-control"/>
				<%
				for(int i=2; i <= 10; i++){
					%>	
					<option <%=(2+"").equals(i+"")?"selected='selected'":"" %> value="<%=i %>"><%=i %></option>
					<%
				}			
				%>		
			</select>&nbsp;&nbsp;개
			</div>	
            <!--END DROP DOWN LIST-->
        </div>
        <div class="form-group">
            <!--START OF A REGULAR TEXT INPUT FIELD-->
            <label>상세 문항 작성<sup>*</sup></label>
            	<%
			for(int i = 1;i <= 10; i++){
				%>	
				<div id='poll<%=i%>' style="margin-bottom: 6px;">
		            <%=(i+"") %>번 :  <input name="poll<%=i %>" id="pollinput<%=i%>" class="form-control input-sm" placeholder="Enter here..." 
		            autocomplete="off" style="width: 500px; display: inline-block;" required/>
	            </div>			
				<%
			}		
			%>
            <!--END TEXT INPUT FIELD-->
        </div>
        
        <!--THIS IS THE SUBMIT BUTTON-->
        <br>
        <input type="submit" value="모임 만들기" 
        style="display: inline-block; margin-right: 600px; border-radius: 4px;">
        
        <!-- <a href="./meetpolllist.do" id="meetlist">모임 목록</a>    --> 
        
        <input type="button" value="모임 목록" id="_btnList"
        style="display: inline-block; border-radius: 4px;">
        <!--END SUBMIT BUTTON-->

</form>

<script type="text/javascript">
	$("#_btnMake").click(function() {	
		alert('모임 개설 성공');	
		$("#_frmForm").attr({ "target":"_self", "action":"makemeetAf.do" }).submit();	
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
</script>

