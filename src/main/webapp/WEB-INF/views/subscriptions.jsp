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
<body id="page-top">
	<!-- header -->
	<jsp:include page="include_common_top.jsp" />
	<!-- wrapper start -->
	<div id="wrapper">
		<!-- navigation -->
		<jsp:include page="include_common_left.jsp" />
		<div id="content-wrapper">
			<div class="container-fluid pb-0">
				<div class="video-block subvideo-section section-padding">
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
								<h6>Featured Videos</h6>
							</div>
						</div>
						<input type="text" id="video_last_no" value="${vidLastNo }" hidden="">
						<c:forEach items="${subVideoList}" var="video">
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="video-card">
									<div class="video-card-image">
										<a class="play-icon" href="watch?v_no=${video.v_no}"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="video/${video.v_uuid}_i.png" alt=""></a>
										<div class="time">${video.v_time }</div>
									</div>
									<div class="video-card-body">
										<div class="video-title">
											<a href="watch?v_no=${video.v_no}">${video.v_title}</a>
										</div>
										<div class="video-view">
											<span class="video-views">${video.v_views}</span>
											&nbsp;
											<i class="fas fa-calendar-alt"></i><span class="video-date">${video.v_date}</span>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						
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
		changeDate();
		chageView();
		changePlayTime();
	</script>
</body>
</html>