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
            <div class="container-fluid">
               <div class="video-block section-padding">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="main-title">
                           <div class="btn-group float-right right-action">
                              <a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                              </a>
                              <div class="dropdown-menu dropdown-menu-right">
                                 <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                                 <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                                 <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
                              </div>
                           </div>
                           <h6>Blank Page</h6>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <button type="button" class="btn btn-primary border-none">Primary</button>
                        <button type="button" class="btn btn-secondary border-none">Secondary</button>
                        <button type="button" class="btn btn-success border-none">Success</button>
                        <button type="button" class="btn btn-danger border-none">Danger</button>
                        <button type="button" class="btn btn-warning border-none">Warning</button>
                        <button type="button" class="btn btn-info border-none">Info</button>
                        <button type="button" class="btn btn-light border-none">Light</button>
                        <button type="button" class="btn btn-dark border-none">Dark</button>
                        <button type="button" class="btn btn-link border-none">Link</button>
                        <hr>
                        <button type="button" class="btn btn-outline-primary">Primary</button>
                        <button type="button" class="btn btn-outline-secondary">Secondary</button>
                        <button type="button" class="btn btn-outline-success">Success</button>
                        <button type="button" class="btn btn-outline-danger">Danger</button>
                        <button type="button" class="btn btn-outline-warning">Warning</button>
                        <button type="button" class="btn btn-outline-info">Info</button>
                        <button type="button" class="btn btn-outline-light">Light</button>
                        <button type="button" class="btn btn-outline-dark">Dark</button>
                        <hr>
                        <button type="button" class="btn btn-primary btn-lg border-none">Large button</button>
                        <button type="button" class="btn btn-secondary btn-lg border-none">Large button</button>
                        <hr>
                        <button type="button" class="btn btn-primary btn-sm border-none">Small button</button>
                        <button type="button" class="btn btn-secondary btn-sm border-none">Small button</button>
                        <hr>
                        <button type="button" class="btn btn-primary btn-lg btn-block border-none">Block level button</button>
                        <button type="button" class="btn btn-secondary btn-lg btn-block border-none">Block level button</button>
                        <hr>
                        <div class="alert alert-primary" role="alert">
                           A simple primary alert—check it out!
                        </div>
                        <div class="alert alert-secondary" role="alert">
                           A simple secondary alert—check it out!
                        </div>
                        <div class="alert alert-success" role="alert">
                           A simple success alert—check it out!
                        </div>
                        <div class="alert alert-danger" role="alert">
                           A simple danger alert—check it out!
                        </div>
                        <div class="alert alert-warning" role="alert">
                           A simple warning alert—check it out!
                        </div>
                        <div class="alert alert-info" role="alert">
                           A simple info alert—check it out!
                        </div>
                        <div class="alert alert-light" role="alert">
                           A simple light alert—check it out!
                        </div>
                        <div class="alert alert-dark mb-0" role="alert">
                           A simple dark alert—check it out!
                        </div>
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