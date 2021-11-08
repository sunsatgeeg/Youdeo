/*
Template Name: VIDOE - Video Streaming Website HTML Template
Author: Askbootstrap
Author URI: https://themeforest.net/user/askbootstrap
Version: 1.0
*/

// json 개행처리
function jsonEscape(str)  {
    return str.toString().replace(/\n/g, '\\\\n').replace(/\r/g, '\\\\r').replace(/\t/g, '\\\\t');
}

// 스크롤 맨 아래일때 영상 요청
$(window).scroll(function() {
	if($(window).scrollTop() + $(window).height() == $(document).height()) {
		$('.single-video-right').each(function(){
			var formData = new FormData();
			var last_no = $('#video_last_no').val();
			
			formData.append('last_no', last_no);
			$.ajax({
				type : 'GET',
				url : 'video_load?&last_no=' + last_no,
				dataType : 'json',
				success : function(jsonObject){
					if(jsonObject.count==0)return;
					var html='';
					
					$.each(jsonObject.data,function(i,videoJsonObject){
						html+=`<div class="col-md-12">
									<div class="video-card video-card-list">
										<div class="video-card-image">
											<a class="play-icon" href="watch?v_no=${videoJsonObject.no}"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="video/${videoJsonObject.uuid}_i.png" alt=""></a>
											<div class="time">${videoJsonObject.time}</div>
										</div>
										<div class="video-card-body">
											<div class="video-title">
												<a href="#">${videoJsonObject.title}</a>
											</div>
											<div class="video-view">
												<span class="video-views">${videoJsonObject.views}</span> &nbsp; <i class="fas fa-calendar-alt"></i><span class="video-date">${videoJsonObject.date}</span>
											</div>
										</div>
									</div>
								</div>`;
					});
					$('.single-video-right .row').append(html);
					$('#video_last_no').val(jsonObject.lastNo+1);
				}
			});
		});
	};
});
// Index
$(window).scroll(function() {
	if($(window).scrollTop() + $(window).height() == $(document).height()) {
		$('.container-fluid .video-block>.row>.col-md-12').each(function(){
			var formData = new FormData();
			var last_no = $('#video_last_no').val();
			
			formData.append('last_no', last_no);
			$.ajax({
				type : 'GET',
				url : 'video_load?&last_no=' + last_no,
				dataType : 'json',
				success : function(jsonObject){
					if(jsonObject.count==0)return;
					var html='';
					
					$.each(jsonObject.data,function(i,videoJsonObject){
						html+=`<div class="col-xl-3 col-sm-6 mb-3">
									<div class="video-card">
										<div class="video-card-image">
											<a class="play-icon" href="watch?v_no=${videoJsonObject.no}"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="video/${videoJsonObject.uuid}_i.png" alt=""></a>
											<div class="time">${videoJsonObject.time}</div>
										</div>
										<div class="video-card-body">
											<div class="video-title">
												<a href="#">${videoJsonObject.title}</a>
											</div>
											<div class="video-view">
												<span class="video-views">${videoJsonObject.views}</span> &nbsp; <i class="fas fa-calendar-alt"></i><span class="video-date">${videoJsonObject.date}</span>
											</div>
										</div>
									</div>
								</div>`;
					});
					$('.video-block .row').append(html);
					$('#video_last_no').val(jsonObject.lastNo+1);
				}
			});
		});
	};
});


