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
			<div class="container-fluid pb-0">
				<div class="row">
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-primary o-hidden h-100 border-none">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-users"></i>
								</div>
								<div class="mr-5">
									<b>26</b> Channels
								</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#"> <span class="float-left">View Details</span> <span class="float-right"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-warning o-hidden h-100 border-none">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-video"></i>
								</div>
								<div class="mr-5">
									<b>156</b> Videos
								</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#"> <span class="float-left">View Details</span> <span class="float-right"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-success o-hidden h-100 border-none">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-list-alt"></i>
								</div>
								<div class="mr-5">
									<b>123</b> Categories
								</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#"> <span class="float-left">View Details</span> <span class="float-right"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-danger o-hidden h-100 border-none">
							<div class="card-body">
								<div class="card-body-icon">
									<i class="fas fa-fw fa-cloud-upload-alt"></i>
								</div>
								<div class="mr-5">
									<b>13</b> New Videos
								</div>
							</div>
							<a class="card-footer text-white clearfix small z-1" href="#"> <span class="float-left">View Details</span> <span class="float-right"> <i class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
				</div>
				<hr>
				<div class="video-block section-padding">
					<div class="row">
						<div class="col-md-12">
							<div class="main-title">
								<div class="btn-group float-right right-action">
									<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
									</a>
									<div class="dropdown-menu dropdown-menu-right">
										<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
									</div>
								</div>
								<h6>My Videos</h6>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 mb-3">
							<div class="video-card">
								<div class="video-card-image">
									<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v5.png" alt=""></a>
									<div class="time">3:50</div>
								</div>
								<div class="video-card-body">
									<div class="video-title">
										<a href="#">There are many variations of passages of Lorem</a>
									</div>
									<div class="video-page text-success">
										Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
									</div>
									<div class="video-view">
										1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 mb-3">
							<div class="video-card">
								<div class="video-card-image">
									<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v6.png" alt=""></a>
									<div class="time">3:50</div>
								</div>
								<div class="video-card-body">
									<div class="video-title">
										<a href="#">There are many variations of passages of Lorem</a>
									</div>
									<div class="video-page text-danger">
										Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Unverified"><i class="fas fa-frown text-danger"></i></a>
									</div>
									<div class="video-view">
										1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 mb-3">
							<div class="video-card">
								<div class="video-card-image">
									<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v7.png" alt=""></a>
									<div class="time">3:50</div>
								</div>
								<div class="video-card-body">
									<div class="video-title">
										<a href="#">There are many variations of passages of Lorem</a>
									</div>
									<div class="video-page text-success">
										Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
									</div>
									<div class="video-view">
										1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 mb-3">
							<div class="video-card">
								<div class="video-card-image">
									<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v8.png" alt=""></a>
									<div class="time">3:50</div>
								</div>
								<div class="video-card-body">
									<div class="video-title">
										<a href="#">There are many variations of passages of Lorem</a>
									</div>
									<div class="video-page text-success">
										Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
									</div>
									<div class="video-view">
										1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
									</div>
								</div>
							</div>
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
</body>
</html>