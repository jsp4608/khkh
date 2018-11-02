<%@page import="cycle.arrow.DateUtil"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cycle.model.MeetPollDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<!-- 검색 카테고리를 유지 start -->
<%
	String jpg = ".jpg";
%>

<%
	String category = (String) request.getAttribute("s_category");
	if (category == null)
		category = "";
%>

<%
	List<MeetPollDto> plists = new ArrayList<MeetPollDto>();
	Object Oflist = request.getAttribute("meetlist");
	if (Oflist != null) {
		plists = (List<MeetPollDto>) Oflist;
	}
%>

<script type="text/javascript">
var str='<%=category%>';
	$(document).ready(function() {
		document.frmForm1.s_category.value = str;

		// text에 문자를 입력하지 않았을 경우, 초기화 해준다.
		if ($("#_s_keyword").val().trim() == "") {
			document.frmForm1.s_category.value = "";
		}
	});
</script>

<style>
@
keyframes anima {from { margin-top:-50px;
	-ms-filter:
		"progid:DXImageTransform.Microsoft.Alpha(Opacity=($opacity * 100))";
	filter: alpha(opacity = 0);
	-moz-opacity: 0;
	-khtml-opacity: 0;
	opacity: 0
}

to {
	margin: auto;
	-ms-filter:
		"progid:DXImageTransform.Microsoft.Alpha(Opacity=($opacity * 100))";
	filter: alpha(opacity = 100);
	-moz-opacity: 1;
	-khtml-opacity: 1;
	opacity: 1
}

}
@
-webkit-keyframes anima {from { margin-left:-20px;
	-ms-filter:
		"progid:DXImageTransform.Microsoft.Alpha(Opacity=($opacity * 100))";
	filter: alpha(opacity = 0);
	-moz-opacity: 0;
	-khtml-opacity: 0;
	opacity: 0
}

to {
	margin-left: 10px;
	-ms-filter:
		"progid:DXImageTransform.Microsoft.Alpha(Opacity=($opacity * 100))";
	filter: alpha(opacity = 100);
	-moz-opacity: 1;
	-khtml-opacity: 1;
	opacity: 1
}

}
.pic {
	max-width: 300px;
	max-height: 300px;
	position: relative;
	overflow: hidden;
	margin: 10px;
	display: inline-block;
	-webkit-animation: anima 2s;
	-moz-animation: anima 2s;
	-o-animation: anima 2s;
	-ms-animation: anima 2s;
	animation: anima 2s;
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	-o-backface-visibility: hidden;
	-ms-backface-visibility: hidden;
	backface-visibility: hidden;
}

.pic-caption {
	cursor: default;
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgba(44, 62, 80, 0.92);
	padding: 0px;
	text-align: center;
	-ms-filter:
		"progid:DXImageTransform.Microsoft.Alpha(Opacity=($opacity * 100))";
	filter: alpha(opacity = 0);
	-moz-opacity: 0;
	-khtml-opacity: 0;
	opacity: 0
}

.pic-image {
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-o-transform: scale(1.1);
	-ms-transform: scale(1.1);
	transform: scale(1.1)
}

.pic:hover .pic-image {
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-o-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1)
}

.pic-title {
	font-size: 1.8em
}

a, a:hover, .pic .pic-image, .pic-caption, .pic:hover .pic-caption, .pic:hover img
	{
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	-ms-transition: all 0.5s ease;
	transition: all 0.5s ease
}

.pic:hover .bottom-to-top, .pic:hover .top-to-bottom, .pic:hover .left-to-right,
	.pic:hover .right-to-left, .pic:hover .rotate-in, .pic:hover .rotate-out,
	.pic:hover .open-up, .pic:hover .open-down, .pic:hover .open-left, .pic:hover .open-right,
	.pic:hover .come-left, .pic:hover .come-right {
	-ms-filter:
		"progid:DXImageTransform.Microsoft.Alpha(Opacity=($opacity * 100))";
	filter: alpha(opacity = 100);
	-moz-opacity: 1;
	-khtml-opacity: 1;
	opacity: 1;
	-webkit-user-select: none;
	-moz-user-select: none;
	-o-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-moz-touch-callout: none;
	-o-touch-callout: none;
	-ms-touch-callout: none;
	touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	-moz-tap-highlight-color: transparent;
	-o-tap-highlight-color: transparent;
	-ms-tap-highlight-color: transparent;
	tap-highlight-color: transparent
}

p {
	line-height: 2.0em;
}

h1 {
	font-size: 3.0em;
	line-height: 40px;
	color: #fff;
	font-weight: bold;
}

.top-to-bottom {
	bottom: 50%;
	left: 0
}

.pic:hover .top-to-bottom {
	left: 0;
	bottom: 0
}

