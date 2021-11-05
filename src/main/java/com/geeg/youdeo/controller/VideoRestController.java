package com.geeg.youdeo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.geeg.youdeo.controller.interceptor.LoginCheck;
import com.geeg.youdeo.user.User;
import com.geeg.youdeo.video.MediaTypeFactory;
import com.geeg.youdeo.video.thumbnail.VideoThumDao;

import org.springframework.http.ResponseEntity;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.io.UrlResource;
import org.springframework.core.io.support.ResourceRegion;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.http.HttpRange;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;

@RestController
public class VideoRestController {
	private final String path = "/video/";

	@PostMapping(value = "uploading_video")
	public ResponseEntity<?> uploadFile(HttpServletRequest request,
			@RequestParam("videoAttachFile") MultipartFile multiFile,
			@RequestParam("extName") String extName) throws Exception {
		String uuid;
		File videoFile;
		if (!multiFile.getOriginalFilename().isEmpty()) {
			uuid = UUID.randomUUID().toString();
			
			videoFile = new File(request.getSession().getServletContext().getRealPath(path), uuid+extName);
			BufferedOutputStream outputStream = new BufferedOutputStream(new FileOutputStream(videoFile));
			outputStream.write(multiFile.getBytes());
			outputStream.flush();
			outputStream.close();
		} else {
			return new ResponseEntity<>("Empty File", HttpStatus.BAD_REQUEST);
		}
		VideoThumDao VideoThumDao = new VideoThumDao();
		VideoThumDao.getThumbnail(videoFile);

		return new ResponseEntity<>(uuid+extName, HttpStatus.OK);
	}
	
	@PostMapping(value = "thumbnail_upload_action", produces = "text/plain;charset=UTF-8")
	public String profile_image_upload_action(@RequestParam("thumbnailAttachFile") MultipartFile multiFile, @RequestParam("fileName") String fileName, MultipartHttpServletRequest request) throws Exception {
		String uploadPath = request.getSession().getServletContext().getRealPath(path);
		//System.out.println("\tuploadpath : " + uploadPath);
		
		String originalFileName = multiFile.getOriginalFilename().toLowerCase();
		String extName = originalFileName.substring(originalFileName.lastIndexOf("."), originalFileName.length());
		
		if(!multiFile.isEmpty() && (extName.equals(".jpg") || extName.equals(".jpeg") || extName.equals(".png"))) {
			File file = new File(uploadPath, fileName);
			
			multiFile.transferTo(file);
			return "true";
		}
		return "false";
	}

	@GetMapping(value = "vid/{name}")
	public ResponseEntity<ResourceRegion> getVideo(@RequestHeader HttpHeaders headers, @PathVariable String name, HttpServletRequest request) throws IOException {
		UrlResource video = new UrlResource("file:" + request.getSession().getServletContext().getRealPath(path) + name + ".mp4");
		System.out.println(video);
		ResourceRegion resourceRegion;
		final long chunkSize = 1000000L;
		long contentLength = video.contentLength();
		Optional<HttpRange> optional = headers.getRange().stream().findFirst();
		HttpRange httpRange;
		if (optional.isPresent()) {
			httpRange = optional.get();
			long start = httpRange.getRangeStart(contentLength);
			long end = httpRange.getRangeEnd(contentLength);
			long rangeLength = Long.min(chunkSize, end - start + 1);
			resourceRegion = new ResourceRegion(video, start, rangeLength);
		} else {
			long rangeLength = Long.min(chunkSize, contentLength);
			resourceRegion = new ResourceRegion(video, 0, rangeLength);
		}
		return ResponseEntity.status(HttpStatus.PARTIAL_CONTENT)
				.contentType(MediaTypeFactory.getMediaType(video).orElse(MediaType.APPLICATION_OCTET_STREAM))
				.body(resourceRegion);
	}
}