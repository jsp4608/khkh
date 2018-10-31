<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="padding: 35%; padding-top: 10%; padding-bottom: 5%">
    <!-- 이미지 -->
    <img id="img" 
	style="height: 200px; width: 200px"
	src="https://user-images.githubusercontent.com/38531104/45137275-e0615300-b1e2-11e8-9dbb-05378ea956b6.png"
	class="rounded-circle mr-3" height="50px" width="50px" alt="">
    
    <input type='file' id="imgInp" />
    <br><br><br>
    
   
    
    <input type="text" id="myid" class="form-control mb-4" value="${login.id }" readonly="readonly">
    
    
   <!--  <input type="text" id="defaultRegisterFormId" class="form-control mb-4" placeholder="Id" required> -->
      
    <!-- Password -->
    <input type="password" name="pwd" id="_pwd" class="form-control mb-4" placeholder="Password" data-msg="패스워드를">
    
    <!-- Name -->
    <input type="text" name="name" id="_name" class="form-control mb-4" placeholder="Name" data-msg="이름을 ">
   
    <!-- E-mail -->
    <input type="email" name="email" id="_email" class="form-control mb-4" placeholder="E-mail" data-msg="이메일을 ">


    <!-- Sign up button -->
    <div align="center">
    <button class="btn btn-info my-4 btn-block col-md-4" type="button" id="_btnRegi">회원가입</button>
    </div>
    
    </div>


</body>
</html>