<%@page import="cycle.model.MemberDto"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<%
	MemberDto login = (MemberDto) session.getAttribute("login");
%>


<head>
<style type="text/css">

#content {
	margin-left: 0px;
	margin-right: 0px;
	padding-left: 20px;
	padding-right: 0px;
	font-size: 1.5em;
}

.pds-table {
	width: 300px;
	margin: 0.7em 0 0 0;
	background: white;

	/* #d1d1d1 */
}

.pds-table th {
	font-family: Montserrat-Medium;
	font-size: 12px;
	color: #fff; /*  글씨 */
	line-height: 3.0;
	text-transform: uppercase;
	background-color: #36304a;
}

.pds-table td {
	padding-top: 3px;
	padding-bottom: 3px;
	border-bottom: 1px solid silver;
	line-height: 2.45;
	color: black;
	/* #fff */
}

.pds-table td a {
	color: gray;
	text-decoration: none;
}

#paging {
	text-align: center;
	font-size: 13px;
}
</style>
</head>

<%
	String category = (String) request.getAttribute("s_category");
	if (category == null)
		category = "";
%>

<script type="text/javascript">
var str='<%=category%>
	';
	$(document).ready(function() {
		document.frmForm1.s_category.value = str;

		// text에 문자를 입력하지 않았을 경우, 초기화 해준다.
		if ($("#_s_keyword").val().trim() == "") {
			document.frmForm1.s_category.value = "";
		}
	});
</script>


<div id="content">

	<jsp:useBean id="pdsA" class="cycle.controller.PdsArrow" />

	<table class="pds-table" style="width: 100%;">
		<thead>
			<tr>
				<th style="width: 50px;">번호</th>
				<th style="width: 60px;">작성자</th>
				<th>제목</th>
				<th style="width: 70px;">다운로드</th>
				<th style="width: 60px;">조회수</th>
				<th style="width: 60px;">다운수</th>
				<th style="width: 200px;">작성일</th>
				<th style="width: 50px;">삭제</th>
			</tr>
		</thead>

		<tbody>
			<c:if test="${empty pdslist }">
				<tr>
					<td colspan="8" text- align="center">검색한 글이 없습니다</td>
				</tr>
			</c:if>


			<c:forEach var="pds" items="${pdslist}" varStatus="pdsS">
				<jsp:setProperty property="depth" name="pdsA" value="${pds.depth }" />
				<tr>
					<td style="text-align: center">${pdsS.count}</td>
					<td style="text-align: center">${pds.id}</td>
					<td style="text-align: left"><jsp:getProperty property="arrow"
							name="pdsA" /><a href='pdsdetail.do?seq=${pds.seq}'>${pds.title}</a></td>
					<td style="text-align: center"><c:if
							test="${not empty pds.filename }">
							<input type="image" src="./img/icon_file.gif" name="btnDown2"
								value="다운" onclick="filedowns('${pds.filename}','${pds.seq}')" />
						</c:if>
						</td>
					<td style="text-align: center">${pds.readcount}</td>
					<td style="text-align: center">${pds.downcount}</td>
					<td style="text-align: left">${pds.regdate}</td>

					<td style="text-align: left"><c:if
							test="${pds.id eq login.id}">
							<img src="./img/btn_select_delete.gif" data-attache_file_name="${pds.seq}"
								class="btn_fileDelete" />
						</c:if></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>


<form name="frmForm1" id="_frmFormSearch" method="post" action="">
	<div style="margin-top: 1px; margin-bottom: 1px;">
		<table
			style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 1px;">
			<tr>
				<td>검색 :</td>
				<td style="padding-left: 5px;"><select id="_s_category"
					name="s_category">
						<option value="" selected="selected">선택</option>
						<option value="title">제목</option>
						<option value="id">작성자</option>
				</select></td>
				<td style="padding-left: 5px;"><input type="text"
					id="_s_keyword" name="s_keyword" value="${s_keyword}" /></td>
				<td style="padding-left: 10px;">
				<button type="button" id="_btnSearch" style="background-color:transparent; border: 0px"><img src="img/btn_search.gif"><!-- 검색 --></button></td>
				<td style="padding-left: 10px;">
				<button type="button" id="_btnAdd" style="background-color: transparent; border: 0px;" ><img src="img/btn_write.gif"></button></td>
			</tr>
		</table>

		<input type="hidden" name="pageNumber" id="_pageNumber"
			value="${(empty pageNumber)?0:pageNumber}" /> <input type="hidden"
			name="recordCountPerPage" id="_recordCountPerPage"
			value="${(empty recordCountPerPage)?10:recordCountPerPage}" />

	</div>
</form>


<div id="paging">
	<jsp:include page="/WEB-INF/views/common/paging.jsp" flush="false">
		<jsp:param value="${pageNumber }" name="pageNumber" />
		<jsp:param value="${pageCountPerScreen }" name="pageCountPerScreen" />
		<jsp:param value="${recordCountPerPage }" name="recordCountPerPage" />
		<jsp:param value="${totalRecordCount }" name="totalRecordCount" />
	</jsp:include>
</div>

<form name="frmForm" id="_frmForm" method="get" action=""></form>


<form name="delfileup" action="fileDownload.do" method="post">
	<input type="hidden" name="filename" /> <input type="hidden"
		name="seq" />
</form>

<form name="frmForm2" id="_frmForm2" action="pdsdel.do" method="post">
	<input type="hidden" id="_seq" name='seq' />
</form>



<script type="text/javascript">
	function filedowns(filename, seq) {
		alert(filename + '  ' + seq);
		var doc = document.delfileup;
		doc.filename.value = filename;
		doc.seq.value = seq;
		doc.submit();
	}

	$("#_btnAdd").click(function() {
		alert('글쓰기');
		$("#_frmForm").attr({
			"target" : "_self",
			"action" : "pdswrite.do"
		}).submit();
	});

	$("#_btnSearch").click(function() {
		$("#_frmFormSearch").attr({
			"target" : "_self",
			"action" : "pdslist.do"
		}).submit();
	});

	function goPage(pageNumber) {
		$("#_pageNumber").val(pageNumber);
		$("#_frmFormSearch").attr("target", "_self").attr("action",
				"pdslist.do").submit();
	}

	$(".btn_fileDelete").click(function() {
		if (window.confirm("파일을 삭제 하시겠습니까?")) {
			$("#_seq").val($(this).attr("data-attache_file_name"));
			$("#_frmForm2").attr({
				"action" : "pdsdel.do"
			}).submit();
		}
	});
</script>