// 스크롤 맨 아래일때 댓글 연속 요청
$(window).scroll(function() {
	if($(window).scrollTop() + $(window).height() == $(document).height()) {
		$('.commentList').each(function(){
			var formData = new FormData();
			var v_no = $('#v_no').val();
			var last_no = $('#cmt_last_no').val();
			
			formData.append('v_no', v_no);
			formData.append('last_no', last_no);
			$.ajax({
				type : 'GET',
				url : 'comment_load?v_no=' + v_no + '&last_no=' + last_no,
				dataType : 'json',
				success : function(jsonObject){
					if(jsonObject.count==0)return;
					var html='';
					
					$.each(jsonObject.data,function(i,cmtJsonObject){
						html+=`<div class="reviews-members">
						<div class="media">
							<a href="user?u_id=${cmtJsonObject.id}"><img class="mr-3" src="img/user/${cmtJsonObject.idimg}" alt="Generic placeholder image"></a>
							<div class="media-body">
								<div class="reviews-members-header">
									<h6 class="mb-1">
										<a class="text-black" href="user?u_id=${cmtJsonObject.id}">${cmtJsonObject.name} </a> <small class="text-gray"><span class="video-date">${cmtJsonObject.date}</span></small>
									</h6>
								</div>
								<div class="reviews-members-body">
									<pre>${cmtJsonObject.content}</pre>
								</div>
							</div>
						</div>
					</div>`;
					});
					
					$('.commentList').append(html);
					$('#cmt_last_no').val(jsonObject.lastNo);
				},
				error : function(errorData){
					var jsonObject = JSON.parse(jsonEscape(errorData.responseText));
					console.log(jsonObject);
					if(jsonObject.count==0)return;
					var html='';
					
					$.each(jsonObject.data,function(i,cmtJsonObject){
						html+=`<div class="reviews-members">
						<div class="media">
							<a href="user?u_id=${cmtJsonObject.id}"><img class="mr-3" src="img/user/${cmtJsonObject.idimg}" alt="Generic placeholder image"></a>
							<div class="media-body">
								<div class="reviews-members-header">
									<h6 class="mb-1">
										<a class="text-black" href="user?u_id=${cmtJsonObject.id}">${cmtJsonObject.name} </a> <small class="text-gray"><span class="video-date">${cmtJsonObject.date}</span></small>
									</h6>
								</div>
								<div class="reviews-members-body">
									<pre>${cmtJsonObject.content}</pre>
								</div>
							</div>
						</div>
					</div>`;
					});
					
					$('.commentList').append(html);
					$('#cmt_last_no').val(jsonObject.lastNo);
				}
			});
		});
	};
});

// 영상 댓글 남기기
$('.cmtSubmitBtn').click(function(){
	var formData = new FormData();
	var u_id = $('#u_id').val();
	var v_no = $('#v_no').val();
	var c_content = $('#c_content').val();
	
	formData.append('u_id', u_id);
	formData.append('v_no', v_no);
	formData.append('c_content', c_content);
	$.ajax({
		type : 'POST',
		url : 'comment_write_action',
		data : formData,
		processData : false,
		contentType : false
	}).done(function(msg) {
		if(msg == 'true'){
			var href = $('.reviews-members a').attr('href');
			var img = $('.reviews-members .mr-3').attr('src');
			var name = $('#u_name').val();
			$('#c_content').val('');
			$('#last_no').val();
			$('#cmt_last_no').val($('#cmt_last_no').val()+1);
			$('.commentList').prepend(`<div class="reviews-members">
											<div class="media">
												<a href="` + href + `"><img class="mr-3" src="` + img + `" alt="Generic placeholder image"></a>
												<div class="media-body">
													<div class="reviews-members-header">
														<h6 class="mb-1">
															<a class="text-black" href="` + href + `">` + name + ` </a> <small class="text-gray"><span class="video-date">0분 전</span></small>
														</h6>
													</div>
													<div class="reviews-members-body">
														<pre>` + c_content + `</pre>
													</div>
												</div>
											</div>
										</div>`);
		}else if(result[0]=='false'){
			$(location).attr('href', '404');
		}
	});
});

// 영상 날짜 단위 계산
$(function(){
	$('.video-date').each(function(){
		var result;
		var uploadDate = $(this).text();
		uploadDate = uploadDate.split(' ');
		
		uploadDateDate = uploadDate[0].split('-');
		uploadDateTime = uploadDate[1].split(':');
		
		var uploadDateYear = uploadDateDate[0];
		var uploadDateMonth = uploadDateDate[1];
		var uploadDateDay = uploadDateDate[2];
		var uploadDateHour = uploadDateTime[0];
		var uploadDateMinute = uploadDateTime[1];

		var now = new Date();
		var year = now.getFullYear();
		var month = now.getMonth()+1;
		var day = now.getDate();
		var hours = now.getHours();
		var minutes = now.getMinutes();
		
		var date1 = new Date(year, month, day, hours, minutes);
		var date2 = new Date(uploadDateYear, uploadDateMonth, uploadDateDay, uploadDateHour, uploadDateMinute);
		
		var laterDate = -((date2.getTime() - date1.getTime()) / 1000 / 60);
		 
		if(laterDate>=525600){
			result = parseInt(laterDate/525600) + '년 전';
		}else if(laterDate>=43200){ 
			result = parseInt(laterDate/43200) + '개월 전';
		}else if(laterDate>=1440){
			result = parseInt(laterDate/1440) + '일 전';
		}else if(laterDate>=60){
			result = parseInt(laterDate/60) + '시간 전';
		}else if(laterDate<60){
			result = laterDate + '분 전';
		}
		
		$(this).text(result);

	});
});

