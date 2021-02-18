package com.fourmeeting.bee.image.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.image.model.service.ImageService;
import com.fourmeeting.bee.image.model.service.ImageService2;
import com.fourmeeting.bee.image.model.vo.AttachFileDTO;
import com.fourmeeting.bee.member.model.vo.Member;
import com.google.gson.JsonIOException;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class ImageController2 {

	

	@Autowired
	ServletContext context;
	
	 @Autowired
	@Qualifier(value="imageService2")
	private ImageService2 iService2;
	 
	 
	 @RequestMapping(value="/selectAllImage.do")
		@ResponseBody
		public ModelAndView selectAllImage(@SessionAttribute("member") Member m, HttpServletResponse response,@RequestParam int beesNo) {
         System.out.println(beesNo);	
			int memberNo = m.getMemberNo();
			System.out.println(memberNo);
		//	BeesUser b = new BeesUser();
		//	b.setBeesNo(beesNo);
		//	b.setMemberNo(memberNo);
	//		ArrayList<AttachFileDTO> list = iService2.selectAllImage(b);
//	System.out.println("cont list"+list);
			ModelAndView mav = new ModelAndView();
			
		mav.addObject("a", memberNo);
		mav.setViewName("bees/board/beesUploadImage"); 	
			return mav;
			
			
		}
			
		
// /////////////////////////////////////////////////////////////////// 


@PostMapping("/uploadFormAction")
public void uploadFormPost(MultipartFile[] uploadFile, Model model) {

	String uploadFolder = "C:\\upload";

	for (MultipartFile multipartFile : uploadFile) {

		
		System.out.println("Upload File Name: " + multipartFile.getOriginalFilename());
		System.out.println("Upload File Size: " + multipartFile.getSize());

		File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());

		try {
			multipartFile.transferTo(saveFile);
		} catch (Exception e) {
			
		} // end catch
	} // end for

}




private boolean checkImageType(File file) {

	try {
		String contentType = Files.probeContentType(file.toPath());

		return contentType.startsWith("image");

	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return false;
}


@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@ResponseBody
public ResponseEntity<List<AttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {

	List<AttachFileDTO> list = new ArrayList<>();
	String uploadFolder = "C:\\upload";

	String uploadFolderPath ="/resources/file/"; 
	// make folder --------
	File uploadPath = new File(uploadFolder, uploadFolderPath);

	if (uploadPath.exists() == false) {
		uploadPath.mkdirs();
	}
	// make yyyy/MM/dd folder

	for (MultipartFile multipartFile : uploadFile) {

		AttachFileDTO attachDTO = new AttachFileDTO();

		String uploadFileName = multipartFile.getOriginalFilename();

		// IE has file path
		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
		System.out.println("only file name: " + uploadFileName);
		attachDTO.setFileName(uploadFileName);

		UUID uuid = UUID.randomUUID();

		uploadFileName = uuid.toString() + "_" + uploadFileName;

		try {
			File saveFile = new File(uploadPath, uploadFileName);
			multipartFile.transferTo(saveFile);

			attachDTO.setUuid(uuid.toString());
			attachDTO.setUploadPath(uploadFolderPath);

			// check image type file
			if (checkImageType(saveFile)) {

				
				

				FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));

				Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);

				thumbnail.close();
			}

			// add to List
			list.add(attachDTO);

		} catch (Exception e) {
			e.printStackTrace();
		}

	} // end for
	return new ResponseEntity<>(list, HttpStatus.OK);
}

@GetMapping("/display")
@ResponseBody
public ResponseEntity<byte[]> getFile(String fileName) {

	System.out.println("fileName: " + fileName);

	File file = new File("c:\\upload\\" + fileName);

	System.out.println("file: " + file);

	ResponseEntity<byte[]> result = null;

	try {
		HttpHeaders header = new HttpHeaders();

		header.add("Content-Type", Files.probeContentType(file.toPath()));
		result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return result;
}

@GetMapping(value = "/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
@ResponseBody
public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName) {

	Resource resource = new FileSystemResource("c:\\upload\\" + fileName);

	if (resource.exists() == false) {
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	String resourceName = resource.getFilename();

	// remove UUID
	String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);

	HttpHeaders headers = new HttpHeaders();
	try {

		boolean checkIE = (userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1);

		String downloadName = null;

		if (checkIE) {
			downloadName = URLEncoder.encode(resourceOriginalName, "UTF8").replaceAll("\\+", " ");
		} else {
			downloadName = new String(resourceOriginalName.getBytes("UTF-8"), "ISO-8859-1");
		}

		headers.add("Content-Disposition", "attachment; filename=" + downloadName);

	} catch (UnsupportedEncodingException e) {
		e.printStackTrace();
	}

	return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
}


@PostMapping("/deleteFile")
@ResponseBody
public ResponseEntity<String> deleteFile(String fileName, String type) {

	System.out.println("deleteFile: " + fileName);

	File file;

	try {
		file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));

		file.delete();

		if (type.equals("image")) {

			String largeFileName = file.getAbsolutePath().replace("s_", "");

			System.out.println("largeFileName: " + largeFileName);

			file = new File(largeFileName);

			file.delete();
		}

	} catch (UnsupportedEncodingException e) {
		e.printStackTrace();
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	return new ResponseEntity<String>("deleted", HttpStatus.OK);

}
}
