<%@page import="cycle.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	MemberDto login = (MemberDto) session.getAttribute("login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Bootstrap core CSS -->
  <link href="resources/bootstarp/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="resources/bootstarp/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="resources/bootstarp/css/style.min.css" rel="stylesheet">
<style type="text/css">

    html,
    body,
    header,
    .carousel {
      height: 100%;
    }

    @media (min-width: 800px) and (max-width: 850px) {
            .navbar:not(.top-nav-collapse) {
                background: #1C2331!important;
            }
        }
  </style>
</head>
<body>
 <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
    <div class="container">
     
      <!-- Collapse -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Left -->
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="main.do">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          
          <c:choose>
          <c:when test="${(empty login) or (login.id eq '') }">
	          <li class="nav-item">
	            <a class="nav-link" href="#" id="not">코스</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="#">모임</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="#">정보</a>
	          </li>
	          <li class="nav-item">
	           	 <a class="nav-link" href="login.do">로그인</a>
	          </li>
		  </c:when>
		  
		  <c:otherwise>
			  <li class="nav-item">
	          	<a class="nav-link" href="course.do">코스</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="meet.do">모임</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="pdslist.do">정보</a>
	          </li>
	          <li class="nav-item">
	           	 <a class="nav-link" href="logout.do">로그아웃</a>
	          </li>
		 	</c:otherwise>
		  </c:choose>
		  
		  
		  <%-- <c:choose>
		 	<c:when test="${(empty login) or (login.id eq '') }">
			 	<li class="nav-item">
	           	 <a class="nav-link" href="login.do">로그인</a>
	          	</li>
		 	</c:when>
		 	
		 	<c:otherwise>
			 	<li class="nav-item">
	           	 <a class="nav-link" href="logout.do">로그아웃</a>
	          	</li>
		 	</c:otherwise>
		  </c:choose> --%>
		  
		  <c:if test="${login.auth == 1}">
		  <li class="nav-item">
		  	<a href="admin.do" style="position: absolute; right:20px">관리자</a>
          </li>
		  </c:if>
        </ul>

      </div>

    </div>
  </nav>
  <!-- Navbar -->

</body>
</html>