// 영상 조회수 단위 계산
$(function(){
	$('.video-views').each(function(){
		var result;
		var view = $(this).text();
		
		if(view.length>=5){
			result = Math.floor(view/1000)/1 + '만회';
		}else if(view.length>=4){
			result = Math.floor(view/100)/10 + '천회';
		}else{
			result = view + '회';
		}
		
		$(this).text(result);

	});
});

// 영상 재생시간 초 단위에서 시,분,초 계산
$(function(){
	$('.time').each(function(){
		var playTime = $(this).text();
		var result;
		
		var hour = parseInt(playTime/3600);
		var min = parseInt((playTime%3600)/60);
		if(10>min){
			min = '0' + min;
		}
		var sec = playTime%60;
		if(10>sec){
			sec = '0' + sec;
		}
		if(playTime>=3600){
			var result = hour + ':' + min + ':' + sec;
		}else if(playTime>=60){
			var result = min + ':' + sec;
		}else{
			var result = '0:' + playTime
		}
		
		$(this).text(result);
	});
});

// 접속해있는 url 주소값을 가져와 navbar에 active 
$(function(){
    var url = window.location.pathname,
	urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");  
    $('a').each(function(){
		if(urlRegExp.test(this.href.replace(/\/$/, ''))) {
            $(this).parent().addClass('active');
        }
    });
});

// 검증된 유저 표시
$(function() {
	$('.verified').each(function(){
		if($(this).attr('id')==1){
			$(this).show();
		}else if($(this).attr('id')==0){
			$(this).hide();
		}
	});
});

// 구독여부 표시
$(function(){
	$('.Subscribebtn').each(function(){
		var formData = new FormData();
		var targetid = $(this).attr('id');
		var sUserId = $('.navbar .sUserId').val();
		if(targetid == sUserId){
			$('.Subscribebtn').hide();
			return;
		}
		
		formData.append("target_s_id", targetid);
		$.ajax({
				type : 'POST',
				url : 'existedSubscriptionCheck',
				data : formData,
				processData : false,
				contentType : false
			}).done(function(msg) {
				if(msg=='true'){
					$('.Subscribebtn').removeClass('btn-danger');
					$('.Subscribebtn').addClass('btn-outline-secondary');
					$('.Subscribebtn').text('Subscribed');
				}else if(msg=='false'){
					$('.Subscribebtn').addClass('btn-danger');
					$('.Subscribebtn').removeClass('btn-outline-secondary');
					$('.Subscribebtn').text('Subscribe');
				}
			});
	});
});

// 구독버튼 클릭 이벤트
$('.Subscribebtn').click(function(){
	var formData = new FormData();
	var targetid = $(this).attr('id');
	var isSubscription = $('.Subscribebtn').hasClass('btn-outline-secondary');
	if($('.navbar .sUserId').val() == ''){
		$(location).attr('href', 'login')
	}
	
	formData.append("target_s_id", targetid);
	formData.append("isSubscription", isSubscription);
	$.ajax({
			type : 'POST',
			url : 'subscrideUser',
			data : formData,
			processData : false,
			contentType : false
		}).done(function(msg) {
			var result = msg.split('|');
			if(result[0]=='Subscribed'){
				var name = result[1];
				var img = result[2];
				$('.Subscribebtn').removeClass('btn-danger');
				$('.Subscribebtn').addClass('btn-outline-secondary');
				$('.Subscribebtn').text('Subscribed');
				$('.channel-sidebar-list #h6').after(`<ul>
														<li><a href="user?u_id=` + targetid + `"> <img class="channel-profile-img" alt="" src="img/user/` + img + `"> ` + name + `
														</a></li>
													</ul>`);
			}else if(result[0]=='Subscribe'){
				$('.Subscribebtn').addClass('btn-danger');
				$('.Subscribebtn').removeClass('btn-outline-secondary');
				$('.Subscribebtn').text('Subscribe');
				$('.channel-profile-img').each(function(){
					if($(this).parent().attr('href').split('=')[1]==targetid){
						$(this).parent().parent().parent().remove();
					}
				})
			};
		});
	
});

