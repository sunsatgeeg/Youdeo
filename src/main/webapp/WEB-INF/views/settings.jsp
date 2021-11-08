<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body id="page-top">
	<!-- header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- wrapper start -->
	<div id="wrapper">
		<!-- navigation -->
		<jsp:include page="include_common_left.jsp" />
		<div id="content-wrapper">
			<div class="container-fluid upload-details">
				<div class="row">
					<div class="col-lg-6">
						<div class="main-title">
							<h6>Settings</h6>
						</div>
					</div>
				</div>
				<form name="f">
					<div class="row userSetting">
						<div class="col-sm-8">
							<div class="alert profileAlert" style="display: none"></div>
							<div class="box mb-4">
								<label class="control-label mb-4">프로필 사진 <span class="required"></span>
								</label>
								<div class="irkKdr">
									<div class="SpXOZ">
										<div>
											<div aria-label="프로필 사진" class="gNHAJv">
												<div class="thum" style="background-image:url(&quot;img/user/${user.u_profileimg}&quot;);"></div>
											</div>
										</div>
									</div>
									<div class="bPViAU">
										<input type="file" id="profileAttachFile" accept=".jpg, .jpeg, .png" class="profile-image-setting__input">
										<div class="jLsLts">
											<button type="button" class="btn btn-primary" id="profileSubmitBtn" aria-label="프로필 사진 추가">
												<div class="evtFDZ">
													<div class="eZactg">
														<div class="kHhUsg">프로필 사진 추가</div>
													</div>
												</div>
											</button>
										</div>
										<div class="iIAhIi">
											<p class="gfSnfA">3MB 이내의 JPEG, PNG형식이어야 합니다.</p>
										</div>
									</div>
								</div>
								<div class="text-right profilebtn" style="display: none">
									<button class="btn btn-outline-secondary" type="button">저장</button>
								</div>
							</div>
							<div class="alert bannerAlert" style="display: none"></div>
							<div class="box mb-4">
								<label class="control-label mb-4">채널 배너 <span class="required"></span>
								</label>
								<div class="irkKdr">
									<div class="SpXOQ">
										<div>
											<div aria-label="배너 사진" class="gNHAJq">
												<div class="thum" style="background-image:url(&quot;img/user/${user.u_bannerimg}&quot;);"></div>
											</div>
										</div>
									</div>
									<div class="bPViAU">
										<input type="file" id="bannerAttachFile" accept=".jpg, .jpeg, .png" class="profile-image-setting__input">
										<div class="jLsLts">
											<button type="button" class="btn btn-primary" id="bannerSubmitBtn" aria-label="배너 사진 추가">
												<div class="evtFDZ">
													<div class="eZactg">
														<div class="kHhUsg">배너 사진 추가</div>
													</div>
												</div>
											</button>
										</div>
										<div class="iIAhIi">
											<p class="gfSnfA">3MB 이내의 JPEG, PNG형식이어야 합니다.</p>
										</div>
									</div>
								</div>
								<div class="text-right bannerbtn" style="display: none">
									<button class="btn btn-outline-secondary" type="button">저장</button>
								</div>
							</div>
							<div class="box mb-4">
								<div class="form-group">
									<label class="control-label">ID</label>
									<input type="text" class="form-control" name="u_id" value="${user.u_id}" type="text" disabled="">
								</div>
								<div class="form-group">
									<!-- restControll -->
									<label class="control-label">NAME</label> 
									<input type="text" class="form-control" name="u_name" value="${user.u_name}" type="text">
								</div>
								<div class="form-group">
									<label class="control-label">EMAIL</label> 
									<input type="text" class="form-control" name="u_email" value="${user.u_email}" type="email">
								</div>
								<div class="form-group">
									<label class="control-label">PHONE NUMBER</label> 
									<input type="text" class="form-control" name="u_phone" value="${user.u_phone}" type="text">
								</div>
							</div>
							
							<!-- 비밀번호 변경 -->
							<div class="mt-4">
								<button type="button" class="btn btn-outline-primary btn-block btn-lg passwordbtn">비밀번호 변경</button>
							</div>
							
							<div class="box mb-4 passwordbox" style="display: none">
								<div class="form-group">
									<label class="control-label">PASSWORD</label> 
									<input type="password" class="form-control" name="u_password" value="" type="password">
								</div>
								<div class="form-group">
									<label class="control-label">NEW PASSWORD</label> 
									<input type="password" class="form-control" name="u_newpassword" type="password">
								</div>
								<div class="form-group">
									<label class="control-label">NEW PASSWORD CONFIRM</label> 
									<input type="password" class="form-control" name="u_newpassword2" type="password">
								</div>
							</div>
							<div class="mt-4">
								<button type="button" class="btn btn-outline-primary btn-block btn-lg settingUpdatebtn">저장</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			<!-- wrapper end -->
			<!-- bottom -->
			<jsp:include page="include_common_bottom.jsp" />
		</div>
	</div>
	<!-- Scroll to Top Button -->
	<jsp:include page="include_common_scroll_button.jsp" />

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