<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div class="container-fluid pt-5 pb-5">
				<div class="row">
					<div class="col-md-8 mx-auto text-center upload-video pt-5 pb-5">
						<h1>
							<i id="zone" class="fas fa-file-upload file-empty"></i>
						</h1>
						<h4 class="mt-5">Select Video files to upload</h4>
						<p class="land">or drag and drop video files</p>
						<div class="mt-4">
							<input type="file" id="videoAttachFile" multiple="multiple">
							<button type="button" class="btn btn-outline-primary" id="videoSubmitBtn">Upload Video</a>
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

	<script type="text/javascript">

		var $drop = $('#zone');

		$drop.on("dragenter", function(e) { //In
			e.stopPropagation();
			e.preventDefault();
			
			$('.fa-file-upload').addClass('file-in')
		}).on("dragleave", function(e) { //Out
			e.stopPropagation();
			e.preventDefault();
			
			$('.fa-file-upload').removeClass('file-in')
		}).on("dragover", function(e) {
			e.stopPropagation();
			e.preventDefault();
			
		}).on('drop', function(e) { //Drop
			e.preventDefault();
			var formData = new FormData();	
		
			formData.append('videoAttachFile', e.originalEvent.dataTransfer.files);
			$.ajax({
				type : 'POST',
				url : 'upload_video',
				data : formData,
				processData : false,
				contentType : false,
				cache : false,
				timeout : 600000,
				success : function(result) {
					if (result == 'true') {
						alert('드랙');
					}
				}
			});
		});

		$('#videoSubmitBtn').click(function() {
			var form = $('#videoAttachFile')[0].files[0];
			var formData = new FormData();

			formData.append('videoAttachFile', form);
			$.ajax({
				type : 'POST',
				url : 'upload_video',
				data : formData,
				processData : false,
				contentType : false,
				cache : false,
				timeout : 600000,
				success : function(result) {
					if (result == 'true') {
						alert('드랙');
					}
				}
			});
		});
	</script>
</body>
</html>