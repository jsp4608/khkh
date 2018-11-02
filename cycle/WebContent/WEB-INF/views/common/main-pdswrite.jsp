<%@page import="cycle.model.MemberDto"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>


<fmt:requestEncoding value="UTF-8"/>



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
} */
</style>
</head>



<form name="frmForm" id="_frmForm" action="pdsupload.do" method="post" 
enctype="multipart/form-data">
<table class="table table-bordered" style="width:85%; margin-left: auto; margin-right: auto">


<tr>
<th style="border-top: 1px solid black;">아이디</th>
<td style="text-align: left; border-top: 1px solid black"><input type="text" name='id' readonly="readonly"
value='${login.id}' size="50"/></td>
</tr>
<tr>
<th>제목</th>
<td style="text-align: left"><input type="text" name='title' size="50" required/></td>
</tr>
<tr>
<th>파일업로드</th>
<td style="text-align: left"><input type="file" name="fileload" style=" width : 400px;"></td>
</tr>
<tr>
<th>내용</th>
<td style="text-align: left"><textarea rows="10" cols="50" name='content' id="_content" style="resize: none; height: 50%;
    width: 100%;"  required></textarea></td>
</tr>
<tr>
<td colspan="2" style="height:50px; text-align:center; border-bottom: none;">
<button type="image" > 글쓰기 </button>
	<!-- <span><a href="#none" id="_btnLogin" title="글쓰기"><img src="img/bwrite.png" /></a>
</span> -->
</td>
</tr>
</table>
</form>
<!-- <script type="text/javascript">
$("#_btnLogin").click(function() {	
	alert('글쓰기');	
	$("#_frmForm").submit();	
});
</script>
 -->



