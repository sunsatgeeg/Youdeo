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
            <div class="container-fluid upload-details">
               <div class="row">
                  <div class="col-lg-6">
                     <div class="main-title">
                        <h6>Settings</h6>
                     </div>
                  </div>
               </div>
               <form name="f" id="f">
                  <div class="row">
                     <div class="col-sm-8">
						<div class="alert profileAlert" style="display:none"></div>
                     	<div class="box mb-4">
                     		<label class="control-label mb-4">프로필 사진 <span class="required"></span></label>
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
							            	<button type="button" class="btn btn-primary" id="profileSubmitBtn"  aria-label="프로필 사진 추가">
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
						    <div class="text-right profilebtn" style="display:none">
						    	<button class="btn btn-outline-secondary" type="button" >저장</button>
					    	</div>
                     	</div>
                     	<div class="alert bannerAlert" style="display:none"></div>
                     	<div class="box mb-4">
                     		<label class="control-label mb-4">채널 배너 <span class="required"></span></label>
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
						    <div class="text-right bannerbtn" style="display:none">
						    	<button class="btn btn-outline-secondary" type="button" >저장</button>
					    	</div>
                     	</div>
                     	<div class="box mb-4">
	                        <div class="form-group">
	                           <label class="control-label">ID <span class="required"></span></label>
	                           <input class="form-control border-form-control" value="${user.u_id }" disabled="" type="text">
	                        </div>
	                        <div class="form-group">
	                        	<!-- restControll -->
	                           <label class="control-label">NAME <span class="required">*</span></label>
	                           <input class="form-control border-form-control" value="${user.u_name}" type="text">
	                        </div>
	                        <div class="form-group">
	                           <label class="control-label">EMAIL <span class="required">*</span></label>
	                           <input class="form-control border-form-control " value="${user.u_email}" type="email">
	                        </div>
	                        <div class="form-group">
	                           <label class="control-label">PHONE NUMBER <span class="required">*</span></label>
	                           <input class="form-control border-form-control " value="${user.u_phone}" type="text">
	                        </div>
                        </div>
                        <div class="box mb-4">
	                        <div class="form-group">
	                           <label class="control-label">PASSWORD <span class="required">*</span></label>
	                           <input class="form-control border-form-control" value="" type="password">
	                        </div>
	                        <div class="form-group">
	                           <label class="control-label">NEW PASSWORD <span class="required">*</span></label>
	                           <input class="form-control border-form-control " type="password">
	                        </div>
	                        <div class="form-group">
	                           <label class="control-label">NEW PASSWORD CONFIRM <span class="required">*</span></label>
	                           <input class="form-control border-form-control " type="password">
	                        </div>
	                    </div>
                     </div>
                  </div>
               </form>
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
      
	  <script type="text/javascript">
	  		// 프로필 사진 업데이트 스크립트
	  		
	  		$(document).ready(function() {
				$("#profileSubmitBtn").click(function(){
					$("#profileAttachFile").click();
				})
			});
	  		
	  		// 추가한 사진 미리보기
			$("#profileAttachFile").change(function(){
				$('.profilebtn').show();
				
	   			if(this.files && this.files[0]) {
		    		var reader = new FileReader;
			    	reader.onload = function(data) {
			     		$(".gNHAJv .thum").attr("style", 'background-image:url("'+data.target.result+'"');        
		    		}
			    	reader.readAsDataURL(this.files[0]);
	   			}
			});
			     		
			//파일 업로드
			$('.profilebtn .btn').click(function(){
				var form = $('#profileAttachFile')[0].files[0];
				var formData = new FormData();
				var fileSize = form.size;
				
				if(fileSize >= 3000000){
					$('.col-sm-8 .profileAlert').fadeTo(2000, 500).slideUp(500, function(){
					    $('.col-sm-8 .profileAlert').slideUp(500);
					});
					$('.profilebtn').hide();
					$('.col-sm-8 .profileAlert').removeClass('alert-success')
					$('.col-sm-8 .profileAlert').addClass('alert-danger');
					$('.col-sm-8 .profileAlert').text('이미지가 3MB를 초과합니다.');
					
					return;
				}
				
				formData.append('profileAttachFile', form);
				$.ajax({
				       type: "POST",
				       enctype: 'multipart/form-data',
				       url: "profile_image_upload_action",
				       data: formData,
				       processData: false,
				       contentType: false,
				       cache: false,
				       timeout: 600000,
				       success:function(result) {
							if(result=='true'){
								$('.col-sm-8 .profileAlert').fadeTo(2000, 500).slideUp(500, function(){
								    $('.col-sm-8 .profileAlert').slideUp(500);
								});
								$('.profilebtn').hide();
								$('.col-sm-8 .profileAlert').text('프로필 이미지를 업데이트하였습니다.');
								$('.col-sm-8 .profileAlert').removeClass('alert-danger')
								$('.col-sm-8 .profileAlert').addClass('alert-success')
							}
			           }
				});
			});		
	  </script>
	  
	  <script type="text/javascript">
	  		// 배너 업데이트 스크립트
	  		
	  		$(document).ready(function() {
				$("#bannerSubmitBtn").click(function(){
					$("#bannerAttachFile").click();
				})
			});
	  		
	  		// 추가한 사진 미리보기
			$("#bannerAttachFile").change(function(){
				$('.bannerbtn').show();
				
	   			if(this.files && this.files[0]) {
		    		var reader = new FileReader;
			    	reader.onload = function(data) {
			     		$(".gNHAJq .thum").attr("style", 'background-image:url("'+data.target.result+'"');        
		    		}
			    	reader.readAsDataURL(this.files[0]);
	   			}
			});
			     		
			//파일 업로드
			$('.bannerbtn .btn').click(function(){
				var form = $('#bannerAttachFile')[0].files[0];
				var formData = new FormData();
				var fileSize = form.size;
				
				if(fileSize >= 3000000){
					$(".col-sm-8 .bannerAlert").fadeTo(2000, 500).slideUp(500, function(){
					    $(".col-sm-8 .bannerAlert").slideUp(500);
					});
					$('.profilebtn').hide();
					$('.col-sm-8 .bannerAlert').removeClass('alert-success')
					$('.col-sm-8 .bannerAlert').addClass('alert-danger');
					$('.col-sm-8 .bannerAlert').text('이미지가 3MB를 초과합니다.');
					
					return;
				}
				
				formData.append('bannerAttachFile', form);
				$.ajax({
				       type: "POST",
				       enctype: 'multipart/form-data',
				       url: "banner_image_upload_action",
				       data: formData,
				       processData: false,
				       contentType: false,
				       cache: false,
				       timeout: 600000,
				       success:function(result) {
							if(result=='true'){
								$(".col-sm-8 .bannerAlert").fadeTo(2000, 500).slideUp(500, function(){
								    $(".col-sm-8 .bannerAlert").slideUp(500);
								});
								$('.profilebtn').hide();
								$('.col-sm-8 .bannerAlert').text('배너 이미지를 업데이트하였습니다.');
								$('.col-sm-8 .bannerAlert').removeClass('alert-danger')
								$('.col-sm-8 .bannerAlert').addClass('alert-success')
							}
			           }
				});
			});		
	  </script>
   </body>
</html>