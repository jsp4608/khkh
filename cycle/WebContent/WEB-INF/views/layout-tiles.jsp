<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:requestEncoding value="utf-8" />


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/layout-tiles.css">

</head>
<body>
	<div class="header-wrap">
		<tiles:insertAttribute name="header" />
	</div>

	<div class="full-wrap">
		<div class="left-wrap">
			<tiles:insertAttribute name="left-menu" />
		</div>

		<div class="body-wrap" style="overflow:scroll">
			<tiles:insertAttribute name="main" />
		</div>
	</div>


	<div class="footer-wrap">
		<tiles:insertAttribute name="footer" />
	</div>


</body>
</html>








