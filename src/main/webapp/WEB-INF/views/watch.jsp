<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<!-- header end -->
	<!-- wrapper start -->
	<div id="wrapper">
		<jsp:include page="include_common_left.jsp" />
		<div id="content-wrapper">
			<div class="container-fluid pb-0">
				<div class="video-block section-padding">
					<div class="row">
						<div class="col-md-10">
							<div class="single-video-left">
								<div class="single-video">
									<video id="videoplay" width="100%" preload="metadata" controls autoplay>
										<source src="vid/${video.v_uuid}">
									</video>
								</div>
								<div class="single-video-title box mb-3">
									<h2>${video.v_title }</h2>
									<p class="mb-0">
										<i class="fas fa-eye"></i> <span class="video-views">${video.v_views}</span> <small> · <span class="video-date">${video.v_date }</span></small>
									</p>
								</div>
								<div class="single-video-author box mb-3">
									<div class="float-right">
										<button class="btn btn-danger Subscribebtn" type="button" id="${video.user.u_id }">Subscribe</button>
									</div>
									<a href="user?u_id=${video.user.u_id}"><img class="img-fluid" src="img/user/${video.user.u_profileimg }" alt=""></a>
									<p>
										<a href="user?u_id=${video.user.u_id}"><strong>${video.user.u_name }</strong></a> <span class="verified" title="" data-placement="top" data-toggle="tooltip" data-original-title="Verified" id="${video.user.u_verified}"><i class="fas fa-check-circle text-success"></i></span>
									</p>
									구독자 : <strong>${sub.s_count }명</strong>
								</div>
								<div class="single-video-info-content box mb-3">
									<h6>About :</h6>
									<p>${video.v_description}</p>
								</div>
								<div class="mb-1 single-video-comment-tabs">
									<div class="tab-content">
										<div class="tab-pane fade active show" id="retro-comments" role="tabpanel" aria-labelledby="retro-comments-tab">
											<div class="reviews-members pt-0">
												<div class="media">
													<input type="text" value="${video.v_no }" id="v_no" hidden="">
													<input type="text" value="${cmtLastNo }" id="cmt_last_no" hidden="">
													<c:choose>
														<c:when test="${!empty(sUserId)}">
															<a href="user?u_id=${sUserId }"><img class="mr-3" src="img/user/${sUserImage}" alt="Generic placeholder image"></a>
															<div class="media-body">
																<div class="form-members-body">
																	<input type="text" value="${sUserId }" id="u_id" hidden="">
																	<input type="text" value="${sUser.u_name }" id="u_name" hidden="">
																	<textarea rows="2" placeholder="Add a public comment..." id="c_content" class="form-control"></textarea>		
																</div>
														</c:when>
														<c:otherwise>
															<a><img class="mr-3" src="img/user/none.png" alt="Generic placeholder image"></a>
															<div class="media-body">
																<div class="form-members-body">
																	<textarea rows="2" placeholder="Add a public comment..." class="form-control" onclick="location.href='login'"></textarea>
																</div>
														</c:otherwise>
													</c:choose>
														<div class="form-members-footer text-right mt-2">
															<button class="btn btn-primary btn-sm cmtSubmitBtn" type="button">COMMENT</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="commentList mb-3">
									<c:forEach items="${cmtList}" var="cmt">
										<div class="reviews-members">
											<div class="media">
												<a href="user?u_id=${cmt.user.u_id }"><img class="mr-3" src="img/user/${cmt.user.u_profileimg }" alt="Generic placeholder image"></a>
												<div class="media-body">
													<div class="reviews-members-header">
														<h6 class="mb-1">
															<a class="text-black" href="user?u_id=${cmt.user.u_id }">${cmt.user.u_name} </a> <small class="text-gray"><span class="video-date">${cmt.c_date}</span></small>
														</h6>
													</div>
													<div class="reviews-members-body">
														<pre>${cmt.c_content}</pre>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="single-video-right">
								<input type="text" id="video_last_no" value="${vidLastNo }" hidden="">
								<div class="row">
									<div class="col-md-12">
										<div class="adblock">
											<div class="img">
												Google AdSense<br> 336 x 280
											</div>
										</div>
										<div class="main-title">
											<h6>Up Next</h6>
										</div>
									</div>

									<c:forEach items="${videoList}" var="othervideo">
										<c:choose>
											<c:when test="${video.v_no != othervideo.v_no}">
												<div class="col-md-12">
													<div class="video-card video-card-list">
														<div class="video-card-image">
															<a class="play-icon" href="watch?v_no=${othervideo.v_no}"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="video/${othervideo.v_uuid}_i.png" alt=""></a>
															<div class="time">${othervideo.v_time }</div>
														</div>
														<div class="video-card-body">
															<div class="video-title">
																<a href="#">${othervideo.v_title}</a>
															</div>
															<div class="video-view">
																<span class="video-views">${othervideo.v_views}</span> &nbsp; <i class="fas fa-calendar-alt"></i><span class="video-date">${othervideo.v_date }</span>
															</div>
														</div>
													</div>
												</div>
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- wrapper end -->
			<!-- bottom start -->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- bottom end -->
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