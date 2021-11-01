<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>WebRtc tutorial</title>
</head>

<body>
    <div>
        <video id="localVideo" autoplay width="480px"></video>
        <video id="remoteVideo" width="480px" autoplay></video>
    </div>

    <script src="https://geeg.iptime.org:8443/socket.io/socket.io.js"></script>
    <script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>
    <script src="js/rtc.js"></script>
</body>

</html>
    
