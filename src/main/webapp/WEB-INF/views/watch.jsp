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
	<!-- header end -->
	<!-- wrapper start -->
	<div id="wrapper">
		<div id="content-wrapper">
			<div>
				<!-- class="container-fluid pb-0" -->
				<div class="video-block section-padding">
					<div class="row">
						<div class="col-md-10">
							<div class="single-video-left">
								<div class="single-video">
									<video playsinline id="left_cam" controls preload="metadata" autoplay></video>
								</div>
								<div class="single-video-title box mb-3">
									<h2>${video.v_title }</h2>
									<p class="mb-0">
										<i class="fas fa-eye"></i> ${video.v_views } views
									</p>
								</div>
								<div class="single-video-author box mb-3">
									<div class="float-right">
										<button class="btn btn-danger" type="button">
											Subscribe <strong>1.4M</strong>
										</button>
										<button class="btn btn btn-outline-danger" type="button">
											<i class="fas fa-bell"></i>
										</button>
									</div>
									<a href="user?u_id=${video.user.u_id}"><img class="img-fluid" src="img/s4.png" alt=""></a>
									<p>
										<a href="user?u_id=${video.user.u_id}"><strong>${video.user.u_name }</strong></a> <span title="" data-placement="top" data-toggle="tooltip" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></span>
									</p>
									<small>Published on Aug 10, 2018</small>
								</div>
								<div class="single-video-info-content box mb-3">
									<h6>Cast:</h6>
									<p>Nathan Drake , Victor Sullivan , Sam Drake , Elena Fisher</p>
									<h6>Category :</h6>
									<p>Gaming , PS4 Exclusive , Gameplay , 1080p</p>
									<h6>About :</h6>
									<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their
										infancy. Various versions have evolved overVarious versions have evolved over the years, sometimes</p>
									<h6>Tags :</h6>
									<p class="tags mb-0">
										<span><a href="#">Uncharted 4</a></span> <span><a href="#">Playstation 4</a></span> <span><a href="#">Gameplay</a></span> <span><a href="#">1080P</a></span> <span><a href="#">ps4Share</a></span> <span><a href="#">+ 6</a></span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="single-video-right">
								<div class="row">
									<div class="col-md-12">
										<div class="adblock">
											<div class="img">
												Google AdSense<br> 336 x 280
											</div>
										</div>
										<div class="main-title">
											<div class="btn-group float-right right-action">
												<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
												</a>
												<div class="dropdown-menu dropdown-menu-right">
													<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
												</div>
											</div>
											<h6>Up Next</h6>
										</div>
									</div>
									<div class="col-md-12">
										<div class="video-card video-card-list">
											<div class="video-card-image">
												<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v1.png" alt=""></a>
												<div class="time">3:50</div>
											</div>
											<div class="video-card-body">
												<div class="btn-group float-right right-action">
													<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
													</div>
												</div>
												<div class="video-title">
													<a href="#">Here are many variati of passages of Lorem</a>
												</div>
												<div class="video-page text-success">
													Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
												</div>
												<div class="video-view">
													1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
												</div>
											</div>
										</div>
										<div class="video-card video-card-list">
											<div class="video-card-image">
												<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v2.png" alt=""></a>
												<div class="time">3:50</div>
											</div>
											<div class="video-card-body">
												<div class="btn-group float-right right-action">
													<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
													</div>
												</div>
												<div class="video-title">
													<a href="#">Duis aute irure dolor in reprehenderit in.</a>
												</div>
												<div class="video-page text-success">
													Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
												</div>
												<div class="video-view">
													1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
												</div>
											</div>
										</div>
										<div class="video-card video-card-list">
											<div class="video-card-image">
												<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v3.png" alt=""></a>
												<div class="time">3:50</div>
											</div>
											<div class="video-card-body">
												<div class="btn-group float-right right-action">
													<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
													</div>
												</div>
												<div class="video-title">
													<a href="#">Culpa qui officia deserunt mollit anim</a>
												</div>
												<div class="video-page text-success">
													Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
												</div>
												<div class="video-view">
													1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
												</div>
											</div>
										</div>
										<div class="video-card video-card-list">
											<div class="video-card-image">
												<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v4.png" alt=""></a>
												<div class="time">3:50</div>
											</div>
											<div class="video-card-body">
												<div class="btn-group float-right right-action">
													<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
													</div>
												</div>
												<div class="video-title">
													<a href="#">Deserunt mollit anim id est laborum.</a>
												</div>
												<div class="video-page text-success">
													Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
												</div>
												<div class="video-view">
													1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
												</div>
											</div>
										</div>
										<div class="video-card video-card-list">
											<div class="video-card-image">
												<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v5.png" alt=""></a>
												<div class="time">3:50</div>
											</div>
											<div class="video-card-body">
												<div class="btn-group float-right right-action">
													<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
													</div>
												</div>
												<div class="video-title">
													<a href="#">Exercitation ullamco laboris nisi ut.</a>
												</div>
												<div class="video-page text-success">
													Education <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
												</div>
												<div class="video-view">
													1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
												</div>
											</div>
										</div>
										<div class="video-card video-card-list">
											<div class="video-card-image">
												<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v6.png" alt=""></a>
												<div class="time">3:50</div>
											</div>
											<div class="video-card-body">
												<div class="btn-group float-right right-action">
													<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
													</div>
												</div>
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
										<div class="adblock mt-0">
											<div class="img">
												Google AdSense<br> 336 x 280
											</div>
										</div>
										<div class="video-card video-card-list">
											<div class="video-card-image">
												<a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a> <a href="#"><img class="img-fluid" src="img/v2.png" alt=""></a>
												<div class="time">3:50</div>
											</div>
											<div class="video-card-body">
												<div class="btn-group float-right right-action">
													<a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a> <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
													</div>
												</div>
												<div class="video-title">
													<a href="#">Duis aute irure dolor in reprehenderit in.</a>
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
					</div>
				</div>
			</div>
			<!-- wrapper end -->
			<!-- bottom start -->
			<div id="footer">
				<jsp:include page="include_common_bottom.jsp" />
			</div>
			<!-- bottom end -->
		</div>
	</div>
	<!-- Scroll to Top Button -->
	<div id="scrollButton">
		<jsp:include page="include_common_scroll_button.jsp" />
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

    <script src='js/socket.io.js'></script>
    <script src='js/main.js'></script>s

	
	<script type="text/javascript">
		
		var isChannelReady = false;
		var isInitiator = false;
		var isStarted = false;
		var localStream;
		var pc;
		var remoteStream;

		var remoteVideo = document.getElementById('right_cam');
		var localVideo = document.getElementById('left_cam');

		var pcConfig = {
		    'iceServers': [{
		        urls: 'stun:stun.l.google.com:19302'
		    },
		    {urls: "turn:numb.viagenie.ca",
		    credential: "muazkh",
		    username: "webrtc@live.com"}
		    ]};

		var sdpConstraints = {
		    offerToReceiveAudio: true,
		    offerToReceiveVideo: true
		};

		localVideo.addEventListener("loadedmetadata", function () {
		    console.log('left: gotStream with width and height:', localVideo.videoWidth, localVideo.videoHeight);
		});

		remoteVideo.addEventListener("loadedmetadata", function () {
		    console.log('right: gotStream with width and height:', remoteVideo.videoWidth, remoteVideo.videoHeight);
		});

		remoteVideo.addEventListener('resize', () => {
		    console.log(`Remote video size changed to ${remoteVideo.videoWidth}x${remoteVideo.videoHeight}`);
		});

		socket.on('connect', function () {
		    socket.emit("onCollabo", socket.id);
		});

		socket.on('collabo', function (room) {
		    socket.emit('create or join', room);
		    console.log('Attempted to create or  join room', room);
		});


		socket.on('created', function (room) {
		    console.log('Created room ' + room);
		    isInitiator = true;
		});

		socket.on('full', function (room) {
		    console.log('Room ' + room + ' is full');
		});

		socket.on('join', function (room) {
		    console.log('Another peer made a request to join room ' + room);
		    console.log('This peer is the initiator of room ' + room + '!');
		    isChannelReady = true;
		});

		socket.on('joined', function (room) {
		    console.log('joined: ' + room);
		    isChannelReady = true;
		});

		socket.on('log', function (array) {
		    console.log.apply(console, array);
		});

		function sendMessage(message) {
		    console.log('Client sending message: ', message);
		    socket.emit('message', message);
		}

		// This client receives a message
		socket.on('message', function (message) {
		    console.log('Client received message:', message);
		    if (message === 'got user media') {
		        maybeStart();
		    } else if (message.type === 'offer') {
		        if (!isInitiator && !isStarted) {
		            maybeStart();
		        }
		        pc.setRemoteDescription(new RTCSessionDescription(message));
		        doAnswer();
		    } else if (message.type === 'answer' && isStarted) {
		        pc.setRemoteDescription(new RTCSessionDescription(message));
		    } else if (message.type === 'candidate' && isStarted) {
		        var candidate = new RTCIceCandidate({
		            sdpMLineIndex: message.label,
		            candidate: message.candidate
		        });
		        pc.addIceCandidate(candidate);
		    } else if (message === 'bye' && isStarted) {
		        handleRemoteHangup();
		    }
		});

		navigator.mediaDevices.getUserMedia({
		    audio: false,
		    video: true
		})
		    .then(gotStream)
		    .catch(function (e) {
		        alert('getUserMedia() error: ' + e.name);
		    });

		function gotStream(stream) {
		    console.log('Adding local stream.');
		    localStream = stream;
		    localVideo.srcObject = stream;
		    sendMessage('got user media');
		    if (isInitiator) {
		        maybeStart();
		    }
		}

		var constraints = {
		    video: true
		};

		console.log('Getting user media with constraints', constraints);

		if (location.hostname !== 'localhost') {
		    requestTurn(
		        "stun:stun.l.google.com:19302"
		    );
		}

		function maybeStart() {
		    console.log('>>>>>>> maybeStart() ', isStarted, localStream, isChannelReady);
		    if (!isStarted && typeof localStream !== 'undefined' && isChannelReady) {
		        console.log('>>>>>> creating peer connection');
		        createPeerConnection();
		        pc.addStream(localStream);
		        isStarted = true;
		        console.log('isInitiator', isInitiator);
		        if (isInitiator) {
		            doCall();
		        }
		    }
		}

		window.onbeforeunload = function () {
		    sendMessage('bye');
		};

		/////////////////////////////////////////////////////////

		function createPeerConnection() {
		    try {
		        pc = new RTCPeerConnection(pcConfig);
		        pc.onicecandidate = handleIceCandidate;
		        pc.onaddstream = handleRemoteStreamAdded;
		        pc.onremovestream = handleRemoteStreamRemoved;
		        console.log('Created RTCPeerConnnection');
		    } catch (e) {
		        console.log('Failed to create PeerConnection, exception: ' + e.message);
		        alert('Cannot create RTCPeerConnection object.');
		        return;
		    }
		}

		function handleIceCandidate(event) {
		    console.log('icecandidate event: ', event);
		    if (event.candidate) {
		        sendMessage({
		            type: 'candidate',
		            label: event.candidate.sdpMLineIndex,
		            id: event.candidate.sdpMid,
		            candidate: event.candidate.candidate
		        });
		    } else {
		        console.log('End of candidates.');
		    }
		}

		function handleCreateOfferError(event) {
		    console.log('createOffer() error: ', event);
		}

		function doCall() {
		    console.log('Sending offer to peer');
		    pc.createOffer(setLocalAndSendMessage, handleCreateOfferError);
		}

		function doAnswer() {
		    console.log('Sending answer to peer.');
		    pc.createAnswer().then(
		        setLocalAndSendMessage,
		        onCreateSessionDescriptionError
		    );
		}

		function setLocalAndSendMessage(sessionDescription) {
		    pc.setLocalDescription(sessionDescription);
		    console.log('setLocalAndSendMessage sending message', sessionDescription);
		    sendMessage(sessionDescription);
		}

		function onCreateSessionDescriptionError(error) {
		    trace('Failed to create session description: ' + error.toString());
		}

		/*turn 서버 요청 CORS 문제 발생*/
		function requestTurn(turnURL) {
		    var turnExists = true;
		    // for (var i in pcConfig.iceServers) {
		    //     if (pcConfig.iceServers[i].urls.substr(0, 5) === 'stun:') {
		    //         turnExists = true;
		    //         turnReady = true;
		    //         console.log("Exist stun server");
		    //         break;
		    //     }
		    // }
		    if (!turnExists) {
		        // console.log('Getting TURN server from ', turnURL);
		        // // No TURN server. Get one from computeengineondemand.appspot.com:
		        // var xhr = new XMLHttpRequest();
		        // xhr.onreadystatechange = function() {
		        //     if (xhr.readyState === 4 && xhr.status === 200) {
		        //         var turnServer = JSON.parse(xhr.responseText);
		        //         console.log('Got TURN server: ', turnServer);
		        //         pcConfig.iceServers.push({
		        //             'urls': 'turn:' + turnServer.username + '@' + turnServer.turn,
		        //             'credential': turnServer.password
		        //         });
		        //         turnReady = true;
		        //     }
		        // };
		        //
		        // xhr.open('GET', turnURL, true);
		        // xhr.send();
		    }
		}

		function handleRemoteStreamAdded(event) {
		    console.log('Remote stream added.');
		    remoteStream = event.stream;
		    console.log(event);
		    remoteVideo.srcObject = remoteStream;
		}

		function handleRemoteStreamRemoved(event) {
		    console.log('Remote stream removed. Event: ', event);
		}

		function hangup() {
		    console.log('Hanging up.');
		    stop();
		    sendMessage('bye');
		}

		function handleRemoteHangup() {
		    console.log('Session terminated.');
		    stop();
		    isInitiator = false;
		}

		function stop() {
		    isStarted = false;
		    pc.close();
		    pc = null;
		}
		
	</script>
</body>
</html>