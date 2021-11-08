<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Askbootstrap">
<meta name="author" content="Askbootstrap">
<title>VIDOE - Video Streaming Website HTML Template</title>
<!-- Favicon Icon -->
<link rel="icon" type="image/png" href="img/favicon.png">
<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="css/osahan.css" rel="stylesheet">
<!-- Owl Carousel -->
<link rel="stylesheet" href="vendor/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="vendor/owl-carousel/owl.theme.css">
</head>
<body class="login-main-body">
	<section class="login-main-wrapper">
		<div class="container-fluid pl-0 pr-0">
			<div class="row no-gutters">
				<div class="col-md-5 p-5 bg-white full-height">
					<div class="login-main-left">
						<div class="text-center mb-5 login-main-left-header pt-4">
							<img src="img/favicon.png" class="img-fluid" alt="LOGO">
							<h5 class="mt-3 mb-3">Welcome to Vidoe</h5>
							<p>
								It is a long established fact that a reader <br> will be distracted by the readable.
							</p>
						</div>
						<form id="f">
							<div class="form-group">
								<label>아이디</label> <input name="u_id" id="u_id" type="text" class="form-control" value="${fuser.u_id}">
							</div>
							<div class="form-group">
								<label>비밀번호</label> <input name="u_password" id="u_password" type="password" class="form-control" value="${fuser.u_password}">
							</div>
							<div class="form-group">
								<label>비밀번호 확인</label> <input name="u_password2" id="u_password2" type="password" class="form-control" value="${fuser.u_id}">
							</div>
							<div class="form-group">
								<label>이름</label> <input name="u_name" id="u_name" type="text" class="form-control" value="${fuser.u_name}">
							</div>
							<div class="form-group">
								<label>이메일</label> <input name="u_email" id="u_email" type="text" class="form-control" value="${fuser.u_email}">
							</div>
							<div class="form-group">
								<label>휴대폰번호</label> <input name="u_phone" id="u_phone" type="text" class="form-control" value="${fuser.u_phone}">
							</div>
							<div class="mt-4">
								<button id="register_btn" class="btn btn-outline-primary btn-block btn-lg">Sign Up</button>
							</div>
						</form>
						<div class="text-center mt-5">
							<p class="light-gray">
								Already have an Account? <a href="login">Sign In</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-7">
					<div class="login-main-right bg-white p-5 mt-5 mb-5">
						<div class="owl-carousel owl-carousel-login">
							<div class="item">
								<div class="carousel-login-card text-center">
									<img src="img/login.png" class="img-fluid" alt="LOGO">
									<h5 class="mt-5 mb-3">​Watch videos offline</h5>
									<p class="mb-4">
										when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries
									</p>
								</div>
							</div>
							<div class="item">
								<div class="carousel-login-card text-center">
									<img src="img/login.png" class="img-fluid" alt="LOGO">
									<h5 class="mt-5 mb-3">Download videos effortlessly</h5>
									<p class="mb-4">
										when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries
									</p>
								</div>
							</div>
							<div class="item">
								<div class="carousel-login-card text-center">
									<img src="img/login.png" class="img-fluid" alt="LOGO">
									<h5 class="mt-5 mb-3">Create GIFs</h5>
									<p class="mb-4">
										when an unknown printer took a galley of type and scrambled<br> it to make a type specimen book. It has survived not <br>only five centuries
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Owl Carousel -->
	<script src="vendor/owl-carousel/owl.carousel.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="js/custom.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
</body>
</html>