// 영상 업로드 > 썸네일 변경
$("#thumbSubmitBtn").click(function() {
	$("#thumbnailAttachFile").click();
});

$("#thumbnailAttachFile").change(function() {
	var form = $('#thumbnailAttachFile')[0].files[0];
	var formData = new FormData();
	
	var originalFileValue = $('.uploadafter .img-fluid').attr('src').split("/");
	var originalFileFullName = originalFileValue[originalFileValue.length-1];
	var originalFileName = originalFileFullName.substring(0,originalFileFullName.lastIndexOf('.'));
	
	var changeFileValue = $('#thumbnailAttachFile').val().split("\\");
	var changeFileName = changeFileValue[changeFileValue.length-1];
	var changeFileExtName = changeFileName.substring(changeFileName.lastIndexOf('.'), changeFileName.length);
	
	
	var fileSize = form.size;
	if (fileSize >= 3000000) {
		alert('이미지가 3MB를 초과합니다.');
		return;
	}
	
	formData.append('originalFileFullName', originalFileFullName);
	formData.append('changeFileExtName', changeFileExtName);
	formData.append('thumbnailAttachFile', form);
	$.ajax({
		type : 'POST',
		enctype : 'multipart/form-data',
		url : 'thumbnail_upload_action',
		data : formData,
		processData : false,
		contentType : false,
		cache : false,
		timeout : 600000,
	}).done(function(result) {
		if (result == 'true') {
			setTimeout(function() {
				$('.uploadafter .img-fluid').attr('src', 'video/' + originalFileName + '.png');
			}, 1000);
		}
	});
});

// 영상 업로드 > 영상 게시
$(".uploadVideo").click(function() {
	if ($('input[name=v_title]').val() == "") {
		alert("영상 제목을 입력하세요.");
		$('input[name=v_title]').addClass('is-invalid');
		return;
	} else {
		$('input[name=v_title]').removeClass('is-invalid');
	}

	if ($('input[name=v_description]').val() == "") {
		alert("영상내용을 입력하세요.");
		$('input[name=v_description]').addClass('is-invalid');
		return;
	} else {
		$('input[name=v_description]').removeClass('is-invalid');
	}

	if ($('input[name=v_tag]').val() == "") {
		alert("태그를 입력하세요");
		$('input[name=v_tag]').addClass('is-invalid');
		return;
	} else {
		$('input[name=v_tag]').removeClass('is-invalid');
	}
	
	if ($('#upload_action_check').val() == 0) {
		alert("영상 업로드중입니다.");
		return;
	}
	
	f.action = 'upload_video_action';
	f.method = 'POST';
	f.submit();
})

// 영상 업로드 > 클릭 업로드 이벤트
$("#videoSubmitBtn").click(function() {
	$("#videoAttachFile").click();
});

$('#videoAttachFile').change(function() {
	var form = $('#videoAttachFile')[0].files[0];
	var formData = new FormData();
	var fileName = form.name
	var extName = fileName.substring(fileName.lastIndexOf("."), fileName.length);
	formData.append('videoAttachFile', form);
	formData.append('extName', extName);

	$('.uploadbefore').hide();
	$('.uploadafter').show();
	$('.uploadafter').show();
	$.ajax({
		type : 'POST',
		url : 'uploading_video',
		data : formData,
		cache : false,
		processData : false,
		contentType : false,
		xhr : function() {
			var xhr = $.ajaxSettings.xhr();

			// Set the onprogress event controller 
			xhr.upload.onprogress = function(event) {
				var perc = Math.round((event.loaded / event.total) * 100);
				$('.progress-bar').css('width', perc + '%');
			};
			return xhr;
		},
		beforeSend : function(xhr) {
			$('#alertMsg').text('');
			$('#progress-bar').css('width', '0%');
		}
	}).done(function(msg) {
		$('#originalFileName').val(msg);
		$('.thumbSelect').show();
		$('.pbar').hide();
		$('.uploadafter .img-fluid').attr('src', 'video/' + msg.replace('.mp4','') + '_i.png');
		$('#upload_action_check').val('1');
	}).fail(function(jqXHR) {
		alert(jqXHR);
	});
});

