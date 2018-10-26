<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
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

<form name="frmForm" id="_frmForm" method="post" action="pdsreplyAf.do">
<input type="hidden" name="ref"   value="${pds.seq}"/>

<table class="pds-table" style="width:85%;">


<tbody>	

<tr class="id">
	<th style="border-top: 1px solid #92B91C;">아이디</th>
	<td style="text-align: left; border-top: 1px solid silver;"><input type="text" name="id" readonly="readonly" 
	value=' ' size="60"/></td>
</tr>
<tr>
	<th>제목</th>
	<td style="text-align: left"><input type="text" name="title" size="60"/></td>
</tr>
<tr>
	<th>내용</th>
	<td style="text-align: left">
		<textarea rows="10" cols="50" name='content' id="_content" style="resize: none;" ></textarea>
	</td>
</tr>
<tr>
<td colspan="2" style="height:50px; text-align:center; border-bottom: none;">
	<span>
	<button type="button" id="_btnReply">답글달기</button>
	<!-- <a href="#none" id="_btnReply" title="답글달기"><img alt="답글달기" /></a> -->
	</span>
</td>
</tr>

</tbody>

</table>
</form>

<script type="text/javascript">
$("#_btnReply").click(function() {	
	alert('답글달기');	
	$("#_frmForm").attr({ "target":"_self", "action":"pdsreplyAf.do" }).submit();
});
</script>