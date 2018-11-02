<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<fmt:requestEncoding value="UTF-8"/>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<head>

<link rel= "<%= request.getContextPath() %>/css/bootstrap.css">

<style type="text/css">
/* .pds-table {
    width: 100%;
    margin: 0.7em 0 0 0;
    background-color : white;
}
.pds-table th {
   font-family: Montserrat-Medium;
	font-size: 12px;
	color: #fff; /*  글씨 
	line-height: 3.0;
	border-bottom: 1px solid black;
	text-transform: uppercase;
	background-color: #36304a;}

.pds-table td {
    padding-top: 3px;
    padding-bottom: 3px;
    border-bottom: 1px solid black;
    border-right: 1px solid black;
    line-height: 1.45;
}
.pds-table td a {
    color: gray;
    text-decoration: none;
}
#update {
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


<form name="frmForm" id="_frmForm" action="pdsupdateAf.do" method="post" 
enctype="multipart/form-data">
<input type="hidden" name='seq' value="${pds.seq}"/>

<div id="content">
<table class="table table-bordered" style="width:85%;">

<tr>
<th style="border-top: 1px solid black;">아이디</th>
<td style="text-align: left; border-top: 1px solid black;">${pds.id}</td>
</tr>
<tr>
<th>제목</th>
<td style="text-align: left">
<input type="text" name='title' value="${pds.title}" size="40"/></td>
</tr>
<tr>
<th>파일업로드</th>
<td style="text-align: left">
<input type="text" name='namefile' value="${pds.filename}" size="40" readonly="readonly"/>
<input type="file" name="fileload"  style=" width : 400px;"></td>
</tr>
<tr>
<th>내용</th>
<td style="text-align: left">
<textarea style="resize: none; width: 100%;" rows="10" cols="50" 
name='content' id="_content">${pds.title}</textarea></td>
</tr>
<!-- <tr>
<td colspan="2" style="height:50px; border-bottom: none; text-align:center;">
	<span><a href="#none" id="_btnLogin" title="수정완료"><img src="img/bupdate.png" alt="수정완료" /></a>
</span>
</td>
</tr>
 -->
</table>
</div>
<div id="update" style="text-align: center;">
<input type="image" src="img/btn_modify.gif">

</form>
<script type="text/javascript">
$("#_btnLogin").click(function() {	
	alert('수정하기');	
	$("#_frmForm").attr({ "target":"_self", "action":"pdsupdateAf.do" }).submit();
});

</script>