// 영상 업로드 > 드랍 업로드 이벤트
var $drop = $('#zone');
$drop.on("dragenter", function(e) { 
	e.stopPropagation();
	e.preventDefault();

	$('.fa-file-upload').addClass('file-in')
}).on("dragleave", function(e) {
	e.stopPropagation();
	e.preventDefault();

	$('.fa-file-upload').removeClass('file-in')
}).on("dragover", function(e) {
	e.stopPropagation();
	e.preventDefault();

}).on('drop', function(e) {
	e.preventDefault();
	var formData = new FormData();
	var fileName = e.originalEvent.dataTransfer.files[0].name
	var extName = fileName.substring(fileName.lastIndexOf("."), fileName.length);
	formData.append('videoAttachFile', e.originalEvent.dataTransfer.files[0]);
	formData.append('extName', extName);
	
	$('.uploadbefore').hide();
	$('.uploadafter').show();
	$('.uploadafter').show();
	$.ajax({
		type : 'POST',
		url : 'uploading_video',
		data : formData,
		cache : false,
		processData : false,
		contentType : false,
		xhr : function() {
			var xhr = $.ajaxSettings.xhr();

			xhr.upload.onprogress = function(event) {
				var perc = Math.round((event.loaded / event.total) * 100);
				$('.progress-bar').css('width', perc + '%');
			};
			return xhr;
		},
		beforeSend : function(xhr) {
			$('#alertMsg').text('');
			$('#progress-bar').css('width', '0%');
		}
	}).done(function(msg) {
		$('#originalFileName').val(msg);
		$('.thumbSelect').show();
		$('.pbar').hide();
		$('.uploadafter .img-fluid').attr('src', 'video/' + msg.replace('.mp4','') + '_i.png');
		$('#upload_action_check').val('1');
		$('#videoplay').attr('src', 'vid/' + msg.replace('.mp4',''));
		setTimeout(function(){
			var time = document.querySelector('#videoplay').duration;
			$('#videoPlayTime').val(parseInt(time));
		},500);
	}).fail(function(jqXHR) {
		alert(jqXHR);
	});
});

// 프로필 설정 > 프로필 사진 업데이트 스크립트
$(document).ready(function() {
	$("#profileSubmitBtn").click(function() {
		$("#profileAttachFile").click();
	})
});

// 프로필 설정 > 추가한 프로필 사진 미리보기
$("#profileAttachFile").change(function() {
	if ($("#profileAttachFile").get(0).files.length == 0) {
		$('.profilebtn').hide();
	} else {
		$('.profilebtn').show();
	}

	if (this.files && this.files[0]) {
		var reader = new FileReader;
		reader.onload = function(data) {
			$(".gNHAJv .thum").attr("style", 'background-image:url("' + data.target.result + '"');
		}
		reader.readAsDataURL(this.files[0]);
	}
});

