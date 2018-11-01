<%@page import="cycle.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="resources/css/main.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title></title>
</head>
<body>

 <!--Carousel Wrapper-->
  <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">

    <!--Slides-->
    <div class="carousel-inner" role="listbox">

      <!--First slide-->
      <div class="carousel-item active">
        <div class="view">

          <!--Video source-->
          <video class="video-intro" autoplay loop muted>
            <source src="https://mdbootstrap.com/img/video/city.mp4" type="video/mp4" >
          </video>

          <!-- Mask & flexbox options-->
          <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
 		<!-- Content -->
            <div class="text-center white-text mx-5 wow fadeIn">
              <!-- Default form login -->
			<div>
				<form class="text-center border border-light p-5" action="loginAf.do" name="frmForm" id=_frmForm method="post">

 				   <p class="h4 mb-4">login</p>

			    <!-- Id -->
			    <input type="text" id="_userid" name="id" class="form-control mb-4" placeholder="Id" required data-msg="ID를 ">
			
			    <!-- Password -->
			    <input type="password" id="_userpwd" name="pwd" class="form-control mb-4" placeholder="Password" required data-msg="패스워드를 ">
			
			    <!-- <div class="d-flex justify-content-around">
			        <div>
			            Remember me
			            <div class="custom-control custom-checkbox">
			                <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
			                <label class="custom-control-label" for="defaultLoginFormRemember">아이디 저장</label>
			            </div>
			        </div>
			       
			    </div> -->

		    <!-- Sign in button -->
		    	<button class="btn btn-info btn-block my-4" type="button" id="_btnLogin">login</button>
		
		    <!-- Register -->
		    	
		    	<!-- <a href="#none" id="_btnRegi">회원가입</a> -->
		    	<a href="" data-toggle="modal" data-target="#modalRegisterForm">회원가입</a>
			</form>
			</div>
			<!-- Default form login -->
	 </div>
		<!-- Content -->
           

          </div>
          <!-- Mask & flexbox options-->

        </div>
      </div>
      <!--/First slide-->

      

    </div>
    <!--/.Slides-->

  </div>
  <!--/.Carousel Wrapper-->
  <form action="regiAf.do" method="post" id="regFrm" name="regFrm" enctype="multipart/form-data">
		  <!-- 회원가입 모달 -->
		  <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		    <div class="modal-dialog" role="document">
		        <div class="modal-content">
		            <div class="modal-header text-center">
		                <h4 class="modal-title w-100 font-weight-bold">회원가입</h4>
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                    <span aria-hidden="true">&times;</span>
		                </button>
		            </div>
		            <div class="modal-body mx-3">
		            	
		            	
		            	 <!-- 이미지 -->
		            	 <div align="center">
						    <img id="userImg" name="userImg"
							style="height: 200px; width: 200px"
							src="https://user-images.githubusercontent.com/38531104/45137275-e0615300-b1e2-11e8-9dbb-05378ea956b6.png"
							class="rounded-circle mr-3" height="50px" width="50px" alt="">
						    
						<input type='file' id="imgInp" name="imgInp">
						    
						    
						    </div>
						    <br><br><br>
		            	<!-- Id -->
		            	 <div class="form-row mb-4">
					        <div class="col-md-8">
					            <input type="text" name="id" id="_id" class="form-control" placeholder="Id" data-msg="아이디를">
					        </div>
					        <div class="col-md-4">
					            <!-- 중복체크 -->
					            <button id="_btnGetId" type="button" class="form-control">중복확인</button>
					            <!-- <input type="button" id="defaultRegisterFormLastName" class="form-control" placeholder="Last name" value="중복확인"> -->
					        </div>
					    </div>
					    
					      <input type="text" id="_rgetid" class="form-control mb-4" readonly="readonly">
		            
		            
		               <!-- Password -->
					    <input type="password" name="pwd" id="_pwd" class="form-control mb-4" placeholder="Password" data-msg="패스워드를">
					    
					    <!-- Name -->
					    <input type="text" name="name" id="_name" class="form-control mb-4" placeholder="Name" data-msg="이름을 ">
					   
					    <!-- E-mail -->
					    <input type="email" name="email" id="_email" class="form-control mb-4" placeholder="E-mail" data-msg="이메일을 ">
		
		            </div>
		            <div class="modal-footer d-flex justify-content-center">
		                <button type="button" class="btn btn-cyan" id="_btnRegi">가입</button>
		
		            </div>
		        </div>
		    </div>
		</div>
</form>
<script type="text/javascript">
$("#_btnLogin").click(function() {
	
	if($("#_userid").val() == ""){
		alert($("#_userid").attr("data-msg") + " 입력해 주십시오" );
		$("#_userid").focus();
	} else if($("#_userpwd").val() == ""){
		alert($("#_userpwd").attr("data-msg") + " 입력해 주십시오" );
		$("#_userpwd").focus();
	} else{
		$("#_frmForm").attr("target", "_self").submit();
	}	
		
});

$("#_userid").keypress(function(event) {
	if(event.which == "13"){
		event.preventDefault();
		$("#_pwd").focus();
	}
});

$("#_userpwd").keypress(function() {
	if(event.which == "13"){
		event.preventDefault();
		$("#_btnLogin").click();
	}
});

// 회원가입부분

var idok = "false";

function joincheck() { //id 및 비밀번호 확인후 회원가입 처리페이지로 이동

	if (idok == "false") {

		alert("ID체크를 하세요");

		return false;
	}
	
	return true;

}



$("#_btnRegi").click(function() {
	if($("#_id").val() == ""){
		alert($("#_id").attr("data-msg") + " 입력해 주십시오");
		$("#_id").focus();
	} 
	else if($("#_name").val() == ""){
		alert($("#_name").attr("data-msg") + " 입력해 주십시오");
		$("#_name").focus();
	} 
	else if($("#_email").val() == ""){
		alert($("#_email").attr("data-msg") + " 입력해 주십시오");
		$("#_email").focus();
	} 
	else if($("#_pwd").val() == ""){
		alert($("#_pwd").attr("data-msg") + " 입력해 주십시오");
		$("#_pwd").focus();
	}
	else if(idok == "false"){
		alert("ID체크를 하세요");
		$("#_id").focus();
	}
	else{
		//$("#regFrm").attr({"target":"_self", "action":"regiAf.do" }).submit();
		$("#regFrm").submit();
	}
});

$("#_btnGetId").click(function() {
	
	var _id = $("#_id").val();
	if(_id == ""){
		alert("아이디를 입력해 주십시오");
	}else{
		idCheckFunc(_id);
	}	
});

function idCheckFunc(id) {
//	alert("idCheckFunc");

	$.ajax({
		type:"post",
		url:"getID.do",
		async:true,
		data:"id=" + id,
		success:function(msg){
			idCheckMessage(msg);
		}		
	});
}

function idCheckMessage(msg) {
	if(msg.message == 'YES'){
		$("#_rgetid").val("사용할 수 없는 아이디입니다");
		idok = "false";
	}else{
		$("#_rgetid").val("사용하실 수 있습니다");
		 idok = "yes";
	}	
}
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$('#userImg').attr('src', e.target.result);

		}
		reader.readAsDataURL(input.files[0]);
	}
}
$("#imgInp").change(function() {
	  readURL(this);
	});


</script>
</body>
</html>