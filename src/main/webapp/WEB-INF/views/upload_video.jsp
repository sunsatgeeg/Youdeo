<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
				<div class="row uploadbefore">
					<div class="col-md-8 mx-auto text-center upload-video pt-5 pb-5">
						<h1>
							<i id="zone" class="fas fa-file-upload file-empty"></i>
						</h1>
						<h4 class="mt-5">Select Video files to upload</h4>
						<p class="land">or drag and drop video files</p>
						<div class="mt-4">
							<input type="file" id="videoAttachFile" multiple="multiple" hidden="">
							<button type="button" class="btn btn-outline-primary" id="videoSubmitBtn">Upload Video</button>
						</div>
					</div>
				</div>
				<div class="row uploadafter" style="display: none">
					<video id="videoplay" preload="metadata" src="" hidden=""></video>
					<div class="col-lg-12">
						<div class="main-title">
							<h6>Upload Details</h6>
						</div>
					</div>
					<div class="col-lg-4">
						<img class="img-fluid" src="" alt="">
					</div>
					<div class="col-lg-8 mb-auto mt-auto">
						<div class="thumbSelect" style="display: none">
							<input type="file" id="thumbnailAttachFile" accept=".jpg, .jpeg, .png" class="thumbnail-image-setting__input" style="display: none">
							<div class="jLsLts">
								<button type="button" class="btn btn-primary" id="thumbSubmitBtn" aria-label="????????? ?????? ?????????">
									<div class="evtFDZ">
										<div class="eZactg">
											<div class="kHhUsg">????????? ?????? ?????????</div>
										</div>
									</div>
								</button>
							</div>
							<div class="iIAhIi">
								<p class="gfSnfA">3MB ????????? JPEG, PNG??????????????? ?????????.</p>
							</div>
						</div>
						<div class="pbar">
							<div class="osahan-size">???</div>
							<div class="osahan-progress">
								<div class="progress">
									<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
								</div>
							</div>
							<div class="osahan-desc">Your Video is still uploading, please keep this page open until it's done.</div>
						</div>
					</div>
				<hr>
				</div>
				<hr>
				<input id="upload_action_check" type="text" hidden="" value="0">
				<div class="row uploadafter" style="display: none">
					<div class="col-lg-12">
						<div class="osahan-form">
							<form name='f'>
								<input id="originalFileName" name="uuidFile" type="text" hidden="">
								<input id="videoPlayTime" name="videoPlayTime" type="text" value="" hidden="">
								<div class="row">
									<div class="col-lg-12">
										<div class="form-group">
											<label for="e1">?????? ??????</label> <input type="text" placeholder="Contrary to popular belief, Lorem Ipsum (2019) is not." name="v_title" class="form-control">
										</div>
									</div>
									<div class="col-lg-12">
										<div class="form-group">
											<label for="e2">?????? ??????</label>
											<textarea rows="3" name="v_description" class="form-control" placeholder="Description"></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label for="e7">??????</label> <input type="text" placeholder="Gaming, PS4" name="v_tag" class="form-control">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="form-group">
											<label for="e5">????????????</label> 
											<select id="e5" name="v_category" class="custom-select">
												<option>??????/???????????????</option>
												<option>?????????/??????</option>
												<option>??????</option>
												<option>????????????/??????</option>
												<option>?????????</option>
												<option>??????/?????????</option>
												<option>??????</option>
												<option>??????/?????????</option>
												<option>?????????</option>
												<option>??????????????????</option>
												<option>??????/??????</option>
												<option>?????????/?????????</option>
												<option>??????</option>
												<option>????????????</option>
												<option>?????????/????????????</option>
											</select>
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="osahan-area text-center mt-3">
							<button class="btn btn-outline-primary uploadVideo">??????</button>
						</div>
						<hr>
						<div class="terms text-center">
							<p class="mb-0">
								There are many variations of passages of Lorem Ipsum available, but the majority <a href="#">Terms of Service</a> and <a href="#">Community Guidelines</a>.
							</p>
							<p class="hidden-xs mb-0">Ipsum is therefore always free from repetition, injected humour, or non</p>
						</div>
					</div>
				</div>
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
	<!-- 
	<script type="text/javascript">
		window.onbeforeunload = function() {
			if($('#upload_action_check').val()==1){
				return;
			}
			var formData = new FormData();
			formData.append('fileName', $('#originalFileName').val());
			$.ajax({
				type : 'POST',
				url : 'remove_data',
				data : formData,
				processData : false,
				contentType : false
			});
		}
	</script>
	 -->
</body>
</html>