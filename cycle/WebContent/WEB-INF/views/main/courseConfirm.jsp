<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="crossorigin="anonymous"></script>
<script type="text/javascript"src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=8mvn37FxJvLefDim3jdV&submodules=geocoder"></script>
<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/css/marker.css">
<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/css/table.css">


	
</head>
<body>
<table>
  <thead>
    <tr>
      <th scope="col">시퀀스</th>
      <th scope="col">작성자</th>
      <th scope="col">제목</th>
      <th scope="col">길이</th>
      <th scope="col">소요시간(일)</th>
    </tr>
 	
 	<c:forEach items="${courseDtoList }" var="course">
	<tr>
	<td>${course.seq }</td>
	<td>${course.memid }</td>
	<td><a href="courseConfirm.do?seq=${course.seq }">${course.title }</a></td>
	<td>${course.len }</td>
	<td>${course.courseday }</td>
	
	</tr>
	</c:forEach>
	
	
	</table>


<%-- 	
	
	<table>
	<tr>
	<th>시퀀스</th>
	<th>작성자</th>
	<th>제목</th>
	<th>길이</th>
	<th>소요시간(일)</th>
	</tr>
	<c:forEach items="${courseDtoList }" var="course">
	<tr>
	<td>${course.seq }</td>
	<td>${course.memid }</td>
	<td><a href="courseConfirm.do?seq=${course.seq }">${course.title }</a></td>
	<td>${course.len }</td>
	<td>${course.courseday }</td>
	
	</tr>
	</c:forEach>
	
	
	</table> --%>
</body>
</html>