<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>2학년 4반 한종걸 수행평가</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  
  <script src = "/WebClass/js/menu.js"></script>
  
  <link rel="stylesheet" type = "text/css" href = "/WebClass/css/container.css">
  
  </head>
  <body>
  
    
  <nav class="navbar navbar-expand-lg navbar-dark bg-success navbar-fixed-top">
  <a class="navbar-brand" href="myblog.html">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout = "menu_out(this);">
        <a class="nav-link" href="profile.html">Profile <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout = "menu_out(this);">
        <a class="nav-link" href="hobby.html">hobby</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout = "menu_out(this);">
        <a class="nav-link " href="like.html">like</a>
      </li>
    </ul>
    
    <% 
		UserVO user = (UserVO)session.getAttribute("user");
		if(user ==null){
			
	%>
    <form class="form-inline my-2 my-lg-0" id="LoginForm" >
      <input class="form-control mr-sm-2" type="email" placeholder="ID" aria-label="ID" id="id" required>
      <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id="pwd" required>
      <button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Login</button>
    </form>
        <button class="btn btn-outline-warning my-2 my-sm-0" type="button" onclick = "location.href = 'register.html'">Register</button>
	<a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	      </a>
	      <% }else{%>
	      
	      <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%= user.getName() + "님" %>
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form action = "/WebClass/bloglogout" method = "post">
	      	<button type="submit" class="dropdown-item">Sign out</button>
	       	<div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	        </form>
	      </div>
	    </li>
	    </ul>
	    <% }%>
  </div>
</nav>

<div class = "container">
    <h1>Hello, Bootstrap!</h1>
    
   <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>
   
 <div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
  
  <script>
	<%-- 회원 가입이 실패한 경우 처리 추가 --%>
	<%--
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Sign Up Error');
		myModal.find('.modal-body').text('회원 가입 시 오류가 발생하였습니다.');
		myModal.modal();
	--%>
	$(document).ready(function()	{
		  
		  $('#LoginForm').submit(function (event){
			  //submit되는 것을 막기
			  event.preventDefault();
			  
			  
		  		//id, pwd 값 가져오기
		  		//console.log("start");
			  var id = $("#id").val();		//document.getElementById("id").value
			  var pwd = $("#pwd").val();
			  
		 	 console.log(id, pwd);
		 	 
		 	 //서버로 post 방식 전송(ajax)
		 	 $.post("/WebClass/bloglogin",
		 			 {id: id, pwd: pwd},
		 			 function(data){
		 				
		 				if(data.error){
		 					location.href = "/WebClass/myblog/myblog.jsp"
		 				}else { 
		 					// 서버로부터 응답을 받으면
		 					// alert(data.form.id + '님 로그인 되었습니다');
							var myModal = $('#myModal');
							myModal.modal();
							myModal.find('.modal-body').text('회원 가입시 오류가 발생하였습니다');
							$('#pwd').val('');
							
		 				}
		 			 });
		 	 
		  });
	});
	
</script>
  
  
  
  
  
  
  
  </body>
</html>