// 프로필 설정 > 프로필 파일 업로드
$('.profilebtn .btn').click(function() {
	var form = $('#profileAttachFile')[0].files[0];
	var formData = new FormData();
	var fileSize = form.size;

	if (fileSize >= 3000000) {
		$('.col-sm-8 .profileAlert').fadeTo(2000, 500).slideUp(500, function() {
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
		type : "POST",
		enctype : 'multipart/form-data',
		url : "profile_image_upload_action",
		data : formData,
		processData : false,
		contentType : false,
		cache : false,
		timeout : 600000,
		success : function(result) {
			if (result == 'true') {
				$('.col-sm-8 .profileAlert').fadeTo(2000, 500).slideUp(500, function() {
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

// 프로필 설정 > 배너 업데이트 스크립트
$(document).ready(function() {
	$("#bannerSubmitBtn").click(function() {
		$("#bannerAttachFile").click();
	})
});

// 프로필 설정 > 추가한 배너 사진 미리보기
$("#bannerAttachFile").change(function() {
	if ($("#bannerAttachFile").get(0).files.length == 0) {
		$('.bannerbtn').hide();
	} else {
		$('.bannerbtn').show();
	}

	if (this.files && this.files[0]) {
		var reader = new FileReader;
		reader.onload = function(data) {
			$(".gNHAJq .thum").attr("style", 'background-image:url("' + data.target.result + '"');
		}
		reader.readAsDataURL(this.files[0]);
	}
});

// 프로필 설정 > 배너 파일 업로드
$('.bannerbtn .btn').click(function() {
	var form = $('#bannerAttachFile')[0].files[0];
	var formData = new FormData();
	var fileSize = form.size;

	if (fileSize >= 3000000) {
		$(".col-sm-8 .bannerAlert").fadeTo(2000, 500).slideUp(500, function() {
			$(".col-sm-8 .bannerAlert").slideUp(500);
		});
		$('.bannerbtn').hide();
		$('.col-sm-8 .bannerAlert').removeClass('alert-success')
		$('.col-sm-8 .bannerAlert').addClass('alert-danger');
		$('.col-sm-8 .bannerAlert').text('이미지가 3MB를 초과합니다.');

		return;
	}

	formData.append('bannerAttachFile', form);
	$.ajax({
		type : "POST",
		enctype : 'multipart/form-data',
		url : "banner_image_upload_action",
		data : formData,
		processData : false,
		contentType : false,
		cache : false,
		timeout : 600000,
		success : function(result) {
			if (result == 'true') {
				$(".col-sm-8 .bannerAlert").fadeTo(2000, 500).slideUp(500, function() {
					$(".col-sm-8 .bannerAlert").slideUp(500);
				});
				$('.bannerbtn').hide();
				$('.col-sm-8 .bannerAlert').text('배너 이미지를 업데이트하였습니다.');
				$('.col-sm-8 .bannerAlert').removeClass('alert-danger')
				$('.col-sm-8 .bannerAlert').addClass('alert-success')
			}
		}
	});
});

// 프로필 설정 > 비밀번호 변경 이벤트 
$('.passwordbtn').click(function() {
	$('.passwordbtn').hide();
	$('.passwordbox').show();
});

// 프로필 설정 > 내 정보 수정 포스팅
$('.settingUpdatebtn').click(function() {
	if ($('input[name=u_name]').val() == "") {
		alert("사용자 이름를 입력하십시요.");
		$('input[name=u_name]').addClass('is-invalid');
		return;
	}else{$('input[name=u_name]').removeClass('is-invalid');}
	
	if ($('input[name=u_email]').val() == "") {
		alert("이메일을 입력하십시요.");
		$('input[name=u_email]').addClass('is-invalid');
		return;
	}else{$('input[name=u_email]').removeClass('is-invalid');}
	
	if ($('input[name=u_phone]').val() == "") {
		alert("전화번호를 입력하십시요.");
		$('input[name=u_phone]').addClass('is-invalid');
		return;
	}else{$('input[name=u_phone]').removeClass('is-invalid');}

	if($(".passwordbtn").css('display') == "none"){
		if ($('input[name=u_password]').val() == "") {
			alert("비밀번호를 입력하십시요.");
			$('input[name=u_password]').addClass('is-invalid');
			return;
		}else{$('input[name=u_password]').removeClass('is-invalid');}
		if ($('input[name=u_newpassword]').val() == "") {
			alert("새 비밀번호를 입력하십시요.");
			$('input[name=u_newpassword]').addClass('is-invalid');
			return;
		}else{$('input[name=u_newpassword]').removeClass('is-invalid');}
		if ($('input[name=u_newpassword2]').val() != $('input[name=u_newpassword]').val()) {
			alert("비밀번호를 정확히 입력하십시요.");
			$('input[name=u_newpassword2]').addClass('is-invalid');
			return;
		}else{$('input[name=u_newpassword2]').removeClass('is-invalid');}
	}
	
	f.action = 'profile_update_action';
	f.method = 'POST';
	f.submit();
});

// 회원가입 > 포스팅
$(function() {
	$('#register_btn').click(function(e) {
		$('#f').trigger('submit');
	});
	try{
		$('#f').validate({
			rules : {
				u_id : {
					required : true,
					remote : {
						url : "u_id_duplicate_check_rest",
						type : "GET",
						data : {
							u_id : function() {
								return $("#u_id").val();
							}
						}
					}
				},
				u_password : {
					required : true
				},
				u_password2 : {
					required : true,
					equalTo : "#u_password"
				},
				u_name : {
					required : true,
				},
				u_email : {
					required : true,
					email : true
				},u_phone : {
					required : true,
				},
			},
			messages : {
				u_id : {
					required : "아이디를 입력하세요",
					remote : "{0} 은(는) 이미사용중인 아이디입니다."
				},
				u_password : {
					required : "비밀번호를 입력하세요"
				},
				u_password2 : {
					required : "비밀번호확인을 입력해주세요",
					equalTo : "비밀번호와 비밀번호확인은 일치하여야합니다."
				},
				u_name : {
					required : "이름을 입력해주세요"
				},
				u_email : {
					required : "이메일을 입력해 주세요",
					email : '이메일 형식에 맞게 입력해주세요'
				},
				u_phone : {
					required : "휴대폰번호를 입력해 주세요",
				}
	
			},
			errorClass : 'is-invalid text-danger',
			validClass : 'is-valid',
			submitHandler : function(f) {
				f.action = 'register_action';
				f.method = 'POST';
				f.submit();
			}
		});
	} catch(error){
		
	};
});

// 로그인 > 잘못된 정보 입력
$(function(){
	var errorcode = parseInt($('#loginErrorcode').val());
	
	if(errorcode == 0){
		$('#login_msg').show();
		$('#login_msg').text('존재하지 않는 아이디입니다.');
		$('#u_id').addClass('is-invalid');
	}else if(errorcode == 1){
		$('#login_msg').show();
		$('#login_msg').text('잘못된 비밀번호입니다. 다시 시도하세요.');
		$('#u_password').addClass('is-invalid');
	}
});

// 로그인
$('.submit').click(function() {
	if (document.f.u_id.value == "") {
		alert("사용자 아이디를 입력하십시요.");
		document.f.u_id.focus();
		return;
	}
	if (document.f.u_password.value == "") {
		alert("비밀번호를 입력하십시요.");
		document.f.u_password.focus();
		return;
	}

	f.action = 'login_action';
	f.method = 'POST';
	f.submit();
});

// 템플릿 기본 js
(function($) {
  "use strict"; // Start of use strict

  // Toggle the side navigation
   $(document).on('click', '#sidebarToggle', function(e) {  
    e.preventDefault();
    $("body").toggleClass("sidebar-toggled");
    $(".sidebar").toggleClass("toggled");
  });

  // Prevent the content wrapper from scrolling when the fixed side navigation hovered over
  $('body.fixed-nav .sidebar').on('mousewheel DOMMouseScroll wheel', function(e) {
    if ($window.width() > 768) {
      var e0 = e.originalEvent,
        delta = e0.wheelDelta || -e0.detail;
      this.scrollTop += (delta < 0 ? 1 : -1) * 30;
      e.preventDefault();
    }
  });
  
  // Category Owl Carousel
  const objowlcarousel = $('.owl-carousel-category');
  if (objowlcarousel.length > 0) {
    objowlcarousel.owlCarousel({
      responsive: {
        0:{
            items:1,
        },
        600:{
            items:3,
            nav:false
        },
        1000: {
          items: 4,
        },
        1200: {
          items: 8,
        },
      },
      loop: true,
      lazyLoad: true,
      autoplay: true,
      autoplaySpeed: 1000,
      autoplayTimeout: 2000,
      autoplayHoverPause: true,
      nav: true,
      navText:["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
    });
  }

  // Login Owl Carousel
  const mainslider = $('.owl-carousel-login');
  if (mainslider.length > 0) {
    mainslider.owlCarousel({
      items: 1,
      lazyLoad: true,
      loop: true,
      autoplay: true,
      autoplaySpeed: 1000,
      autoplayTimeout: 2000,
      autoplayHoverPause: true,
    });
  }

	
  // Tooltip
  $('[data-toggle="tooltip"]').tooltip()

  // Scroll to top button appear
  $(document).on('scroll', function() {
    var scrollDistance = $(this).scrollTop();
    if (scrollDistance > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });

  // Smooth scrolling using jQuery easing
  $(document).on('click', 'a.scroll-to-top', function(event) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: ($($anchor.attr('href')).offset().top)
    }, 1000, 'easeInOutExpo');
    event.preventDefault();
  });

})(jQuery); // End of use strict