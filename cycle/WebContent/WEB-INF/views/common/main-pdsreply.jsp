<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>


<head>

<link rel= "<%= request.getContextPath() %>/css/bootstrap.css">

<style type="text/css">
/* .pds-table {
    width: 100%;
    margin: 0.7em 0 0 0;
    background: white;
}
.pds-table th {
    color: white;
	background-color: #36304a;    
    border-left: 1px solid black;
    border-bottom: 1px solid black;
}

.pds-table td {
    padding-top: 3px;
    padding-bottom: 3px;
    border-right: 1px solid black;
    border-bottom: 1px solid black;
	line-height: 2.45;
}
.pds-table td a {
    color: gray;
    text-decoration: none;
    }
#reply {
	text-align: center;
}

#content {
    margin-left: 40px;
    margin-right: 0px;
    padding-left: 0px;
    padding-right: 0px;
    font-size: 0.9em;
    line-height: 1.6;
} */
</style>
</head>

<form name="frmForm" id="_frmForm" method="post" action="pdsreplyAf.do">
<input type="hidden" name="ref"   value="${pds.seq}"/>

<table class="table table-bordered" style="width:85%; margin-left: auto; margin-right: auto">


<tbody>	

<tr>
	<th style="border-top: 1px solid #92B91C;">아이디</th>
	<td style="text-align: left; border-top: 1px solid silver;"><input type="text" name="id" readonly="readonly" 
	value='${login.id}' size="60"/></td>
</tr>
<tr>
	<th>제목</th>
	<td style="text-align: left"><input type="text" name="title" size="60" required="required"/></td>
</tr>
<tr>
	<th>내용</th>
	<td style="text-align: left">
		<textarea rows="10" cols="80" name='content' id="_content" style="resize: none; height: 50%;
    width: 100%;" required="required" ></textarea>
	</td>
</tr>

<!-- <tr>
<td colspan="2" style="height:50px; text-align:center; border-bottom: none;">
	<span>
	<input type="image" src="img/btn_reply.gif">
	<button type="button" ><img src="img/btn_reply.gif"></button>
	</span>
</td>
</tr>
 -->
 </tbody>
</table>

<!-- 답변달기 버튼  -->
<div id="reply" style="text-align: center;">
<input type="image" src="img/btn_reply.gif">
</div>


</form>
<!-- 
<script type="text/javascript">
$("#_btnReply").click(function() {	
	alert('답글달기');	
	$("#_frmForm").attr({ "target":"_self", "action":"pdsreplyAf.do" }).submit();
});
</script> -->