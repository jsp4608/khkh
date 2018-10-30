<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
 <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Bootstrap core CSS -->
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="resources/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="resources/css/style.min.css" rel="stylesheet">
</head>
<body>


<!-- Default form register -->
<form class="text-center border border-light p-5" id="_frmForm">
	
    <p class="h4 mb-4" >회원가입</p>
    <div style="padding: 25%; padding-top: 5%; padding-bottom: 5%">
    <!-- 이미지 -->
    <img id="img" 
	style="height: 200px; width: 200px"
	src="https://user-images.githubusercontent.com/38531104/45137275-e0615300-b1e2-11e8-9dbb-05378ea956b6.png"
	class="rounded-circle mr-3" height="50px" width="50px" alt="">
    
    <input type='file' id="imgInp" />
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
</form>
<!-- Default form register -->

<script type="text/javascript">
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
		$("#_frmForm").attr({"target":"_self", "action":"regiAf.do" }).submit();
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
			$('#img').attr('src', e.target.result);

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