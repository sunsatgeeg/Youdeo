<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>videoChatApp</title>
<link rel="stylesheet" href="css/main.css" />
<script src="https://geeg.iptime.org:8443/socket.io/socket.io.js"></script>
<script src="https://kit.fontawesome.com/c939d0e917.js"></script>
<script src="https://unpkg.com/peerjs@1.3.1/dist/peerjs.min.js"></script>
<script>
	const ROOM_ID = "${sUserId}";
</script>
</head>
<body>
	<div class="header">
		<div class="logo">
			<div class="header__back">
				<i class="fas fa-angle-left"></i>
			</div>
			<h3>
				Video Chat
				</h2>
		</div>
	</div>
	<div class="main">
		<div class="main__left">
			<div class="videos__group">
				<div id="video-grid"></div>
			</div>
			<div class="options">
				<div class="options__left">
					<div id="stopVideo" class="options__button">
						<i class="fa fa-video-camera"></i>
					</div>
					<div id="muteButton" class="options__button">
						<i class="fa fa-microphone"></i>
					</div>
					<div id="showChat" class="options__button">
						<i class="fa fa-comment"></i>
					</div>
				</div>
				<div class="options__right">
					<div id="inviteButton" class="options__button">
						<i class="fas fa-user-plus"></i>
					</div>
				</div>
			</div>
		</div>
		<div class="main__right">
			<div class="main__chat_window">
				<div class="messages"></div>
			</div>
			<div class="main__message_container">
				<input id="chat_message" type="text" placeholder="Type message here...">
				<div id="send" class="options__button">
					<i class="fa fa-plus" aria-hidden="true"></i>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="js/rtc.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
<script>
	$(document).ready(function() {
		var socket = io("https://geeg.iptime.org:8443");

		socket.on('send_msg', function(chat_message) {
			$('<div class="messages"></div>').text(chat_message).appendTo("#main__chat_window");
		});

	});
	
	
</script>
</html>
