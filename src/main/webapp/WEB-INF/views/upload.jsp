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
		<!-- header start -->
		<jsp:include page="include_common_top.jsp"/>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
			<jsp:include page="include_common_left.jsp"/>
		</div>
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
         <div id="content-wrapper">
            <div class="container-fluid pt-5 pb-5">
               <div class="row">
                  <div class="col-md-8 mx-auto text-center upload-video pt-5 pb-5">
                     <h1><i class="fas fa-file-upload text-primary"></i></h1>
                     <h4 class="mt-5">Select Video files to upload</h4>
                     <p class="land">or drag and drop video files</p>
                     <div class="mt-4">
                        <a class="btn btn-outline-primary" href="upload_video">Upload Video</a>
                     </div>
                  </div>
               </div>
            </div>
			<!-- wrapper end -->
			<!-- bottom start -->
			<div id="footer">
				<jsp:include page="include_common_bottom.jsp"/>
			</div>
			<!-- bottom end -->
	   </div>
	</div>
	<!-- Scroll to Top Button -->
	<div id="scrollButton">
		<jsp:include page="include_common_scroll_button.jsp"/>
	</div>

      <!-- Bootstrap core JavaScript-->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Core plugin JavaScript-->
      <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
      <!-- Owl Carousel -->
      <script src="vendor/owl-carousel/owl.carousel.js"></script>
      <!-- Custom scripts for all pages-->
      <script src="js/custom.js"></script>
   </body>
</html>