@media screen and (max-width: 560px) {
	.pic {
		max-width: 400px;
		max-height: 300px;
		display: block;
		-webkit-animation: none;
		-moz-animation: none;
		-o-animation: none;
		-ms-animation: none;
		animation: none;
		margin: 10px auto
	}
}
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
</style>

<!-- 검색 카테고리를 유지 end -->
<span style="float:right"><button type="button" id="_btnAdd" style="text-align: center;
 font-size: 13; width: 140px; height: 35px;">모임 만들기</button></span>
<form name="frmForm1" id="_frmFormSearch" method="post" action="">
	<table
		style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px; border: 0; padding: 0;">
		<tr>
			<td>검색 :</td>
			<td style="padding-left: 5px;"><select id="_s_category"
				name="s_category">
					<option value="" selected="selected">선택</option>
					<option value="title">제목</option>
					<option value="contents">내용</option>
			</select></td>
			<td style="padding-left: 5px;"><input type="text"
				id="_s_keyword" name="s_keyword" value="${s_keyword}" style="width: 300px;"/></td>
			<td style="padding-left: 5px;"><button type="button"
					id="_btnSearch" style="font-size: 13; width: 80px; height: 26.5px;">검색</button></td>
		</tr>
	</table>
	
	
	
	<input type="hidden" name="pageNumber" id="_pageNumber"
		value="${(empty pageNumber)?0:pageNumber}" /> <input type="hidden"
		name="recordCountPerPage" id="_recordCountPerPage"
		value="${(empty recordCountPerPage)?10:recordCountPerPage}" />
</form>

<ul
	style="display: grid; width: 100%; grid-template-columns: 1fr 1fr 1fr; grid-gap: 30px 10px;">
	<c:forEach items="${meetlist }" var="meet" varStatus="vs">
		<li
			style="display: flex; justify-content: center; align-items: center;">
			<span> <c:if test="${meet.del == 0 }">
					<%-- <c:if test="${meet.img eq jpg}">
				<td style="text-align: left;"><a href="meetpolldetail.do?pollid=${meet.pollid}">
				<img id="" src="img/road-2562568.jpg"  style="height: 300px; width: 300px"
					class="img-fluid" alt="Responsive image"></a></td>
			</c:if> --%>
					<!--Effect: Top to Bottom -->
					<c:if test="${meet.img ne 'false' }">
						<td style="text-align: left;">
							<div class="pic">
								<a href="meetpolldetail.do?pollid=${meet.pollid}"> <img
									src="img/${meet.img }" style="height: 300px; width: 300px;"
									class="pic-image" alt="Responsive image"> <span
									class="pic-caption top-to-bottom">
										<h1 class="pic-title" style="margin-top: 50px; margin-bottom: 20px">${meet.title }</h1>
										<p style="color: #fff;">${meet.sdate} ~ ${meet.edate}</p>
										<p style="color: #fff;">${meet.location}</p>
										<p style="color: #fff;">
										<c:choose>
										<c:when test="${meet.content.length() < 20}">
										${meet.content}
										</c:when>
										<c:otherwise>
										${meet.content.substring(0, 20)}...
										</c:otherwise>
										</c:choose>
										</p>
								</span>
								</a>
							</div>
						</td>
					</c:if>
					
					<c:if test="${meet.img eq 'false' }">
						<td style="text-align: left;">
							<div class="pic">
								<a href="meetpolldetail.do?pollid=${meet.pollid}"> <img
									src="img/road-2562568.jpg" style="height: 300px; width: 300px;"
									class="pic-image" alt="Responsive image"> <span
									class="pic-caption top-to-bottom">
										<h1 class="pic-title" style="margin-top: 50px; margin-bottom: 20px">${meet.title }</h1>
										<p style="color: #fff;">${meet.sdate} ~ ${meet.edate}</p>
										<p style="color: #fff;">${meet.location}</p>
										<p style="color: #fff;">
										<c:choose>
										<c:when test="${meet.content.length() < 20}">
										${meet.content}
										</c:when>
										<c:otherwise>
										${meet.content.substring(0, 20)}...
										</c:otherwise>
										</c:choose>
										</p>
								</span>
								</a>
							</div>
						</td>
					</c:if>
					
				</c:if>
		</span>
		</li>
	</c:forEach>
</ul>


<!-- <a href="meetwrite.do">모임 만들기</a> -->

<script type="text/javascript">
	$("#_btnAdd").click(function() {
		alert('모임 만들기');
		location.href = "writemeet.do";
	});

	$("#_btnSearch").click(function() {
		//alert('search');						
		$("#_frmFormSearch").attr({
			"target" : "_self",
			"action" : "meetpolllist.do"
		}).submit();
	});

	function goPage(pageNumber) {
		$("#_pageNumber").val(pageNumber);
		$("#_frmFormSearch").attr("target", "_self").attr("action",
				"meetpolllist.do").submit();
	}
</script>
