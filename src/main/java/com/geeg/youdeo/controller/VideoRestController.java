package com.geeg.youdeo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.geeg.youdeo.video.MediaTypeFactory;

import org.springframework.http.ResponseEntity;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.UrlResource;
import org.springframework.core.io.support.ResourceRegion;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.http.HttpRange;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;

@Controller
public class VideoRestController {
	private final String path = "/video/";

	@PostMapping(value = "uploading_video")
	public ResponseEntity<?> uploadFile(HttpServletRequest request, @RequestParam("videoAttachFile") MultipartFile multiFile) throws Exception {
		String uuid;
		if (!multiFile.getOriginalFilename().isEmpty()) {
			uuid = UUID.randomUUID().toString();
			BufferedOutputStream outputStream = new BufferedOutputStream(new FileOutputStream(new File(
					request.getSession().getServletContext().getRealPath(path), uuid)));
			outputStream.write(multiFile.getBytes());
			outputStream.flush();
			outputStream.close();
		} else {
			return new ResponseEntity<>("Empty File", HttpStatus.BAD_REQUEST);
		}
		return new ResponseEntity<>(uuid, HttpStatus.OK);
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