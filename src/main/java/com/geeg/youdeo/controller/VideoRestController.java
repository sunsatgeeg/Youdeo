package com.geeg.youdeo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.geeg.youdeo.controller.interceptor.LoginCheck;
import com.geeg.youdeo.video.MediaTypeFactory;
import com.geeg.youdeo.video.Video;
import com.geeg.youdeo.video.VideoService;
import com.geeg.youdeo.video.thumbnail.VideoThum;

import org.springframework.http.ResponseEntity;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
	@Autowired
	private VideoService videoService;
	
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
		VideoThum VideoThumDao = new VideoThum();
		VideoThumDao.getThumbnail(videoFile);

		return new ResponseEntity<>(uuid+extName, HttpStatus.OK);
	}
	
	@PostMapping(value = "thumbnail_upload_action", produces = "text/plain;charset=UTF-8")
	public String profile_image_upload_action(@RequestParam("thumbnailAttachFile") MultipartFile multiFile,
											  @RequestParam("originalFileFullName") String originalFileFullName, 
											  @RequestParam("changeFileExtName") String changeFileExtName, 
											  MultipartHttpServletRequest request) throws Exception {
		String uploadPath = request.getSession().getServletContext().getRealPath(path);
		//System.out.println("\tuploadpath : " + uploadPath);
		
		String uuid = originalFileFullName.substring(0, originalFileFullName.lastIndexOf("."));
		
		if(!multiFile.isEmpty() && (changeFileExtName.equals(".jpg") || changeFileExtName.equals(".jpeg") || changeFileExtName.equals(".png"))) {
			File file = new File(uploadPath, uuid+".png");
			
			multiFile.transferTo(file);
			return "true";
		}
		return "false";
	}
	
	@RequestMapping(value = "video_load", produces = "application/json;charset=UTF-8")
	public String video_load(@RequestParam int start_no, @RequestParam int end_no) throws Exception {
		Map map = new HashMap();
		map.put("start_no", start_no);
		map.put("end_no", end_no);
		
		List<Video> videoList = videoService.findVideoList(map);
		
		if(videoList.size() >= 1) {
			StringBuffer sb=new StringBuffer();
			sb.append("{");
			sb.append("\"count\":"+videoList.size()+",");
			sb.append("\"lastNo\":"+(end_no+1)+",");
			sb.append("\"data\": [");
			for(int i=0;i<videoList.size();i++){
				sb.append("{\"date\":\""+videoList.get(i).getV_date()+
					      "\",\"no\":\""+videoList.get(i).getV_no()+
					      "\",\"uuid\":\""+videoList.get(i).getV_uuid()+
					      "\",\"time\":\""+videoList.get(i).getV_time()+
					      "\",\"views\":\""+videoList.get(i).getV_views()+
					      "\",\"title\":\""+videoList.get(i).getV_title()+"\"}");
				if(i!=videoList.size()-1)
					sb.append(",");
			}
			sb.append("]");
			sb.append("}");
			
			return sb.toString();
		}else {
			StringBuffer sb=new StringBuffer();
			sb.append("{");
			sb.append("\"count\":"+videoList.size());
			sb.append("}");
			
			return sb.toString();
		}
	}
	
	@LoginCheck
	@RequestMapping(value = "subscription_video_load", produces = "application/json;charset=UTF-8")
	public String subscription_video_load(@RequestParam int start_no, @RequestParam int end_no, HttpSession session) throws Exception {
		String sUserId = (String)session.getAttribute("sUserId");
		
		Map map = new HashMap();
		map.put("u_id", sUserId);
		map.put("start_no", start_no);
		map.put("end_no", end_no);
		
		List<Video> videoList = videoService.findSubscriptionVideoList(map);
		
		if(videoList.size() >= 1) {
			StringBuffer sb=new StringBuffer();
			sb.append("{");
			sb.append("\"count\":"+videoList.size()+",");
			sb.append("\"lastNo\":"+(end_no+1)+",");
			sb.append("\"data\": [");
			for(int i=0;i<videoList.size();i++){
				sb.append("{\"date\":\""+videoList.get(i).getV_date()+
					      "\",\"no\":\""+videoList.get(i).getV_no()+
					      "\",\"uuid\":\""+videoList.get(i).getV_uuid()+
					      "\",\"time\":\""+videoList.get(i).getV_time()+
					      "\",\"views\":\""+videoList.get(i).getV_views()+
					      "\",\"title\":\""+videoList.get(i).getV_title()+"\"}");
				if(i!=videoList.size()-1)
					sb.append(",");
			}
			sb.append("]");
			sb.append("}");
			
			return sb.toString();
		}else {
			StringBuffer sb=new StringBuffer();
			sb.append("{");
			sb.append("\"count\":"+videoList.size());
			sb.append("}");
			
			return sb.toString();
		}
	}

	@GetMapping(value = "vid/{name}")
	public ResponseEntity<ResourceRegion> getVideo(@RequestHeader HttpHeaders headers, @PathVariable String name, HttpServletRequest request) throws IOException {
		UrlResource video = new UrlResource("file:" + request.getSession().getServletContext().getRealPath(path) + name + ".mp4");
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