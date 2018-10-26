<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<head>
<style type="text/css">
.pds-table {
    width: 100%;
    margin: 0.7em 0 0 0;
}
.pds-table th {
    color: #92B91C;
    border-bottom: 1px solid #92B91C;
}

.pds-table td {
    padding-top: 3px;
    padding-bottom: 3px;
    border-bottom: 1px solid silver;
    line-height: 1.45;
}
.pds-table td a {
    color: gray;
    text-decoration: none;
}
#search {
	text-align: center;
}

#content {
    margin-left: 40px;
    margin-right: 0px;
    padding-left: 0px;
    padding-right: 0px;
    font-size: 0.9em;
    line-height: 1.6;
}
    


</style>

</head>


<form name="frmForm2" id="_frmForm2" action="pdsupdate.do" method="post">

<div id="content">
<table class="pds-table" style="width:85%;">
<input type="hidden" name="seq" value="${pds.seq}"/>

<tr>
<th style="border-top: 1px solid #92B91C;">게시자</th>
<td style="text-align: left; border-top: 1px solid silver;">${pds.id}</td>
</tr>
<tr>
<th>제목</th>
<td style="text-align: left">${pds.title}</td>
</tr>
<tr>
<th>다운로드</th>
<td style="text-align: left">
<input type="button" name="btnDown2" value="다운로드"
onclick="filedowns('${pds.filename}','${pds.seq}')"/>
</td>
</tr>
<tr>
<th>조회수</th>
<td style="text-align: left">${pds.readcount}</td>
</tr>
<tr>
<th>다운수</th>
<td style="text-align: left">${pds.downcount}</td>
</tr>
<tr>
<th>파일이름</th>
<td style="text-align: left">${pds.filename}</td>
</tr>
<tr>
<th>등록일</th>
<td style="text-align: left">${pds.regdate}</td>
</tr>
<tr>
<th>내용</th>
<td style="text-align: left"><textarea style="resize: none;" rows="10" cols="50" 
name='content' id="_content" readonly="readonly">${pds.content}</textarea></td>
</tr>
</table>
</div>
</form>

<form name="delfileup" action="fileDownload.do" method="post">
<input type="hidden" name="filename" />
<input type="hidden" name="seq" />
</form>




<div id="search">
	<button type="button" id="_btnAdd">수정하기</button>
	<button type="button" id="_btnReply">답글달기</button>
</div>

<script type="text/javascript">
$("#_btnAdd").click(function() {	
	alert('수정하기');		
	$("#_frmForm2").attr({ "target":"_self", "action":"pdsupdate.do" }).submit();
});
$("#_btnReply").click(function() {	
	alert('답글달기');	
	$("#_frmForm2").attr({ "target":"_self", "action":"pdsreply.do" }).submit();
});
 
function filedowns(filename, pdsid){
	alert(filename+'  '+pdsid);
	var doc=document.delfileup;
	doc.filename.value=filename;
	doc.seq.value=pdsid;
	doc.submit();
}

</script>
