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
			    <input type="password" id="_pwd" name="pwd" class="form-control mb-4" placeholder="Password" required data-msg="패스워드를 ">
			
			    <div class="d-flex justify-content-around">
			        <div>
			            <!-- Remember me -->
			            <div class="custom-control custom-checkbox">
			                <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
			                <label class="custom-control-label" for="defaultLoginFormRemember">아이디 저장</label>
			            </div>
			        </div>
			       
			    </div>

		    <!-- Sign in button -->
		    	<button class="btn btn-info btn-block my-4" type="button" id="_btnLogin">login</button>
		
		    <!-- Register -->
		    
		    	<a href="#none" id="_btnRegi">회원가입</a>
    


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
  
  <!-- 회원가입 모달 -->
  <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-5">
                    <i class="fa fa-user prefix grey-text"></i>
                    <input type="text" id="orangeForm-name" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
                </div>
                <div class="md-form mb-5">
                    <i class="fa fa-envelope prefix grey-text"></i>
                    <input type="email" id="orangeForm-email" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
                </div>

                <div class="md-form mb-4">
                    <i class="fa fa-lock prefix grey-text"></i>
                    <input type="password" id="orangeForm-pass" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
                </div>

            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-deep-orange">Sign up</button>
            </div>
        </div>
    </div>
</div>

<div class="text-center">
    <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalRegisterForm">Launch Modal Register Form</a>
</div>


<script type="text/javascript">
$("#_btnLogin").click(function() {
	
	if($("#_userid").val() == ""){
		alert($("#_userid").attr("data-msg") + " 입력해 주십시오" );
		$("#_userid").focus();
	} else if($("#_pwd").val() == ""){
		alert($("#_pwd").attr("data-msg") + " 입력해 주십시오" );
		$("#_pwd").focus();
	} else{
		$("#_frmForm").attr("target", "_self").submit();
	}	
		
});

$("#_btnRegi").click(function() {
	location.href = "regi.do";
});

$("#_userid").keypress(function(event) {
	if(event.which == "13"){
		event.preventDefault();
		$("#_pwd").focus();
	}
});

$("#_pwd").keypress(function() {
	if(event.which == "13"){
		event.preventDefault();
		$("#_btnLogin").click();
	}
});

</script>
</body>
</html>