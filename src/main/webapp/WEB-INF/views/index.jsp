<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Askbootstrap">
<meta name="author" content="Askbootstrap">
<title><s:message code="index.title" /></title>
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
				<!-- mobile search -->
				<div class="top-mobile-search">
					<div class="row">
						<div class="col-md-12">
							<form class="mobile-search">
								<div class="input-group">
									<input type="text" placeholder="<s:message code="searchfor"/>" class="form-control">
									<div class="input-group-append">
										<button type="button" class="btn btn-dark">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="top-category section-padding mb-4">
					<div class="row">
						<div class="col-md-12">
							<div class="main-title">
								<c:choose>
									<c:when test="${!empty(sUserId)}">
										<h6>
											<s:message code="subscriptions" />
										</h6>
									</c:when>
									<c:otherwise>
										<h6>
											<s:message code="index.popularchannels" />
										</h6>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="col-md-12">
								<div class="owl-carousel owl-carousel-category">
									<c:forEach items="${subList}" var="sub">
										<div class="item">
											<div class="category-item">
												<a href="user?u_id=${sub.s_id}"> <img class="img-fluid profile" src="img/user/${sub.user.u_profileimg}" alt="">
													<h6>${sub.s_id}
														<span class="verified" title="" data-placement="top" data-toggle="tooltip" data-original-title="Verified" id="${sub.user.u_verified}">
														<i class="fas fa-check-circle text-success"></i></span>
													</h6>
													<p>${sub.s_count} subscribers</p>
												</a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<div class="video-block section-padding">
					<div class="row">
						<div class="col-md-12">
							<div class="main-title">
								<h6>
									<s:message code="index.featuredvideo" />
								</h6>
							</div>
						</div>
						<input type="text" id="video_last_no" value="${vidLastNo }" hidden="">
						<c:forEach items="${videoList}" var="video">
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="video-card">
									<div class="video-card-image">
										<a class="play-icon" href="watch?v_no=${video.v_no}"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="video/${video.v_uuid}_i.png" alt=""></a>
										<div class="time">${video.v_time }</div>
									</div>
									<div class="video-card-body">
										<div class="video-title">
											<a href="#">${video.v_title}</a>
										</div>
										<div class="video-view">
											<span class="video-views">${video.v_views}</span>
											&nbsp;
											<i class="fas fa-calendar-alt"></i><span class="video-date">${video.v_date }</span>
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
</body>
</html>